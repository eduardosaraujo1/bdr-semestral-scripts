--SUBCONSULTAS

-- Subconsulta: Alunos com média acima da média geral
SELECT
    d.nm_disciplina,
    a.nm_aluno,
    FN_MEDIA_NOTAS(m.id_matricula) AS media
FROM MATRICULA m
JOIN ALUNO a
    ON a.id_aluno = m.id_aluno
JOIN TURMA t
    ON m.id_turma = t.id_turma
JOIN DISCIPLINA d
    ON t.id_disciplina = d.id_disciplina
WHERE FN_MEDIA_NOTAS(m.id_matricula) >
(
    SELECT AVG(FN_MEDIA_NOTAS(id_matricula))
    FROM MATRICULA
);

-- Subconsulta: Professores que possuem turmas no período atual
SELECT
    p.nm_professor
FROM PROFESSOR p
WHERE p.id_professor IN
(
    SELECT t.id_professor
    FROM TURMA t
    WHERE t.id_periodo_letivo =
    (
        SELECT MAX(id_periodo_letivo)
        FROM PERIODO_LETIVO
    )
);

-- Subconsulta: Disciplinas sem alunos matriculados
SELECT
    d.nm_disciplina
FROM DISCIPLINA d
WHERE d.id_disciplina NOT IN
(
    SELECT t.id_disciplina
    FROM TURMA t
    JOIN MATRICULA m
        ON m.id_turma = t.id_turma
);

-- Subconsulta: Alunos com frequência abaixo da média geral de frequência
-- Sem tunning (78 segundos para executar com 5000 Matriculas)
SELECT
    nm_aluno,
    frequencia
FROM (
    SELECT
        dados.nm_aluno,
        dados.frequencia,
        AVG(dados.frequencia) OVER () AS media_geral
    FROM (
        SELECT
            a.nm_aluno,
            FN_PERCENTUAL_FREQUENCIA(m.id_matricula) AS frequencia
        FROM ALUNO a
        JOIN MATRICULA m
            ON m.id_aluno = a.id_aluno
    ) dados
)
WHERE frequencia < media_geral
ORDER BY frequencia;
-- Com tunning otimizado (utiliza Common Table Expressions e evita Functions): 0.11 segundos
WITH frequencias AS (
    SELECT
        m.id_matricula,
        a.nm_aluno,
        (
            SUM(ram.ic_ausente_presente) / COUNT(*)
        ) * 100 AS frequencia
    FROM ALUNO a
    JOIN MATRICULA m
        ON m.id_aluno = a.id_aluno
    JOIN REGISTRO_AULA_MATRICULA ram
        ON ram.id_matricula = m.id_matricula
    GROUP BY
        m.id_matricula,
        a.nm_aluno
)
SELECT
    nm_aluno,
    frequencia
FROM frequencias
WHERE frequencia < (
    SELECT AVG(frequencia)
    FROM frequencias
)
ORDER BY frequencia;
