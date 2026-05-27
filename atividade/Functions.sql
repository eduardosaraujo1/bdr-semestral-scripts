-- Função: Calcular média de aluno
CREATE OR REPLACE FUNCTION fn_media_notas (
    p_id_matricula IN MATRICULA.id_matricula%TYPE
)
RETURN NUMBER
IS
    v_media NUMBER(5,2);
BEGIN
    SELECT AVG(ar.qt_nota_avaliacao_aluno)
    INTO v_media
    FROM AVALIACAO_RESULTADO ar
    WHERE ar.id_matricula = p_id_matricula;

    RETURN NVL(v_media, 0);
END;
/

-- Função: Calcular percentual de frequência
CREATE OR REPLACE FUNCTION fn_percentual_frequencia (
    p_id_matricula IN MATRICULA.id_matricula%TYPE
)
RETURN NUMBER
IS
    v_total_aulas NUMBER;
    v_presencas NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_total_aulas
    FROM REGISTRO_AULA_MATRICULA
    WHERE id_matricula = p_id_matricula;

    SELECT COUNT(*)
    INTO v_presencas
    FROM REGISTRO_AULA_MATRICULA
    WHERE id_matricula = p_id_matricula
      AND ic_ausente_presente = 1;

    IF v_total_aulas = 0 THEN
        RETURN 0;
    END IF;

    RETURN (v_presencas / v_total_aulas) * 100;
END;
/

-- Função: Determinar situação do aluno

CREATE OR REPLACE FUNCTION fn_situacao_aluno (
    p_id_matricula IN MATRICULA.id_matricula%TYPE
)
RETURN VARCHAR
IS
    v_media NUMBER(5,2);
    v_frequencia NUMBER(5,2);
BEGIN
    v_media := fn_media_notas(p_id_matricula);
    v_frequencia := fn_percentual_frequencia(p_id_matricula);

    IF v_media >= 7 AND v_frequencia >= 75 THEN
        RETURN 'APROVADO';
    ELSE
        RETURN 'REPROVADO';
    END IF;
END;
/
```

-- Função: Determinar data início do período letivo

```sql
CREATE OR REPLACE FUNCTION fn_data_inicio_periodo_letivo (
    p_id_periodo_letivo IN PERIODO_LETIVO.id_periodo_letivo%TYPE
)
RETURN DATE
IS
    v_ano NUMBER(4);
    v_semestre NUMBER(1);
BEGIN
    SELECT aa_periodo_letivo,
           id_semestre_periodo_letivo
    INTO v_ano,
         v_semestre
    FROM PERIODO_LETIVO
    WHERE id_periodo_letivo = p_id_periodo_letivo;

    IF v_semestre = 1 THEN
        RETURN TO_DATE('01/02/' || v_ano, 'DD/MM/YYYY');
    ELSE
        RETURN TO_DATE('01/07/' || v_ano, 'DD/MM/YYYY');
    END IF;
END;
/
```

# PROCEDURES

-- Procedure: Criar turmas para curso e período

```sql
PROCEDURE PRC_CRIAR_TURMAS_CURSO (
    p_id_curso IN NUMBER,
    p_id_periodo_letivo IN NUMBER,
    p_id_ciclo IN NUMBER
)
```

-- Procedure: Matricular aluno em curso

```sql
PROCEDURE PRC_MATRICULAR_ALUNO_CURSO (
    p_id_aluno IN NUMBER,
    p_id_curso IN NUMBER,
    p_id_periodo IN NUMBER
)
```

-- Procedure: Registrar aula em data

```sql
PROCEDURE PRC_REGISTRAR_AULA (
    p_id_grade_turma IN NUMBER,
    p_dt_aula IN DATE
)
```

-- Procedure: Relatório de presença no console

```sql
PROCEDURE PRC_RELATORIO_PRESENCA_CONSOLE (
    p_id_turma IN NUMBER
)
```

# CONSULTAS COM JUNÇÃO DE TABELAS

-- Consulta: Grade horária por turma

```sql
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
WHERE t.id_turma = 1
ORDER BY gt.dd_semana_grade_turma,
         gt.hr_inicio_grade_turma;
```

-- Consulta: Desempenho acadêmico por aluno

```sql
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
ORDER BY a.nm_aluno;
```

-- Consulta: Turmas por professor

```sql
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
```

-- Consulta: Alunos matriculados por disciplina

```sql
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
```

# SUBCONSULTAS

-- Subconsulta: Alunos com média acima da média geral

```sql
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
```

-- Subconsulta: Professores que possuem turmas no período atual

```sql
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
```

-- Subconsulta: Disciplinas sem alunos matriculados

```sql
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
```

-- Subconsulta: Alunos com frequência abaixo de 75%

```sql
SELECT
    a.nm_aluno,
    FN_PERCENTUAL_FREQUENCIA(m.id_matricula) AS frequencia
FROM ALUNO a
JOIN MATRICULA m
    ON m.id_aluno = a.id_aluno
WHERE FN_PERCENTUAL_FREQUENCIA(m.id_matricula) <
(
    SELECT 75
    FROM dual
);
```

# CONSULTAS EXTRAS

-- Consulta: Quantidade de alunos por turma

```sql
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
```

-- Consulta: Média geral por disciplina

```sql
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
```

-- Consulta: Total de faltas por aluno

```sql
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
```

-- Consulta: Professores com maior número de turmas

```sql
SELECT
    p.nm_professor,
    COUNT(t.id_turma) AS qt_turmas
FROM PROFESSOR p
JOIN TURMA t
    ON t.id_professor = p.id_professor
GROUP BY p.nm_professor
ORDER BY qt_turmas DESC;
```
