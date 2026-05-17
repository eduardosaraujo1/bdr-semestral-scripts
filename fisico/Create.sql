CREATE SEQUENCE SQ_AVALIACAO;
/
CREATE SEQUENCE SQ_OFERTA;
/
CREATE SEQUENCE SQ_MATRICULA;
/
CREATE SEQUENCE SQ_TURMA;
/
CREATE SEQUENCE SQ_DISCIPLINA;
/
CREATE SEQUENCE SQ_CURSO;
/
CREATE SEQUENCE SQ_PROFESSOR;
/
CREATE SEQUENCE SQ_ALUNO;
/
CREATE TABLE aluno (
  id_aluno INTEGER PRIMARY KEY,
  nm_aluno VARCHAR(255) NOT NULL,
  cpf_aluno CHAR(11) NOT NULL,
  dt_nascimento_aluno DATE NOT NULL,
  nm_email_aluno VARCHAR(255) NOT NULL,
  nm_endereco_aluno VARCHAR(255) NOT NULL,
  cd_situacao_aluno NUMBER(4) NOT NULL
);
/
CREATE TABLE professor (
  id_professor INTEGER PRIMARY KEY,
  nm_professor VARCHAR(255) NOT NULL,
  cpf_professor CHAR(11) NOT NULL,
  nm_email_professor VARCHAR(255) NOT NULL,
  nm_especialidade_professor VARCHAR(255) NOT NULL,
  dt_admissao_professor DATE NOT NULL
);
/
CREATE TABLE curso (
  id_curso INTEGER PRIMARY KEY,
  sg_curso CHAR(10) NOT NULL,
  nm_curso VARCHAR(255) NOT NULL,
  ds_curso VARCHAR(255),
  cd_periodo_curso NUMBER(4) NOT NULL,
  qt_carga_horaria_curso NUMBER(4) NOT NULL,
  qt_semestre_curso NUMBER(2) NOT NULL,
  cd_modalidade_curso NUMBER(4) NOT NULL,
  dt_ativacao_curso DATE DEFAULT TRUNC(SYSDATE) NOT NULL,
  dt_desativacao_curso DATE
);
/
CREATE TABLE disciplina (
  id_disciplina INTEGER PRIMARY KEY,
  sg_disciplina CHAR(10) NOT NULL,
  nm_disciplina VARCHAR(255) NOT NULL,
  ds_disciplina VARCHAR(255),
  qt_carga_horaria_disciplina NUMBER(4) NOT NULL,
  dt_ativacao_disciplina DATE DEFAULT TRUNC(SYSDATE) NOT NULL,
  dt_desativacao_disciplina DATE
);
/
CREATE TABLE disciplina_curso (
  id_disciplina INTEGER,
  id_curso INTEGER,
  id_ciclo_disciplina_curso NUMBER(2),
  PRIMARY KEY (id_disciplina, id_curso),
  FOREIGN KEY (id_disciplina)
    REFERENCES disciplina (id_disciplina),
  FOREIGN KEY (id_curso)
    REFERENCES curso (id_curso)
);
/
CREATE TABLE turma (
  id_turma INTEGER PRIMARY KEY,
  dt_inicio_turma DATE DEFAULT TRUNC(SYSDATE) NOT NULL,
  dt_fim_turma DATE,
  id_ciclo_turma NUMBER(2) NOT NULL,
  id_curso INTEGER NOT NULL,
  FOREIGN KEY (id_curso)
    REFERENCES curso (id_curso)
);
/
CREATE TABLE disciplina_turma (
  id_turma INTEGER,
  id_disciplina INTEGER,
  qt_vagas_disciplina_turma NUMBER(3) NOT NULL,
  id_professor INTEGER NOT NULL,
  PRIMARY KEY (id_turma, id_disciplina),
  FOREIGN KEY (id_turma)
    REFERENCES turma (id_turma),
  FOREIGN KEY (id_disciplina)
    REFERENCES disciplina (id_disciplina),
  FOREIGN KEY (id_professor)
    REFERENCES professor (id_professor)
);
/
CREATE TABLE matricula (
  id_matricula INTEGER PRIMARY KEY,
  id_turma INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,
  id_aluno INTEGER NOT NULL,
  CONSTRAINT uk_matricula
    UNIQUE (id_turma, id_disciplina, id_aluno),
  FOREIGN KEY (id_aluno)
    REFERENCES aluno (id_aluno),
  FOREIGN KEY (id_turma, id_disciplina)
    REFERENCES disciplina_turma (id_turma, id_disciplina)
);
/
CREATE TABLE oferta (
  id_oferta INTEGER PRIMARY KEY,
  cd_sala_oferta VARCHAR(20) NOT NULL,
  dd_semana_oferta CHAR(3) NOT NULL,
  hr_inicio_oferta NUMBER(4) NOT NULL,
  hr_fim_oferta NUMBER(4) NOT NULL,
  id_turma INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,
  CONSTRAINT chk_dia_semana
    CHECK (dd_semana_oferta IN ('SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB', 'DOM')),
  FOREIGN KEY (id_turma, id_disciplina)
    REFERENCES disciplina_turma (id_turma, id_disciplina)
);
/
CREATE TABLE avaliacao (
  id_avaliacao INTEGER PRIMARY KEY,
  ds_avaliacao VARCHAR(255),
  qt_peso_avaliacao NUMBER(3,1) NOT NULL,
  qt_nota_maxima_avaliacao NUMBER(4,2) NOT NULL,
  dt_hr_avaliacao DATE NOT NULL,
  cd_tipo_avaliacao NUMBER(4) NOT NULL,
  id_turma INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,
  FOREIGN KEY (id_turma, id_disciplina)
    REFERENCES disciplina_turma (id_turma, id_disciplina)
);
/
CREATE TABLE registro_aula (
  dt_registro_aula DATE,
  id_oferta INTEGER,
  PRIMARY KEY (dt_registro_aula, id_oferta),
  CONSTRAINT chk_dt_registro_aula
    CHECK (dt_registro_aula = TRUNC(dt_registro_aula)),
  FOREIGN KEY (id_oferta)
    REFERENCES oferta (id_oferta)
);
/
CREATE TABLE avaliacao_resultado (
  id_avaliacao INTEGER,
  id_matricula INTEGER,
  qt_nota_avaliacao_aluno NUMBER(4,2) NOT NULL,
  PRIMARY KEY (id_avaliacao, id_matricula),
  FOREIGN KEY (id_avaliacao)
    REFERENCES avaliacao (id_avaliacao),
  FOREIGN KEY (id_matricula)
    REFERENCES matricula (id_matricula)
);
/
CREATE TABLE aluno_registro_aula (
  dt_registro_aula DATE,
  id_oferta INTEGER,
  id_matricula INTEGER,
  PRIMARY KEY (dt_registro_aula, id_oferta, id_matricula),
  FOREIGN KEY (id_matricula)
    REFERENCES matricula (id_matricula),
  FOREIGN KEY (dt_registro_aula, id_oferta)
    REFERENCES registro_aula (dt_registro_aula, id_oferta)
);
