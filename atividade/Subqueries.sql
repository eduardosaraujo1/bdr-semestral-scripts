--SUBCONSULTAS

-- Subconsulta: Alunos com média acima da média geral
SELECT
    a.nm_aluno,
    FN_MEDIA_NOTAS(m.id_matricula) AS media
FROM MATRICULA m
JOIN ALUNO a
    ON a.id_aluno = m.id_aluno
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
SELECT
    a.nm_aluno,
    FN_PERCENTUAL_FREQUENCIA(m.id_matricula) AS frequencia
FROM ALUNO a
JOIN MATRICULA m
    ON m.id_aluno = a.id_aluno
WHERE FN_PERCENTUAL_FREQUENCIA(m.id_matricula) <
(
    SELECT AVG(FN_PERCENTUAL_FREQUENCIA(id_matricula))
    FROM MATRICULA
)
ORDER BY frequencia;
