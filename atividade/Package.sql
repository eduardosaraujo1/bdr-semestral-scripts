CREATE OR REPLACE PACKAGE pk_banco_semestral IS
    PROCEDURE prc_criar_turmas_curso(
        p_id_curso IN INTEGER,
        p_id_periodo_letivo IN INTEGER,
        p_id_ciclo_turma IN NUMBER);
    PROCEDURE prc_matricular_aluno_curso (
        p_id_aluno IN NUMBER,
        p_id_curso IN NUMBER,
        p_id_periodo IN NUMBER);
    PROCEDURE prc_registrar_aula (
        p_id_grade_turma IN NUMBER,
        p_dt_aula IN DATE);
    PROCEDURE prc_relatorio_presenca_console(
        p_id_turma IN NUMBER);
    PROCEDURE prc_exibir_grade_horaria (
        p_id_curso IN CURSO.id_curso%TYPE,
        p_id_periodo_letivo IN PERIODO_LETIVO.id_periodo_letivo%TYPE
    );
END;
/

CREATE OR REPLACE PACKAGE BODY pk_banco_semestral IS

    -- FUNCTIONS
    -- Função: Calcular média de aluno
    FUNCTION fn_media_notas (
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

    -- Função: Calcular percentual de frequência
    FUNCTION fn_percentual_frequencia (
        p_id_matricula IN MATRICULA.id_matricula%TYPE
    )
    RETURN NUMBER
    IS
        v_percentual NUMBER;
    BEGIN
        SELECT
            CASE
                WHEN COUNT(*) = 0 THEN 0
                ELSE SUM(ic_ausente_presente) / COUNT(*) * 100
            END
        INTO v_percentual
        FROM REGISTRO_AULA_MATRICULA
        WHERE id_matricula = p_id_matricula;

        RETURN v_percentual;
    END;

    -- Função: Determinar situação de aprovação do aluno
    FUNCTION fn_situacao_aluno (
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

    -- Função: Determinar data início do período letivo
    FUNCTION fn_data_inicio_periodo_letivo (
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

    -- PROCEDURES
    -- Procedure: Criar turmas para curso e período
    PROCEDURE prc_criar_turmas_curso(
        p_id_curso IN INTEGER,
        p_id_periodo_letivo IN INTEGER,
        p_id_ciclo_turma IN NUMBER) IS
    BEGIN
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

    -- Procedure: Matricular aluno em curso
    PROCEDURE prc_matricular_aluno_curso (
        p_id_aluno IN NUMBER,
        p_id_curso IN NUMBER,
        p_id_periodo IN NUMBER)
    IS
        v_qt_turmas NUMBER;
        CURSOR c_turmas IS
            SELECT t.id_turma
            FROM TURMA t
            WHERE t.id_curso = p_id_curso
            AND t.id_periodo_letivo = p_id_periodo
            ORDER BY t.id_ciclo_turma;
    BEGIN
        SELECT COUNT(*)
        INTO v_qt_turmas
        FROM TURMA t
        WHERE t.id_curso = p_id_curso
        AND t.id_periodo_letivo = p_id_periodo;

        IF v_qt_turmas = 0 THEN
            RAISE_APPLICATION_ERROR(
                -20001,
                'Nenhuma turma encontrada para o curso e período informados.'
            );
        END IF;

        UPDATE ALUNO
        SET cd_situacao_aluno = 0
        WHERE id_aluno = p_id_aluno;

        FOR turma IN c_turmas LOOP
            INSERT INTO MATRICULA (id_matricula, id_aluno, id_turma)
            VALUES (SQ_MATRICULA.NEXTVAL, p_id_aluno, turma.id_turma);
        END LOOP;

        COMMIT;

    END;

    -- Procedure: Registrar aula em data
    PROCEDURE prc_registrar_aula (
        p_id_grade_turma IN NUMBER,
        p_dt_aula IN DATE
    )
    IS
        CURSOR c_matriculas IS
            SELECT m.id_matricula
            FROM MATRICULA m
            WHERE m.id_turma = (
                SELECT gt.id_turma
                FROM GRADE_TURMA gt
                WHERE gt.id_grade_turma = p_id_grade_turma
            );
    BEGIN
        INSERT INTO REGISTRO_AULA (
            dt_registro_aula,
            id_grade_turma
        )
        VALUES (
            TRUNC(p_dt_aula),
            p_id_grade_turma
        );

        FOR matricula IN c_matriculas LOOP
            INSERT INTO REGISTRO_AULA_MATRICULA (
                id_matricula,
                dt_registro_aula,
                id_grade_turma,
                ic_ausente_presente
            )
            VALUES (
                matricula.id_matricula,
                TRUNC(p_dt_aula),
                p_id_grade_turma,
                1
            );
        END LOOP;
        COMMIT;
    END;

    -- Procedure: Relatório de presença no console
    PROCEDURE prc_relatorio_presenca_console (
        p_id_turma IN NUMBER
    )
    IS
        v_frequencia NUMBER(5,2);
        CURSOR c_alunos IS
            SELECT
                a.nm_aluno,
                m.id_matricula
            FROM MATRICULA m
            JOIN ALUNO a
                ON a.id_aluno = m.id_aluno
            WHERE m.id_turma = p_id_turma
            ORDER BY a.nm_aluno;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Aluno;Porcentagem de presença');
        FOR aluno IN c_alunos LOOP
            v_frequencia := FN_PERCENTUAL_FREQUENCIA(aluno.id_matricula);

            DBMS_OUTPUT.PUT_LINE(
                aluno.nm_aluno || ';'
                || ROUND(v_frequencia, 2) || '%'
            );

        END LOOP;

    END;

    -- Procedure: exibir grade horária
    PROCEDURE prc_exibir_grade_horaria (
        p_id_curso IN CURSO.id_curso%TYPE,
        p_id_periodo_letivo IN PERIODO_LETIVO.id_periodo_letivo%TYPE
    )
    IS
        CURSOR c_grade IS
            SELECT
                t.id_turma,
                t.id_ciclo_turma,
                d.nm_disciplina,
                gt.dd_semana_grade_turma,
                gt.hr_inicio_grade_turma,
                gt.cd_sala_grade_turma
            FROM TURMA t
            JOIN DISCIPLINA d
                ON d.id_disciplina = t.id_disciplina
            JOIN GRADE_TURMA gt
                ON gt.id_turma = t.id_turma
            WHERE t.id_curso = p_id_curso
            AND t.id_periodo_letivo = p_id_periodo_letivo
            ORDER BY
                t.id_ciclo_turma,
                gt.dd_semana_grade_turma,
                gt.hr_inicio_grade_turma;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Turma;Ciclo;Disciplina;Dia;Horario;Sala');
        FOR aula IN c_grade LOOP
            DBMS_OUTPUT.PUT_LINE(
                aula.id_turma || ';'
                || aula.id_ciclo_turma || ';'
                || aula.nm_disciplina || ';'
                || aula.dd_semana_grade_turma || ';'
                || aula.hr_inicio_grade_turma || ';'
                || aula.cd_sala_grade_turma
            );
        END LOOP;
    END;
END;
/
