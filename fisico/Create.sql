CREATE SEQUENCE SQ_ALUNO;
CREATE SEQUENCE SQ_PROFESSOR;
CREATE SEQUENCE SQ_CURSO;
CREATE SEQUENCE SQ_DISCIPLINA;
CREATE SEQUENCE SQ_COMPONENTE_CURRICULAR;
CREATE SEQUENCE SQ_GRADE_CURSO;
CREATE SEQUENCE SQ_PERIODO_LETIVO;
CREATE SEQUENCE SQ_TURMA;
CREATE SEQUENCE SQ_MATRICULA;
CREATE SEQUENCE SQ_GRADE_TURMA;
CREATE SEQUENCE SQ_AVALIACAO;

CREATE TABLE ALUNO (
  id_aluno INTEGER PRIMARY KEY,
  nm_aluno VARCHAR(255) NOT NULL,
  cd_cpf_aluno CHAR(11) UNIQUE NOT NULL,
  dt_nascimento_aluno DATE NOT NULL,
  nm_email_aluno VARCHAR(255) UNIQUE NOT NULL,
  nm_endereco_aluno VARCHAR(255) NOT NULL,
  cd_situacao_aluno NUMBER(4) NOT NULL
);

CREATE TABLE PROFESSOR (
  id_professor INTEGER PRIMARY KEY,
  nm_professor VARCHAR(255) NOT NULL,
  cd_cpf_professor CHAR(11) UNIQUE NOT NULL,
  nm_email_professor VARCHAR(255) UNIQUE NOT NULL,
  nm_especialidade_professor VARCHAR(255) NOT NULL,
  dt_admissao_professor DATE NOT NULL,
  dt_demissao_professor DATE
);

CREATE TABLE CURSO (
  id_curso INTEGER PRIMARY KEY,
  sg_curso VARCHAR(10) NOT NULL,
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
  sg_disciplina VARCHAR(16) NOT NULL,
  nm_disciplina VARCHAR(255) NOT NULL,
  ds_disciplina VARCHAR(255),
  qt_carga_horaria_disciplina NUMBER(4) NOT NULL,
  dt_desativacao_disciplina DATE
);

CREATE TABLE COMPONENTE_CURRICULAR (
  id_componente_curricular INTEGER PRIMARY KEY,
  id_ciclo_componente_curricular NUMBER(2) NOT NULL,
  id_curso INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,
  id_professor INTEGER NOT NULL,
  CONSTRAINT uk_componente_curricular UNIQUE (id_curso, id_disciplina, id_ciclo_componente_curricular),
  CONSTRAINT fk_comp_curr_curso FOREIGN KEY (id_curso) REFERENCES CURSO (id_curso),
  CONSTRAINT fk_comp_curr_disciplina FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA (id_disciplina),
  CONSTRAINT fk_comp_curr_professor FOREIGN KEY (id_professor) REFERENCES PROFESSOR (id_professor)
);

CREATE TABLE GRADE_CURSO (
  id_grade_curso INTEGER PRIMARY KEY,
  dd_semana_grade_curso CHAR(3) NOT NULL,
  hr_inicio_grade_curso NUMBER(4) NOT NULL,
  cd_sala_grade_curso VARCHAR(20) NOT NULL,
  id_componente_curricular INTEGER NOT NULL,
  CONSTRAINT ck_hora_grade_curso CHECK (hr_inicio_grade_curso BETWEEN 0 AND 1440),
  CONSTRAINT uk_grade_curso UNIQUE (dd_semana_grade_curso, hr_inicio_grade_curso, cd_sala_grade_curso),
  CONSTRAINT fk_grade_curso_comp_curr FOREIGN KEY (id_componente_curricular) REFERENCES COMPONENTE_CURRICULAR (id_componente_curricular)
);

CREATE TABLE PERIODO_LETIVO (
  id_periodo_letivo INTEGER PRIMARY KEY,
  aa_periodo_letivo NUMBER(4) NOT NULL,
  semestre_periodo_letivo NUMBER(1) NOT NULL,
  CONSTRAINT chk_semestre CHECK (semestre_periodo_letivo IN (1,2)),
  CONSTRAINT uk_periodo_letivo UNIQUE (aa_periodo_letivo, semestre_periodo_letivo)
);

