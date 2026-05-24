
-- TODO: fazer com que as queries abaixo usem INSERT .. VALUES explicito ao em vez de SELECTS inteligentes
-- A fim de garantir previsibilidade e

-- TABELA DISCIPLINA_TURMA
-- Estratégia: para cada TURMA, seleciona as disciplinas do seu
-- curso no ciclo exato via JOIN com DISCIPLINA_CURSO.
--
-- Atribuição de professor:
--   MOD(id_disciplina - 1, 20) + 1
--   → distribui deterministicamente entre os 20 professores,
--     garantindo que cada id_disciplina sempre caia no mesmo
--     professor (efeito de hash estAvel).
--   Exemplos:
--     disc  1 → prof  1  |  disc 20 → prof 20
--     disc 21 → prof  1  |  disc 41 → prof  1
--
-- qt_vagas_disciplina_turma: literal 25 para todas as turmas.
-- ============================================================

INSERT INTO DISCIPLINA_TURMA (id_turma, id_disciplina, qt_vagas_disciplina_turma, id_professor)
SELECT
    t.id_turma,
    dc.id_disciplina,
    25 AS qt_vagas_disciplina_turma,
    MOD(dc.id_disciplina - 1, 20) + 1 AS id_professor
FROM TURMA t
JOIN DISCIPLINA_CURSO dc
    ON  dc.id_curso = t.id_curso
    AND dc.id_ciclo_disciplina_curso = t.id_ciclo_turma
ORDER BY t.id_turma, dc.id_disciplina;

-- TABELA MATRICULA
-- Estratégia: para cada linha de DISCIPLINA_TURMA, gera 20
-- alunos via CROSS JOIN com a série 1..20 (CONNECT BY LEVEL).
--
-- Mapeamento turma → grupo de alunos:
--   grupo_idx     = MOD(id_turma - 1, 30)          -- cicla a cada 30 turmas
--   id_aluno_base = grupo_idx * 20                  -- primeiro aluno - 1
--   id_aluno      = id_aluno_base + n   (n = 1..20)
--
-- Exemplos:
--   turma  1 → grupo  0 → alunos   1-20  (ADS  2023/01, ciclo 1)
--   turma  2 → grupo  1 → alunos  21-40  (COMEX 2023/01, ciclo 1)
--   turma 30 → grupo 29 → alunos 581-600 (PQ   2023/01, ciclo 6)
--   turma 31 → grupo  0 → alunos   1-20  (ADS  2023/06, ciclo 1) ← mesmo curso!
--   turma 32 → grupo  1 → alunos  21-40  (COMEX 2023/06, ciclo 1) ← mesmo curso!
--
-- Consistência garantida: a janela de 30 abrange exatamente
-- 6 ciclos × 5 cursos, portanto ao reiniciar o grupo o curso
-- correspondente se repete na mesma posição.
--
-- id_matricula: gerado via sequence SQ_MATRICULA.NEXTVAL.
-- ============================================================

INSERT INTO MATRICULA (id_matricula, id_turma, id_disciplina, id_aluno)
SELECT
    SQ_MATRICULA.NEXTVAL,
    dados.id_turma,
    dados.id_disciplina,
    dados.id_aluno
FROM (
    SELECT
        dt.id_turma,
        dt.id_disciplina,
        (MOD(dt.id_turma - 1, 30) * 20) + n.n AS id_aluno
    FROM DISCIPLINA_TURMA dt
    CROSS JOIN (
        SELECT LEVEL AS n
        FROM DUAL
        CONNECT BY LEVEL <= 20
    ) n
    ORDER BY dt.id_turma, dt.id_disciplina, n.n
) dados;

-- TABELA AVALIACAO
INSERT INTO avaliacao (
    id_avaliacao,
    ds_avaliacao,
    qt_peso_avaliacao,
    qt_nota_maxima_avaliacao,
    dt_hr_avaliacao,
    cd_tipo_avaliacao,
    id_turma,
    id_disciplina
)
SELECT
    SQ_AVALIACAO.NEXTVAL,
    regra.ds_fixa,
    1 as qt_peso_avaliacao,
    10 as qt_nota_maxima_avaliacao,
    -- Adiciona 2 meses e define o horário para 16:00 (16/24 do dia)
    ADD_MONTHS(TRUNC(t.dt_inicio_turma), 2) + (9/24) + (TRUNC(DBMS_RANDOM.VALUE(1, 15)) * 50) / (24 * 60) as dt_hr_avaliacao,
    regra.cd_fixo,
    dt.id_turma,
    dt.id_disciplina
FROM disciplina_turma dt
JOIN turma t ON dt.id_turma = t.id_turma
-- CROSS JOIN cria a matriz de 3 linhas fixas para cada registro do SELECT principal
CROSS JOIN (
    SELECT '(P1) Primeira prova avaliativa do semestre' AS ds_fixa, 0 AS cd_fixo FROM dual
    UNION ALL
    SELECT '(P2) Segunda prova avaliativa do semestre' AS ds_fixa, 0 AS cd_fixo FROM dual
    UNION ALL
    SELECT 'Atividade avaliativa realizada no semestre' AS ds_fixa, 1 AS cd_fixo FROM dual
) regra
WHERE t.dt_fim_turma IS NOT NULL;

INSERT INTO avaliacao (
    id_avaliacao,
    ds_avaliacao,
    qt_peso_avaliacao,
    qt_nota_maxima_avaliacao,
    dt_hr_avaliacao,
    cd_tipo_avaliacao,
    id_turma,
    id_disciplina
)
SELECT
    SQ_AVALIACAO.NEXTVAL,
    '(P1) Primeira prova avaliativa do semestre',
    1,
    10,
    ADD_MONTHS(TRUNC(dados.dt_inicio_turma), 2) + (9/24) + (TRUNC(DBMS_RANDOM.VALUE(1, 15)) * 50) / (24 * 60),
    0,
    dados.id_turma,
    dados.id_disciplina
FROM (
    -- Subquery para ordenar e limitar os primeiros 50 registros
    SELECT
        dt.id_turma,
        dt.id_disciplina,
        t.dt_inicio_turma
    FROM disciplina_turma dt
    JOIN turma t ON dt.id_turma = t.id_turma
    WHERE t.dt_fim_turma IS NULL
) dados;

-- TABELA AVALIACAO_RESULTADO
INSERT INTO avaliacao_resultado (
    id_avaliacao,
    id_matricula,
    qt_nota_avaliacao_aluno
)
SELECT
    a.id_avaliacao,
    m.id_matricula,
    -- CÁLCULO DA DISTRIBUIÇÃO NORMAL (Média de 3 sorteios uniformes):
    ROUND(
        3 + ( ( (DBMS_RANDOM.VALUE(0, 1) + DBMS_RANDOM.VALUE(0, 1) + DBMS_RANDOM.VALUE(0, 1)) / 3 ) * 7 ),
        2
    ) AS qt_nota_avaliacao_aluno
FROM avaliacao a
JOIN disciplina_turma dt ON a.id_turma = dt.id_turma AND a.id_disciplina = dt.id_disciplina
JOIN matricula m         ON dt.id_turma = m.id_turma AND dt.id_disciplina = m.id_disciplina;

COMMIT;
