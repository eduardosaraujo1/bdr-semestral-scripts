-- PROCEDURES
-- Procedure: Criar turmas para curso e período
CREATE OR REPLACE PROCEDURE prc_criar_turmas_curso(
    p_id_curso IN INTEGER,
    p_id_periodo_letivo IN INTEGER,
    p_id_ciclo_turma IN NUMBER
) IS
BEGIN
    -- TODO: Verificar se turmas já existem. Se sim, abortar execução com exception
    INSERT INTO TURMA (
        id_turma,
        qt_vagas_turma,
        id_ciclo_turma,
        id_curso,
        id_disciplina,
        id_professor,
        id_periodo_letivo
    )
    SELECT
        SQ_TURMA.NEXTVAL,
        20,
        p_id_ciclo_turma,
        cc.id_curso,
        cc.id_disciplina,
        cc.id_professor,
        p_id_periodo_letivo
    FROM COMPONENTE_CURRICULAR cc
    WHERE cc.id_curso = p_id_curso
      AND cc.id_ciclo_componente_curricular = p_id_ciclo_turma;

    INSERT INTO GRADE_TURMA (
        id_grade_turma,
        dd_semana_grade_turma,
        hr_inicio_grade_turma,
        cd_sala_grade_turma,
        id_turma
    )
    SELECT
        SQ_GRADE_TURMA.NEXTVAL,
        gc.dd_semana_grade_curso,
        gc.hr_inicio_grade_curso,
        gc.cd_sala_grade_curso,
        t.id_turma
    FROM COMPONENTE_CURRICULAR cc
    JOIN GRADE_CURSO gc
        ON gc.id_componente_curricular = cc.id_componente_curricular
    JOIN TURMA t
        ON t.id_curso = cc.id_curso
       AND t.id_disciplina = cc.id_disciplina
       AND t.id_professor = cc.id_professor
       AND t.id_ciclo_turma = p_id_ciclo_turma
       AND t.id_periodo_letivo = p_id_periodo_letivo
    WHERE cc.id_curso = p_id_curso
      AND cc.id_ciclo_componente_curricular = p_id_ciclo_turma;


    COMMIT;
END;
/


-- Procedure: Matricular aluno em curso
PROCEDURE prc_matricular_aluno_curso (
    p_id_aluno IN NUMBER,
    p_id_curso IN NUMBER,
    p_id_periodo IN NUMBER
);
-- Define código do aluno para ativo (0), coloca-o nas turmas do curso e período especificado (erro se não existir; nada de comportamento inesperado em procedures)

-- Procedure: Registrar aula em data
PROCEDURE prc_registrar_aula (
    p_id_grade_turma IN NUMBER,
    p_dt_aula IN DATE
);

-- Procedure: Relatório de presença no console
PROCEDURE prc_relatorio_presenca_console (
    p_id_turma IN NUMBER
);
