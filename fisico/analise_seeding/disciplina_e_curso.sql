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
VALUES (1, 'ENGSOF1', 'Engenharia de Software I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (2, 'ALGLÓGP2', 'Algoritmos e Lógica de Programação I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (3, 'SISOPE3', 'Sistemas Operacionais', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (4, 'ARQORGC4', 'Arquitetura e Organização de Computadores', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (5, 'COMEXP5', 'Comunicação e Expressão I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (6, 'PROINTA6', 'Projeto Integrador ADS I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (7, 'INGLÊS7', 'Inglês I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (8, 'ENGSOF8', 'Engenharia de Software II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (9, 'LINPRO9', 'Linguagem de Programação I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (10, 'DESWEB10', 'Desenvolvimento Web I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (11, 'BANDADR11', 'Banco de Dados Relacional I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (12, 'COMSEGI12', 'Compliance e Segurança da Informação', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (13, 'PROINTA13', 'Projeto Integrador ADS II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (14, 'INGLÊS14', 'Inglês II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (15, 'GESPRO15', 'Gestão de Projetos', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (16, 'REDCOM16', 'Redes de Computadores', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (17, 'LINPRO17', 'Linguagem de Programação II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (18, 'EMPINO18', 'Empreendedorismo e Inovação', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (19, 'BANDADR19', 'Banco de Dados Relacional II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (20, 'PROINTA20', 'Projeto Integrador ADS III', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (21, 'INGLÊS21', 'Inglês III', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (22, 'PADPROS22', 'Padrões de Projeto de Software', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (23, 'ESTDAD23', 'Estrutura de Dados', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (24, 'ESTAPL24', 'Estatística Aplicada', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (25, 'DESDISM25', 'Desenvolvimento para Dispositivos Móveis I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (26, 'INTHUMC26', 'Interação Humano Computador', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (27, 'PROINTA27', 'Projeto Integrador ADS IV', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (28, 'INGLÊS28', 'Inglês IV', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (29, 'QUATESS29', 'Qualidade e Testes de Software', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (30, 'SISEMBI30', 'Sistemas Embarcados e IoT', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (31, 'ENGAPLW31', 'Engenharia de Aplicações Web', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (32, 'INTARTA32', 'Inteligência Artificial e Aplicações', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (33, 'MINDAD33', 'Mineração de Dados', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (34, 'PROINTA34', 'Projeto Integrador ADS V', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (35, 'INGLÊS35', 'Inglês V', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (36, 'COMCOG36', 'Computação Cognitiva', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (37, 'COMNUV37', 'Computação em Nuvem I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (38, 'ENGINTW38', 'Engenharia de Interfaces Web', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (39, 'VISCOM39', 'Visão Computacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (40, 'GESGOVT40', 'Gestão e Governança de Tecnologia da Informação', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (41, 'PROINTA41', 'Projeto Integrador ADS VI', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (42, 'INGLÊS42', 'Inglês VI', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (43, 'ADMGER43', 'Administração Geral', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (44, 'COMEXT44', 'Comércio Exterior', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (45, 'FUNDIRP45', 'Fundamentos do Direito Público e Privado', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (46, 'MATAPLC46', 'Matemática Aplicada ao Comércio Exterior', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (47, 'METCIE47', 'Metodologia Científica', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (48, 'COMEXP48', 'Comunicação e Expressão II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (49, 'CONGER49', 'Contabilidade Gerencial', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (50, 'DIRINT50', 'Direito Internacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (51, 'ECONOMI51', 'Economia', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (52, 'ESTAPLC52', 'Estatística Aplicada ao Comércio Exterior', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (53, 'POLCOME53', 'Política Comercial Externa', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (54, 'PROCOME54', 'Projeto em Comércio Exterior I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (55, 'ECOINT55', 'Economia Internacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (56, 'ESPANHO56', 'Espanhol I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (57, 'GESFIN57', 'Gestão Financeira', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (58, 'LOGÍSTI58', 'Logística', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (59, 'MODTRAS59', 'Modais de Transporte e Seguro de Carga', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (60, 'PROCOME60', 'Projeto em Comércio Exterior II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (61, 'ESPANHO61', 'Espanhol II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (62, 'LEGADU62', 'Legislação Aduaneira', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (63, 'LOGINT63', 'Logística Internacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (64, 'MARINT64', 'Marketing Internacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (65, 'PROCOME65', 'Projeto em Comércio Exterior III', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (66, 'SISCOME66', 'Sistemática do Comércio Exterior', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (67, 'ESPANHO67', 'Espanhol III', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (68, 'GESAMBP68', 'Gestão Ambiental Portuária', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (69, 'GESCUST69', 'Gestão de Custos e Tributos', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (70, 'PROCOME70', 'Projeto em Comércio Exterior IV', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (71, 'REGADUE71', 'Regimes Aduaneiros Especiais', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (72, 'TEOPRÁC72', 'Teoria e Prática Cambial', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (73, 'ESPANHO73', 'Espanhol IV', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (74, 'GESOPEP74', 'Gestão de Operações Portuárias', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (75, 'GESESTI75', 'Gestão Estratégica Internacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (76, 'MERFINI76', 'Mercado e Finanças Internacionais', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (77, 'PROCOME77', 'Projeto em Comércio Exterior V', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (78, 'TÉCNEGI78', 'Técnicas de Negociação Internacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (79, 'DESDIG79', 'Design Digital', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (80, 'MODBAND80', 'Modelagem de Banco de Dados', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (81, 'SISOPER81', 'Sistemas Operacionais e Redes de Computadores', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (82, 'TÉCPRO82', 'Técnicas de Programação I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (83, 'DESWEB83', 'Desenvolvimento Web II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (84, 'MATCOM84', 'Matemática para Computação', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (85, 'ALGLÓGP85', 'Algoritmos e Lógica de Programação II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (86, 'DESWEB86', 'Desenvolvimento Web III', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (87, 'ÁLGLIN87', 'Álgebra Linear', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (88, 'GESÁGIP88', 'Gestão Ágil de Projetos de Software', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (89, 'BANDADN89', 'Banco de Dados Não Relacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (90, 'INTENTC90', 'Integração e Entrega Contínua', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (91, 'LABDESW91', 'Laboratório de Desenvolvimento Web', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (92, 'INTDASC92', 'Internet das Coisas e Aplicações', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (93, 'EXPUSU93', 'Experiência do Usuário', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (94, 'APRMÁQ94', 'Aprendizagem de Máquina', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (95, 'LABDESD95', 'Laboratório de Desenvolvimento para Dispositivos Móveis', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (96, 'DESDISM96', 'Desenvolvimento para Dispositivos Móveis II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (97, 'SEGNODE97', 'Segurança no Desenvolvimento de Aplicações', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (98, 'FUNREDT98', 'Fundamentos da Redação Técnica', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (99, 'COMNUV99', 'Computação em Nuvem II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (100, 'PROLINN100', 'Processamento de Linguagem Natural', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (101, 'LABDESM101', 'Laboratório de Desenvolvimento Multiplataforma', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (102, 'ÉTIPROP102', 'Ética Profissional e Patentes', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (103, 'PROINTG103', 'Projeto Integrador em Gestão Empresarial I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (104, 'CONTABI104', 'Contabilidade', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (105, 'INFAPLG105', 'Informática Aplicada à Gestão', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (106, 'TECINO106', 'Sociedade, Tecnologia e Inovação', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (107, 'MATEMÁT107', 'Matemática', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (108, 'PROINTG108', 'Projeto Integrador em Gestão Empresarial II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (109, 'COMORG109', 'Comportamento Organizacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (110, 'SOCDASO110', 'Sociologia das Organizações', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (111, 'GESAMBE111', 'Gestão Ambiental Empresarial', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (112, 'ESTAPLG112', 'Estatística Aplicada à Gestão', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (113, 'PROINTG113', 'Projeto Integrador em Gestão Empresarial III', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (114, 'GESPES114', 'Gestão de Pessoas', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (115, 'GESMAR115', 'Gestão de Marketing', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (116, 'SISMÉT116', 'Organização, Sistemas e Métodos', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (117, 'SISINF117', 'Sistemas de Informação', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (118, 'MATFIN118', 'Matemática Financeira', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (119, 'PROINTG119', 'Projeto Integrador em Gestão Empresarial IV', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (120, 'PLAMAR120', 'Planejamento de Marketing', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (121, 'COMEMP121', 'Comunicação Empresarial', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (122, 'DIREMP122', 'Direito Empresarial', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (123, 'PROINTG123', 'Projeto Integrador em Gestão Empresarial V', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (124, 'ANÁINV124', 'Análise de Investimentos', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (125, 'GESPROO125', 'Gestão da Produção e Operações', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (126, 'GESQUA126', 'Gestão da Qualidade', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (127, 'PROPESG127', 'Projeto de Pesquisa em Gestão Empresarial', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (128, 'PROINTG128', 'Projeto Integrador em Gestão Empresarial VI', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (129, 'DESNEG129', 'Desenvolvimento de Negócios', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (130, 'PLAGESE130', 'Planejamento e Gestão Estratégica', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (131, 'NEGINT131', 'Negócios Internacionais', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (132, 'SISINTG132', 'Sistemas Integrados de Gestão', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (133, 'TECINF133', 'Tecnologia da Informação', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (134, 'QUÍGERE134', 'Química Geral e Experimental', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (135, 'QUÍINO135', 'Química Inorgânica', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (136, 'FÍSICA136', 'Física', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (137, 'FUNMATC137', 'Fundamentos de Matemática para Cálculo', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (138, 'GESAMB138', 'Gestão Ambiental', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (139, 'DESTÉCA139', 'Desenho Técnico Assistido por Computador', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (140, 'QUÍORG140', 'Química Orgânica', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (141, 'DISC141', 'Físico-Química', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (142, 'QUÍANA142', 'Química Analítica', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (143, 'CÁLCULO143', 'Cálculo', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (144, 'ANÁINS144', 'Análise Instrumental', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (145, 'MANIND145', 'Manutenção Industrial', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (146, 'ENGENE146', 'Engenharia da Energia', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (147, 'PLACONP147', 'Planejamento e Controle da Produção', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (148, 'MICAPLB148', 'Microbiologia Aplicada à Biotecnologia', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (149, 'TRACAL149', 'Transferência de Calor', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (150, 'MECDOSF150', 'Mecânica dos Fluidos', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (151, 'OPEUNI151', 'Operações Unitárias I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (152, 'QUÍMEIA152', 'Química do Meio Ambiente', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (153, 'BIOTECD153', 'Bioquímica e Tecnologia das Fermentações', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (154, 'GEOMIN154', 'Geologia e Mineralogia', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (155, 'ESTDES155', 'Estatística Descritiva', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (156, 'OPEUNI156', 'Operações Unitárias II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (157, 'CORROSÃ157', 'Corrosão', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (158, 'PROQUÍ158', 'Processos Químicos I', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (159, 'CONGARQ159', 'Controle e Garantia da Qualidade', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (160, 'TECDOSM160', 'Tecnologia dos Materiais', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (161, 'FUNLOG161', 'Fundamentos de Logística', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (162, 'TRAEFL162', 'Tratamento de Efluentes', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (163, 'PROPETG163', 'Processamento do Petróleo e Gás Natural', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (164, 'GESECOA164', 'Gestão Econômica e Administrativa na Indústria Química', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (165, 'SAÚSEGO165', 'Saúde e Segurança Ocupacional', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (166, 'PROQUÍ166', 'Processos Químicos II', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (167, 'LEGNAIN167', 'Legislação na Indústria Química', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (168, 'CONPROQ168', 'Controle de Processos Químicos', 80, TRUNC(SYSDATE));

INSERT INTO DISCIPLINA (id_disciplina, sg_disciplina, nm_disciplina, qt_carga_horaria_disciplina, dt_ativacao_disciplina)
VALUES (169, 'INSIND169', 'Instrumentação Industrial', 80, TRUNC(SYSDATE));


-- TABELA DISCIPLINA_CURSO
INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (1, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (2, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (3, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (4, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (5, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (6, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (7, 1, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (8, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (9, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (10, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (11, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (12, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (13, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (14, 1, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (15, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (16, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (17, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (18, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (19, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (20, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (21, 1, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (22, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (23, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (24, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (25, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (26, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (27, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (28, 1, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (29, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (30, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (31, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (32, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (33, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (34, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (35, 1, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (36, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (37, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (38, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (39, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (40, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (41, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (42, 1, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (43, 2, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (44, 2, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (5, 2, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (45, 2, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (7, 2, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (46, 2, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (47, 2, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (48, 2, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (49, 2, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (50, 2, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (51, 2, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (52, 2, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (14, 2, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (53, 2, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (54, 2, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (55, 2, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (56, 2, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (57, 2, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (21, 2, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (58, 2, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (59, 2, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (60, 2, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (61, 2, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (62, 2, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (28, 2, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (63, 2, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (64, 2, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (65, 2, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (66, 2, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (67, 2, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (68, 2, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (69, 2, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (35, 2, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (70, 2, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (71, 2, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (72, 2, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (73, 2, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (74, 2, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (75, 2, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (42, 2, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (76, 2, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (77, 2, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (78, 2, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (2, 3, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (10, 3, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (79, 3, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (1, 3, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (80, 3, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (81, 3, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (82, 3, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (83, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (84, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (8, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (11, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (23, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (85, 3, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (86, 3, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (87, 3, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (88, 3, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (89, 3, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (26, 3, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (7, 3, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (90, 3, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (91, 3, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (92, 3, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (25, 3, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (24, 3, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (93, 3, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (14, 3, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (37, 3, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (94, 3, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (95, 3, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (96, 3, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (97, 3, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (98, 3, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (21, 3, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (99, 3, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (100, 3, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (101, 3, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (33, 3, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (29, 3, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (102, 3, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (28, 3, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (103, 4, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (43, 4, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (104, 4, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (105, 4, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (106, 4, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (107, 4, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (5, 4, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (7, 4, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (108, 4, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (109, 4, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (110, 4, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (111, 4, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (47, 4, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (51, 4, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (112, 4, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (14, 4, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (113, 4, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (114, 4, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (115, 4, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (116, 4, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (117, 4, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (118, 4, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (21, 4, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (119, 4, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (57, 4, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (120, 4, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (58, 4, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (121, 4, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (122, 4, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (28, 4, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (123, 4, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (124, 4, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (15, 4, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (125, 4, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (126, 4, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (127, 4, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (56, 4, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (35, 4, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (128, 4, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (129, 4, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (130, 4, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (131, 4, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (132, 4, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (61, 4, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (42, 4, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (133, 5, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (134, 5, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (135, 5, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (136, 5, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (137, 5, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (138, 5, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (5, 5, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (56, 5, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (7, 5, 1);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (139, 5, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (140, 5, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (141, 5, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (142, 5, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (143, 5, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (61, 5, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (14, 5, 2);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (144, 5, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (145, 5, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (146, 5, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (147, 5, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (148, 5, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (149, 5, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (150, 5, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (21, 5, 3);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (151, 5, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (152, 5, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (153, 5, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (154, 5, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (47, 5, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (155, 5, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (28, 5, 4);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (156, 5, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (157, 5, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (158, 5, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (159, 5, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (160, 5, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (161, 5, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (35, 5, 5);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (162, 5, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (163, 5, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (164, 5, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (165, 5, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (166, 5, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (167, 5, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (168, 5, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (169, 5, 6);

INSERT INTO DISCIPLINA_CURSO (id_disciplina, id_curso, id_ciclo_disciplina_curso)
VALUES (42, 5, 6);


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

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (9, 'Lucas Almeida Ferreira', '12345678909', 'lucas.ferreira@fatec.edu.br', 'Redes de Computadores', TO_DATE('2019-02-18', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (10, 'Patricia Mendes Silva', '12345678910', 'patricia.silva@fatec.edu.br', 'Gestão de Projetos', TO_DATE('2021-07-05', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (11, 'Roberto César Nogueira', '12345678911', 'roberto.nogueira@fatec.edu.br', 'Segurança da Informação', TO_DATE('2018-04-22', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (12, 'Tatiane Ribeiro Costa', '12345678912', 'tatiane.costa@fatec.edu.br', 'Inteligência Artificial', TO_DATE('2022-01-10', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (13, 'Eduardo Viana Lopes', '12345678913', 'eduardo.lopes@fatec.edu.br', 'Desenvolvimento Web', TO_DATE('2020-08-14', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (14, 'Simone Cristina Prado', '12345678914', 'simone.prado@fatec.edu.br', 'Matemática Aplicada', TO_DATE('2017-03-27', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (15, 'Marcelo Augusto Teixeira', '12345678915', 'marcelo.teixeira@fatec.edu.br', 'Sistemas Operacionais', TO_DATE('2016-09-12', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (16, 'Vanessa Cardoso Almeida', '12345678916', 'vanessa.almeida@fatec.edu.br', 'Qualidade de Software', TO_DATE('2023-02-06', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (17, 'Bruno Henrique Moraes', '12345678917', 'bruno.moraes@fatec.edu.br', 'Computação Cognitiva', TO_DATE('2021-11-01', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (18, 'Renata Figueiredo Campos', '12345678918', 'renata.campos@fatec.edu.br', 'Empreendedorismo e Inovação', TO_DATE('2019-06-03', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (19, 'Gustavo Pereira Batista', '12345678919', 'gustavo.batista@fatec.edu.br', 'Arquitetura de Computadores', TO_DATE('2018-10-16', 'YYYY-MM-DD'));

INSERT INTO PROFESSOR (id_professor, nm_professor, cpf_professor, nm_email_professor, nm_especialidade_professor, dt_admissao_professor)
VALUES (20, 'Aline Martins Gonçalves', '12345678920', 'aline.goncalves@fatec.edu.br', 'Estatística Aplicada', TO_DATE('2020-05-25', 'YYYY-MM-DD'));
