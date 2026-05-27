CREATE OR REPLACE FUNCTION fn_data_inicio_periodo_letivo (
    p_id_periodo_letivo IN PERIODO_LETIVO.id_periodo_letivo%TYPE
)
RETURN DATE
IS
    v_data_inicio DATE;
BEGIN
    SELECT TO_DATE(
        '01/' ||
        CASE id_semestre_periodo_letivo
            WHEN 1 THEN '01'
            WHEN 2 THEN '07'
        END || '/' || aa_periodo_letivo,
        'DD/MM/YYYY'
    )
    INTO v_data_inicio
    FROM PERIODO_LETIVO
    WHERE id_periodo_letivo = p_id_periodo_letivo;

    RETURN v_data_inicio;
END;