CREATE TABLE TURMA (
  id_turma INTEGER PRIMARY KEY,
  qt_vagas_turma NUMBER(3) NOT NULL,
  id_ciclo_turma NUMBER(2) NOT NULL,
  id_curso INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,
  id_professor INTEGER NOT NULL,
  id_periodo_letivo INTEGER NOT NULL,
  CONSTRAINT uk_turma UNIQUE (id_curso, id_disciplina, id_ciclo_turma, id_periodo_letivo),
  CONSTRAINT fk_turma_curso FOREIGN KEY (id_curso) REFERENCES CURSO (id_curso),
  CONSTRAINT fk_turma_disciplina FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA (id_disciplina),
  CONSTRAINT fk_turma_professor FOREIGN KEY (id_professor) REFERENCES PROFESSOR (id_professor),
  CONSTRAINT fk_turma_periodo FOREIGN KEY (id_periodo_letivo) REFERENCES PERIODO_LETIVO (id_periodo_letivo)
);

CREATE TABLE MATRICULA (
  id_matricula INTEGER PRIMARY KEY,
  id_aluno INTEGER NOT NULL,
  id_turma INTEGER NOT NULL,
  CONSTRAINT uk_matricula UNIQUE (id_turma, id_aluno),
  CONSTRAINT fk_matricula_aluno FOREIGN KEY (id_aluno) REFERENCES ALUNO (id_aluno),
  CONSTRAINT fk_matricula_turma FOREIGN KEY (id_turma) REFERENCES TURMA (id_turma)
);

CREATE TABLE GRADE_TURMA (
  id_grade_turma INTEGER PRIMARY KEY,
  dd_semana_grade_turma CHAR(3) NOT NULL,
  hr_inicio_grade_turma NUMBER(4) NOT NULL,
  cd_sala_grade_turma VARCHAR(20) NOT NULL,
  id_turma INTEGER NOT NULL,
  CONSTRAINT ck_dia_semana CHECK (dd_semana_grade_turma IN ('SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB', 'DOM')),
  CONSTRAINT ck_hora_grade_turma CHECK (hr_inicio_grade_turma BETWEEN 0 AND 1440),
  CONSTRAINT uk_grade_turma UNIQUE (dd_semana_grade_turma, hr_inicio_grade_turma, cd_sala_grade_turma, id_turma),
  CONSTRAINT fk_grade_turma_turma FOREIGN KEY (id_turma) REFERENCES TURMA (id_turma)
);

CREATE TABLE AVALIACAO (
  id_avaliacao INTEGER PRIMARY KEY,
  ds_avaliacao VARCHAR(255),
  qt_peso_avaliacao NUMBER(3,1) NOT NULL,
  qt_nota_maxima_avaliacao NUMBER(4,2) NOT NULL,
  dt_hr_avaliacao DATE NOT NULL,
  cd_tipo_avaliacao NUMBER(4) NOT NULL,
  id_turma INTEGER NOT NULL,
  CONSTRAINT uk_avaliacao UNIQUE (id_turma, dt_hr_avaliacao),
  CONSTRAINT fk_avaliacao_turma FOREIGN KEY (id_turma) REFERENCES TURMA (id_turma)
);

CREATE TABLE AVALIACAO_RESULTADO (
  id_matricula INTEGER NOT NULL,
  id_avaliacao INTEGER NOT NULL,
  qt_nota_avaliacao_aluno NUMBER(4,2) NOT NULL,
  PRIMARY KEY (id_avaliacao, id_matricula),
  CONSTRAINT fk_av_resultado_matricula FOREIGN KEY (id_matricula) REFERENCES MATRICULA (id_matricula),
  CONSTRAINT fk_av_resultado_avaliacao FOREIGN KEY (id_avaliacao) REFERENCES AVALIACAO (id_avaliacao)
);

CREATE TABLE REGISTRO_AULA (
  dt_registro_aula DATE NOT NULL,
  id_grade_turma INTEGER NOT NULL,
  CONSTRAINT ck_date_only CHECK (dt_registro_aula=TRUNC(dt_registro_aula)),
  PRIMARY KEY (dt_registro_aula, id_grade_turma),
  CONSTRAINT fk_reg_aula_grade_turma FOREIGN KEY (id_grade_turma) REFERENCES GRADE_TURMA (id_grade_turma)
);

CREATE TABLE REGISTRO_AULA_MATRICULA (
  id_matricula INTEGER NOT NULL,
  dt_registro_aula DATE NOT NULL,
  id_grade_turma INTEGER NOT NULL,
  ic_ausente_presente NUMBER(1) DEFAULT 1 NOT NULL,
  PRIMARY KEY (dt_registro_aula, id_grade_turma, id_matricula),
  CONSTRAINT fk_reg_aula_mat_matricula FOREIGN KEY (id_matricula) REFERENCES MATRICULA (id_matricula),
  CONSTRAINT fk_reg_aula_mat_reg_aula FOREIGN KEY (dt_registro_aula, id_grade_turma) REFERENCES REGISTRO_AULA (dt_registro_aula, id_grade_turma)
);
