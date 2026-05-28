-- FUNCTIONS
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
/

-- Função: Determinar situação de aprovação do aluno
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

-- Função: Determinar data início do período letivo
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
