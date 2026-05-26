CREATE PROCEDURE prc_criar_turmas_curso(
    p_id_curso IN INTEGER,
    p_id_periodo_letivo IN INTEGER,
    p_id_ciclo_turma IN NUMBER(1)
) IS
    CURSOR cur IS
BEGIN
    -- Passo 1 - Criar novas turmas
    INSERT INTO TURMA (id_turma, qt_vagas_turma, id_curso, id_disciplina, id_ciclo_disciplina_curso,
                       id_periodo_letivo, id_professor) VALUES
    SELECT


    -- Passo 2 - Copiar GRADE_CURSO para GRADE_TURMA

    COMMIT;
END;
