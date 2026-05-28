--CONSULTAS COM JUNÇÃO DE TABELAS

-- Consulta: Grade horária por turma
SELECT
    t.id_turma,
    d.nm_disciplina,
    gt.dd_semana_grade_turma,
    gt.hr_inicio_grade_turma,
    gt.cd_sala_grade_turma
FROM TURMA t
JOIN DISCIPLINA d
    ON d.id_disciplina = t.id_disciplina
JOIN GRADE_TURMA gt
    ON gt.id_turma = t.id_turma
WHERE t.id_curso = 1 AND t.id_periodo_letivo = 3 AND t.id_ciclo_turma = 2
ORDER BY gt.dd_semana_grade_turma,
         gt.hr_inicio_grade_turma;

-- Consulta: Desempenho acadêmico por aluno
SELECT
    a.nm_aluno,
    d.nm_disciplina,
    FN_MEDIA_NOTAS(m.id_matricula) AS media,
    FN_PERCENTUAL_FREQUENCIA(m.id_matricula) AS frequencia,
    FN_SITUACAO_ALUNO(m.id_matricula) AS situacao
FROM MATRICULA m
JOIN ALUNO a
    ON a.id_aluno = m.id_aluno
JOIN TURMA t
    ON t.id_turma = m.id_turma
JOIN DISCIPLINA d
    ON d.id_disciplina = t.id_disciplina
ORDER BY a.nm_aluno
FETCH NEXT 100 ROWS ONLY; -- Remova se não se importar com a performance da chamada de três funções

-- Consulta: Turmas por professor
SELECT
    p.nm_professor,
    t.id_turma,
    d.nm_disciplina,
    pl.aa_periodo_letivo,
    pl.id_semestre_periodo_letivo
FROM TURMA t
JOIN PROFESSOR p
    ON p.id_professor = t.id_professor
JOIN DISCIPLINA d
    ON d.id_disciplina = t.id_disciplina
JOIN PERIODO_LETIVO pl
    ON pl.id_periodo_letivo = t.id_periodo_letivo
WHERE p.id_professor = 1
ORDER BY pl.aa_periodo_letivo;

-- Consulta: Alunos matriculados por disciplina
SELECT
    d.nm_disciplina,
    a.nm_aluno,
    t.id_turma
FROM MATRICULA m
JOIN ALUNO a
    ON a.id_aluno = m.id_aluno
JOIN TURMA t
    ON t.id_turma = m.id_turma
JOIN DISCIPLINA d
    ON d.id_disciplina = t.id_disciplina
ORDER BY d.nm_disciplina,
         a.nm_aluno;

-- Consulta: Quantidade de alunos por turma
SELECT
    t.id_turma,
    d.nm_disciplina,
    COUNT(m.id_aluno) AS qt_alunos
FROM TURMA t
LEFT JOIN MATRICULA m
    ON m.id_turma = t.id_turma
JOIN DISCIPLINA d
    ON d.id_disciplina = t.id_disciplina
GROUP BY
    t.id_turma,
    d.nm_disciplina
ORDER BY qt_alunos DESC;

-- Consulta: Média geral por disciplina
SELECT
    d.nm_disciplina,
    ROUND(AVG(ar.qt_nota_avaliacao_aluno), 2) AS media_disciplina
FROM AVALIACAO_RESULTADO ar
JOIN AVALIACAO av
    ON av.id_avaliacao = ar.id_avaliacao
JOIN TURMA t
    ON t.id_turma = av.id_turma
JOIN DISCIPLINA d
    ON d.id_disciplina = t.id_disciplina
GROUP BY d.nm_disciplina
ORDER BY media_disciplina DESC;

-- Consulta: Total de faltas por aluno
SELECT
    a.nm_aluno,
    COUNT(*) AS qt_faltas
FROM REGISTRO_AULA_MATRICULA ram
JOIN MATRICULA m
    ON m.id_matricula = ram.id_matricula
JOIN ALUNO a
    ON a.id_aluno = m.id_aluno
WHERE ram.ic_ausente_presente = 0
GROUP BY a.nm_aluno
ORDER BY qt_faltas DESC;

-- Consulta: Professores com maior número de turmas
SELECT
    p.nm_professor,
    COUNT(t.id_turma) AS qt_turmas
FROM PROFESSOR p
JOIN TURMA t
    ON t.id_professor = p.id_professor
GROUP BY p.nm_professor
ORDER BY qt_turmas DESC;
