-- TABELA CURSO
INSERT INTO CURSO (id_curso, sg_curso, nm_curso, ds_curso, cd_periodo_curso, qt_carga_horaria_curso, qt_semestre_curso, cd_modalidade_curso, dt_ativacao_curso)
VALUES (1, 'ADS', 'Análise e Desenvolvimento de Sistemas', 'Curso superior de tecnologia focado em desenvolvimento de software e sistemas computacionais.', 1, 2400, 6, 1, TRUNC(SYSDATE));

INSERT INTO CURSO (id_curso, sg_curso, nm_curso, ds_curso, cd_periodo_curso, qt_carga_horaria_curso, qt_semestre_curso, cd_modalidade_curso, dt_ativacao_curso)
VALUES (2, 'COMEX', 'Comércio Exterior', 'Curso voltado para operações comerciais internacionais e logística.', 1, 2400, 6, 1, TRUNC(SYSDATE));

INSERT INTO CURSO (id_curso, sg_curso, nm_curso, ds_curso, cd_periodo_curso, qt_carga_horaria_curso, qt_semestre_curso, cd_modalidade_curso, dt_ativacao_curso)
VALUES (3, 'DSM', 'Desenvolvimento de Software Multiplataforma', 'Curso focado no desenvolvimento de aplicações web, mobile e multiplataforma.', 1, 2400, 6, 1, TRUNC(SYSDATE));

INSERT INTO CURSO (id_curso, sg_curso, nm_curso, ds_curso, cd_periodo_curso, qt_carga_horaria_curso, qt_semestre_curso, cd_modalidade_curso, dt_ativacao_curso)
VALUES (4, 'GE', 'Gestão Empresarial', 'Curso voltado para administração, gestão estratégica e negócios.', 1, 2400, 6, 1, TRUNC(SYSDATE));

INSERT INTO CURSO (id_curso, sg_curso, nm_curso, ds_curso, cd_periodo_curso, qt_carga_horaria_curso, qt_semestre_curso, cd_modalidade_curso, dt_ativacao_curso)
VALUES (5, 'PQ', 'Processos Químicos', 'Curso focado em processos industriais químicos e operações industriais.', 1, 2400, 6, 1, TRUNC(SYSDATE));

-- TABELA DISCIPINA

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (1, 'ESOFT1', 'Engenharia de Software I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (2, 'ESOFT2', 'Engenharia de Software II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (3, 'ALGO1', 'Algoritmos e Lógica de Programação I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (4, 'ALGO2', 'Algoritmos e Lógica de Programação II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (5, 'SO', 'Sistemas Operacionais', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (6, 'AOC', 'Arquitetura e Organização de Computadores', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (7, 'COMEXP1', 'Comunicação e Expressão I', 40, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (8, 'COMEXP2', 'Comunicação e Expressão II', 40, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (9, 'PIADS1', 'Projeto Integrador ADS I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (10, 'PIADS2', 'Projeto Integrador ADS II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (11, 'PIADS3', 'Projeto Integrador ADS III', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (12, 'PIADS4', 'Projeto Integrador ADS IV', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (13, 'PIADS5', 'Projeto Integrador ADS V', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (14, 'PIADS6', 'Projeto Integrador ADS VI', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (15, 'ING1', 'Inglês I', 40, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (16, 'ING2', 'Inglês II', 40, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (17, 'ING3', 'Inglês III', 40, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (18, 'ING4', 'Inglês IV', 40, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (19, 'ING5', 'Inglês V', 40, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (20, 'ING6', 'Inglês VI', 40, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (21, 'BDR1', 'Banco de Dados Relacional I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (22, 'BDR2', 'Banco de Dados Relacional II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (23, 'DDM1', 'Desenvolvimento para Dispositivos Móveis I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (24, 'DDM2', 'Desenvolvimento para Dispositivos Móveis II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (25, 'ESTDADOS', 'Estrutura de Dados', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (26, 'IHC', 'Interação Humano Computador', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (27, 'MINEDADOS', 'Mineração de Dados', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (28, 'CQN1', 'Computação em Nuvem I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (29, 'CQN2', 'Computação em Nuvem II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (30, 'LOGISTICA', 'Logística', 80, TRUNC(SYSDATE));

-- TABELA DISCIPLINA_CURSO

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (1, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (2, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (3, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (5, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (6, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (7, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (9, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (10, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (11, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (12, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (13, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (14, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (15, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (16, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (17, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (18, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (19, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (20, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (21, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (22, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (23, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (25, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (26, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (27, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (28, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (3, 3, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (4, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (1, 3, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (2, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (21, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (25, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (26, 3, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (23, 3, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (24, 3, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (27, 3, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (28, 3, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (29, 3, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (30, 2, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (30, 4, 4);

-- TABELA PROFESSOR
INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (1, 'Carlos Henrique Martins', '12345678901', 'carlos.martins@fatec.edu.br', 'Engenharia de Software', TO_DATE('2020-02-10', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (2, 'Fernanda Oliveira Souza', '12345678902', 'fernanda.souza@fatec.edu.br', 'Algoritmos e Programação', TO_DATE('2019-03-12', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (3, 'Ricardo Almeida Lima', '12345678903', 'ricardo.lima@fatec.edu.br', 'Banco de Dados', TO_DATE('2018-08-05', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (4, 'Juliana Ferreira Costa', '12345678904', 'juliana.costa@fatec.edu.br', 'Computação em Nuvem', TO_DATE('2021-01-15', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (5, 'André Luiz Pereira', '12345678905', 'andre.pereira@fatec.edu.br', 'Dispositivos Móveis', TO_DATE('2017-06-20', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (6, 'Marina Gomes Rocha', '12345678906', 'marina.rocha@fatec.edu.br', 'Interação Humano Computador', TO_DATE('2022-04-10', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (7, 'Paulo Roberto Dias', '12345678907', 'paulo.dias@fatec.edu.br', 'Estrutura de Dados', TO_DATE('2016-11-02', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (8, 'Camila Nunes Barbosa', '12345678908', 'camila.barbosa@fatec.edu.br', 'Logística', TO_DATE('2020-09-01', 'YYYY-MM-DD'));

-- MAPEAMENTO DISCIPLINA → PROFESSOR
-- Engenharia de Software I e II → Professor 1
-- Algoritmos e Lógica de Programação I e II → Professor 2
-- Banco de Dados Relacional I e II → Professor 3
-- Computação em Nuvem I e II → Professor 4
-- Desenvolvimento para Dispositivos Móveis I e II → Professor 5
-- Interação Humano Computador → Professor 6
-- Estrutura de Dados → Professor 7
-- Logística → Professor 8
