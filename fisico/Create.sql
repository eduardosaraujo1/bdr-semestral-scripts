SEQUENCE SQ_AVALIACAO;
SEQUENCE SQ_OFERTA;
SEQUENCE SQ_MATRICULA;
SEQUENCE SQ_TURMA;
SEQUENCE SQ_DISCIPLINA_CURSO;
SEQUENCE SQ_DISCIPLINA;
SEQUENCE SQ_CURSO;
SEQUENCE SQ_PROFESSOR;
SEQUENCE SQ_ALUNO;

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
  cpf_professor CHAR(11) UNIQUE NOT NULL,
  nm_email_professor VARCHAR(255) UNIQUE NOT NULL,
  nm_especialidade_professor VARCHAR(255) NOT NULL,
  dt_admissao_professor DATE NOT NULL
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
  PRIMARY KEY (id_curso, id_disciplina, id_ciclo_disciplina_curso)
);

CREATE TABLE GRADE_CURSO (
  dd_semana_grade_curso CHAR(3) NOT NULL,
  hr_inicio_grade_curso NUMBER(4) NOT NULL,
  cd_sala_grade_curso VARCHAR(20) NOT NULL,
  id_ciclo_disciplina_curso NUMBER(2) NOT NULL,
  id_curso INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,
  PRIMARY KEY (dd_semana_grade_curso, hr_inicio_grade_curso, cd_sala_grade_curso)
);

CREATE TABLE PERIODO_LETIVO (
  id_periodo_letivo INTEGER PRIMARY KEY,
  aa_periodo_letivo NUMBER(4) NOT NULL,
  semestre_periodo_letivo NUMBER(1) NOT NULL,
  CONSTRAINT chk_semestre CHECK (semestre_periodo_letivo IN (1,2))
);

CREATE TABLE TURMA (
  id_turma INTEGER PRIMARY KEY,
  id_ciclo_turma NUMBER(2) NOT NULL,
  qt_vagas_turma NUMBER(3) NOT NULL,
  id_curso INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,
  id_ciclo_disciplina_curso NUMBER(2) NOT NULL,
  id_periodo_letivo INTEGER NOT NULL,
  id_professor INTEGER NOT NULL
);

CREATE TABLE MATRICULA (
  id_matricula INTEGER PRIMARY KEY,
  id_turma INTEGER NOT NULL,
  id_aluno INTEGER NOT NULL
);

CREATE TABLE GRADE_TURMA (
  id_grade_turma INTEGER PRIMARY KEY,
  dd_semana_grade_turma CHAR(3) NOT NULL,
  hr_inicio_grade_turma NUMBER(4) NOT NULL CHECK (hr_inicio_grade_turma BETWEEN 0 AND 1440),
  cd_sala_grade_turma VARCHAR(20) NOT NULL,
  id_turma INTEGER NOT NULL,
  CONSTRAINT chk_dia_semana CHECK (dd_semana_grade_turma IN ('SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB', 'DOM'))
);

CREATE TABLE AVALIACAO (
  id_avaliacao INTEGER PRIMARY KEY,
  ds_avaliacao VARCHAR(255),
  qt_peso_avaliacao NUMBER(3,1) NOT NULL,
  qt_nota_maxima_avaliacao NUMBER(4,2) NOT NULL,
  dt_hr_avaliacao DATE NOT NULL,
  cd_tipo_avaliacao NUMBER(4) NOT NULL,
  id_turma INTEGER NOT NULL
);

CREATE TABLE REGISTRO_AULA (
  dt_registro_aula DATE NOT NULL CHECK (dt_registro_aula=TRUNC(dt_registro_aula)),
  id_grade_turma INTEGER NOT NULL,
  PRIMARY KEY (dt_registro_aula, id_grade_turma)
);

CREATE TABLE AVALIACAO_RESULTADO (
  id_matricula INTEGER NOT NULL,
  id_avaliacao INTEGER NOT NULL,
  qt_nota_avaliacao_aluno NUMBER(4,2) NOT NULL,
  PRIMARY KEY (id_avaliacao, id_matricula)
);

CREATE TABLE ALUNO_REGISTRO_AULA (
  dt_registro_aula DATE NOT NULL,
  id_grade_turma INTEGER NOT NULL,
  id_matricula INTEGER NOT NULL,
  PRIMARY KEY (dt_registro_aula, id_grade_turma, id_matricula)
);

CREATE UNIQUE INDEX ON PERIODO_LETIVO (aa_periodo_letivo, semestre_periodo_letivo);

CREATE UNIQUE INDEX ON MATRICULA (id_turma, id_aluno);

ALTER TABLE DISCIPLINA_CURSO ADD FOREIGN KEY (id_curso) REFERENCES CURSO (id_curso);

ALTER TABLE DISCIPLINA_CURSO ADD FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA (id_disciplina);

ALTER TABLE GRADE_CURSO ADD FOREIGN KEY (id_curso, id_disciplina, id_ciclo_disciplina_curso) REFERENCES DISCIPLINA_CURSO (id_curso, id_disciplina, id_ciclo_disciplina_curso);

ALTER TABLE TURMA ADD FOREIGN KEY (id_periodo_letivo) REFERENCES PERIODO_LETIVO (id_periodo_letivo);

ALTER TABLE TURMA ADD FOREIGN KEY (id_professor) REFERENCES PROFESSOR (id_professor);

ALTER TABLE TURMA ADD FOREIGN KEY (id_curso, id_disciplina, id_ciclo_disciplina_curso) REFERENCES DISCIPLINA_CURSO (id_curso, id_disciplina, id_ciclo_disciplina_curso);

ALTER TABLE MATRICULA ADD FOREIGN KEY (id_turma) REFERENCES TURMA (id_turma);

ALTER TABLE MATRICULA ADD FOREIGN KEY (id_aluno) REFERENCES ALUNO (id_aluno);

ALTER TABLE GRADE_TURMA ADD FOREIGN KEY (id_turma) REFERENCES TURMA (id_turma);

ALTER TABLE AVALIACAO ADD FOREIGN KEY (id_turma) REFERENCES TURMA (id_turma);

ALTER TABLE REGISTRO_AULA ADD FOREIGN KEY (id_grade_turma) REFERENCES GRADE_TURMA (id_grade_turma);

ALTER TABLE AVALIACAO_RESULTADO ADD FOREIGN KEY (id_matricula) REFERENCES MATRICULA (id_matricula);

ALTER TABLE AVALIACAO_RESULTADO ADD FOREIGN KEY (id_avaliacao) REFERENCES AVALIACAO (id_avaliacao);

ALTER TABLE ALUNO_REGISTRO_AULA ADD FOREIGN KEY (id_matricula) REFERENCES MATRICULA (id_matricula);

ALTER TABLE ALUNO_REGISTRO_AULA ADD FOREIGN KEY (dt_registro_aula, id_grade_turma) REFERENCES REGISTRO_AULA (dt_registro_aula, id_grade_turma);
