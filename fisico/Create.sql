CREATE SEQUENCE SQ_ALUNO;
CREATE SEQUENCE SQ_PROFESSOR;
CREATE SEQUENCE SQ_CURSO;
CREATE SEQUENCE SQ_DISCIPLINA;
CREATE SEQUENCE SQ_PERIODO_LETIVO;
CREATE SEQUENCE SQ_TURMA;
CREATE SEQUENCE SQ_MATRICULA;
CREATE SEQUENCE SQ_GRADE_TURMA;
CREATE SEQUENCE SQ_AVALIACAO;

CREATE TABLE ALUNO (
  id_aluno INTEGER PRIMARY KEY,
  nm_aluno VARCHAR(255) NOT NULL,
  cd_cpf_aluno CHAR(11) NOT NULL UNIQUE,
  dt_nascimento_aluno DATE NOT NULL,
  nm_email_aluno VARCHAR(255) NOT NULL UNIQUE,
  nm_endereco_aluno VARCHAR(255) NOT NULL,
  cd_situacao_aluno NUMBER(4) NOT NULL
);

CREATE TABLE PROFESSOR (
  id_professor INTEGER PRIMARY KEY,
  nm_professor VARCHAR(255) NOT NULL,
  cd_cpf_professor CHAR(11) NOT NULL UNIQUE,
  nm_email_professor VARCHAR(255) NOT NULL UNIQUE,
  nm_especialidade_professor VARCHAR(255) NOT NULL,
  dt_admissao_professor DATE NOT NULL,
  dt_demissao_professor DATE NOT NULL
);

CREATE TABLE CURSO (
  id_curso INTEGER PRIMARY KEY,
  sg_curso CHAR(10) NOT NULL,
  nm_curso VARCHAR(255) NOT NULL,
  ds_curso VARCHAR(255),
  cd_periodo_curso NUMBER(4) NOT NULL,
  qt_carga_horaria_curso NUMBER(4) NOT NULL,
  qt_semestre_curso NUMBER(2) NOT NULL,
  cd_modalidade_curso NUMBER(4) NOT NULL,
  dt_desativacao_curso DATE
);

CREATE TABLE DISCIPLINA (
  id_disciplina INTEGER PRIMARY KEY,
  sg_disciplina CHAR(16) NOT NULL,
  nm_disciplina VARCHAR(255) NOT NULL,
  ds_disciplina VARCHAR(255),
  qt_carga_horaria_disciplina NUMBER(4) NOT NULL,
  dt_desativacao_disciplina DATE
);

CREATE TABLE DISCIPLINA_CURSO (
  id_curso INTEGER,
  id_disciplina INTEGER,
  id_ciclo_disciplina_curso NUMBER(2),

  PRIMARY KEY (
    id_curso,
    id_disciplina,
    id_ciclo_disciplina_curso
  ),

  FOREIGN KEY (id_curso)
    REFERENCES CURSO (id_curso),

  FOREIGN KEY (id_disciplina)
    REFERENCES DISCIPLINA (id_disciplina)
);

CREATE TABLE GRADE_CURSO (
  dd_semana_grade_curso CHAR(3) NOT NULL,
  hr_inicio_grade_curso NUMBER(4) NOT NULL,
  cd_sala_grade_curso VARCHAR(20) NOT NULL,
  id_ciclo_disciplina_curso NUMBER(2) NOT NULL,
  id_curso INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,

  PRIMARY KEY (
    dd_semana_grade_curso,
    hr_inicio_grade_curso,
    cd_sala_grade_curso
  ),

  FOREIGN KEY (
    id_curso,
    id_disciplina,
    id_ciclo_disciplina_curso
  )
    REFERENCES DISCIPLINA_CURSO (
      id_curso,
      id_disciplina,
      id_ciclo_disciplina_curso
    )
);

CREATE TABLE PERIODO_LETIVO (
  id_periodo_letivo INTEGER PRIMARY KEY,
  aa_periodo_letivo NUMBER(4) NOT NULL,
  semestre_periodo_letivo NUMBER(1) NOT NULL,

  CONSTRAINT chk_semestre
    CHECK (semestre_periodo_letivo IN (1,2)),

  CONSTRAINT uk_periodo_letivo
    UNIQUE (aa_periodo_letivo, semestre_periodo_letivo)
);

CREATE TABLE TURMA (
  id_turma INTEGER PRIMARY KEY,
  qt_vagas_turma NUMBER(3) NOT NULL,
  id_curso INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,
  id_ciclo_disciplina_curso NUMBER(2) NOT NULL,
  id_periodo_letivo INTEGER NOT NULL,
  id_professor INTEGER NOT NULL,

  FOREIGN KEY (id_periodo_letivo)
    REFERENCES PERIODO_LETIVO (id_periodo_letivo),

  FOREIGN KEY (id_professor)
    REFERENCES PROFESSOR (id_professor),

  FOREIGN KEY (
    id_curso,
    id_disciplina,
    id_ciclo_disciplina_curso
  )
    REFERENCES DISCIPLINA_CURSO (
      id_curso,
      id_disciplina,
      id_ciclo_disciplina_curso
    )
);

