
COMMIT;

-- ============================================================
-- CONSULTAS DE VERIFICAÇÃO (executar após os INSERTs)
-- ============================================================

-- Contagem geral
SELECT 'DISCIPLINA_TURMA' AS tabela, COUNT(*) AS total FROM DISCIPLINA_TURMA
UNION ALL
SELECT 'MATRICULA',                   COUNT(*)           FROM MATRICULA;

-- Distribuição de DISCIPLINA_TURMA por curso
SELECT
    c.sg_curso,
    COUNT(*) AS total_dt,
    COUNT(DISTINCT dt.id_turma)       AS turmas_com_disc,
    ROUND(COUNT(*) / COUNT(DISTINCT dt.id_turma), 1) AS media_disc_por_turma
FROM DISCIPLINA_TURMA dt
JOIN TURMA t  ON t.id_turma  = dt.id_turma
JOIN CURSO  c ON c.id_curso  = t.id_curso
GROUP BY c.sg_curso
ORDER BY c.sg_curso;

-- Distribuição de MATRICULA por curso
SELECT
    c.sg_curso,
    COUNT(*) AS total_matriculas
FROM MATRICULA m
JOIN TURMA t  ON t.id_turma = m.id_turma
JOIN CURSO  c ON c.id_curso = t.id_curso
GROUP BY c.sg_curso
ORDER BY c.sg_curso;

-- Alunos por turma (deve ser sempre exatamente 20 por disciplina)
SELECT
    m.id_turma,
    m.id_disciplina,
    COUNT(*) AS qt_alunos,
    MIN(m.id_aluno) AS primeiro_aluno,
    MAX(m.id_aluno) AS ultimo_aluno
FROM MATRICULA m
GROUP BY m.id_turma, m.id_disciplina
HAVING COUNT(*) <> 20          -- deve retornar zero linhas
ORDER BY m.id_turma, m.id_disciplina;

-- Confirmação de consistência: nenhum aluno em dois cursos distintos
SELECT m.id_aluno, COUNT(DISTINCT t.id_curso) AS qt_cursos
FROM MATRICULA m
JOIN TURMA t ON t.id_turma = m.id_turma
GROUP BY m.id_aluno
HAVING COUNT(DISTINCT t.id_curso) > 1  -- deve retornar zero linhas
ORDER BY m.id_aluno;