CREATE TABLE MATRICULA (
  id_matricula INTEGER PRIMARY KEY,
  id_turma INTEGER NOT NULL,
  id_aluno INTEGER NOT NULL,

  CONSTRAINT uk_matricula
    UNIQUE (id_turma, id_aluno),

  FOREIGN KEY (id_turma)
    REFERENCES TURMA (id_turma),

  FOREIGN KEY (id_aluno)
    REFERENCES ALUNO (id_aluno)
);

CREATE TABLE GRADE_TURMA (
  id_grade_turma INTEGER PRIMARY KEY,
  dd_semana_grade_turma CHAR(3) NOT NULL,
  hr_inicio_grade_turma NUMBER(4) NOT NULL
    CHECK (hr_inicio_grade_turma BETWEEN 0 AND 1440),
  cd_sala_grade_turma VARCHAR(20) NOT NULL,
  id_turma INTEGER NOT NULL,

  CONSTRAINT chk_dia_semana
    CHECK (
      dd_semana_grade_turma IN (
        'SEG',
        'TER',
        'QUA',
        'QUI',
        'SEX',
        'SAB',
        'DOM'
      )
    ),

  FOREIGN KEY (id_turma)
    REFERENCES TURMA (id_turma)
);

CREATE TABLE AVALIACAO (
  id_avaliacao INTEGER PRIMARY KEY,
  ds_avaliacao VARCHAR(255),
  qt_peso_avaliacao NUMBER(3,1) NOT NULL,
  qt_nota_maxima_avaliacao NUMBER(4,2) NOT NULL,
  dt_hr_avaliacao DATE NOT NULL,
  cd_tipo_avaliacao NUMBER(4) NOT NULL,
  id_turma INTEGER NOT NULL,

  FOREIGN KEY (id_turma)
    REFERENCES TURMA (id_turma)
);

CREATE TABLE REGISTRO_AULA (
  dt_registro_aula DATE NOT NULL
    CHECK (dt_registro_aula = TRUNC(dt_registro_aula)),
  id_grade_turma INTEGER NOT NULL,

  PRIMARY KEY (
    dt_registro_aula,
    id_grade_turma
  ),

  FOREIGN KEY (id_grade_turma)
    REFERENCES GRADE_TURMA (id_grade_turma)
);

CREATE TABLE AVALIACAO_RESULTADO (
  id_matricula INTEGER NOT NULL,
  id_avaliacao INTEGER NOT NULL,
  qt_nota_avaliacao_aluno NUMBER(4,2) NOT NULL,

  PRIMARY KEY (
    id_avaliacao,
    id_matricula
  ),

  FOREIGN KEY (id_matricula)
    REFERENCES MATRICULA (id_matricula),

  FOREIGN KEY (id_avaliacao)
    REFERENCES AVALIACAO (id_avaliacao)
);

CREATE TABLE ALUNO_REGISTRO_AULA (
  dt_registro_aula DATE NOT NULL,
  id_grade_turma INTEGER NOT NULL,
  id_matricula INTEGER NOT NULL,

  PRIMARY KEY (
    dt_registro_aula,
    id_grade_turma,
    id_matricula
  ),

  FOREIGN KEY (id_matricula)
    REFERENCES MATRICULA (id_matricula),

  FOREIGN KEY (
    dt_registro_aula,
    id_grade_turma
  )
    REFERENCES REGISTRO_AULA (
      dt_registro_aula,
      id_grade_turma
    )
);

CREATE TRIGGER trg_aluno_registro_aula_turma
BEFORE INSERT OR UPDATE
ON ALUNO_REGISTRO_AULA
FOR EACH ROW
DECLARE
    v_turma_matricula   MATRICULA.id_turma%TYPE;
    v_turma_registro    TURMA.id_turma%TYPE;
BEGIN
    SELECT m.id_turma
    INTO v_turma_matricula
    FROM MATRICULA m
    WHERE m.id_matricula = :NEW.id_matricula;

    SELECT gt.id_turma
    INTO v_turma_registro
    FROM REGISTRO_AULA ra
    JOIN GRADE_TURMA gt
    ON gt.id_grade_turma = ra.id_grade_turma
    WHERE ra.dt_registro_aula = :NEW.dt_registro_aula
    AND ra.id_grade_turma  = :NEW.id_grade_turma;

    IF v_turma_matricula != v_turma_registro THEN
        RAISE_APPLICATION_ERROR(
        -20001,
        'Matricula pertence a outra turma.'
        );
    END IF;
END;
/

CREATE TRIGGER trg_avaliacao_resultado_turma
BEFORE INSERT OR UPDATE
ON AVALIACAO_RESULTADO
FOR EACH ROW
DECLARE
    v_turma_matricula   MATRICULA.id_turma%TYPE;
    v_turma_avaliacao   TURMA.id_turma%TYPE;
BEGIN
    SELECT m.id_turma
    INTO v_turma_matricula
    FROM MATRICULA m
    WHERE m.id_matricula = :NEW.id_matricula;

    SELECT a.id_turma
    INTO v_turma_avaliacao
    FROM AVALIACAO a
    WHERE a.id_avaliacao = :NEW.id_avaliacao;

    IF v_turma_matricula != v_turma_avaliacao THEN
        RAISE_APPLICATION_ERROR(
        -20002,
        'Avaliacao pertence a outra turma.'
        );
    END IF;
END;
/
