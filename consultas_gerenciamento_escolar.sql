-- criar tabela de alunos

CREATE TABLE tabela_alunos (
  id_aluno INT PRIMARY KEY,
  nome_aluno VARCHAR(255),
  data_nascimento DATE,
  genero VARCHAR(50),
  endereco VARCHAR(255),
  telefone_contato VARCHAR(30),
  email VARCHAR(254)
);

-- criar tabela de professores

CREATE TABLE tabela_professores (
  id_professor INT PRIMARY KEY,
  nome_professor VARCHAR(255),
  data_nascimento DATE,
  genero VARCHAR(50),
  telefone_contato VARCHAR(30),
  email VARCHAR(254)
);

-- criar tabela de disciplinas

CREATE TABLE tabela_disciplinas (
  id_disciplina INT PRIMARY KEY,
  nome_disciplina VARCHAR(255),
  descricao TEXT,
  carga_horaria INT,
  id_professor INT,
  FOREIGN KEY (id_professor) REFERENCES tabela_professores(id_professor)
);

-- criar tabela de turmas

CREATE TABLE tabela_turmas (
  id_turma INT PRIMARY KEY,
  nome_turma VARCHAR(255),
  ano_letivo INT,
  id_professor_orientador INT,
  FOREIGN KEY (id_professor_orientador) REFERENCES tabela_professores(id_professor)
);

-- criar tabela de relacionamento turma-disciplinas

CREATE TABLE tabela_turma_disciplinas (
  id_turma INT,
  id_disciplina INT,
  PRIMARY KEY (id_turma, id_disciplina),
  FOREIGN KEY (id_turma) REFERENCES tabela_turmas(id_turma)
  FOREIGN KEY (id_disciplina) REFERENCES tabela_disciplinas(id_disciplina)
);

-- criar tabela de relacionamento turma-alunos

CREATE TABLE tabela_turma_alunos (
  id_turma INT,
  id_aluno INT,
  PRIMARY KEY (id_turma, id_aluno),
  FOREIGN KEY (id_turma) REFERENCES tabela_turmas(id_turma)
  FOREIGN KEY (id_aluno) REFERENCES tabela_alunos(id_aluno)
);

-- criar tabela de notas

CREATE TABLE tabela_notas (
  id_nota INT PRIMARY KEY,
  id_aluno INT,
  id_disciplina INT,
  valor_nota DECIMAL,
  data_avaliacao DATE
);

-- inserir dados na tabela de alunos

INSERT INTO tabela_alunos (
  id_aluno,
  nome_aluno,
  data_nascimento,
  genero,
  endereco,
  telefone_contato,
  email
)

VALUES

(1,'João Silva','2005-03-15','Masculino','Rua das Flores, 123','(11) 9876-5432','joao@email.com'),
(2,'Maria Santos','2006-06-20','Feminino','Avenida Principal, 456','(11) 8765-4321','maria@email.com'),
(3,'Pedro Soares','2004-01-10','Masculino','Rua Central, 789','(11) 7654-3210','pedro@email.com'),
(4,'Ana Lima','2005-04-02','Feminino','Rua da Escola, 56','(11) 8765-4321','ana@email.com'),
(5,'Mariana Fernandes','2005-08-12','Feminino','Avenida da Paz, 789','(11) 5678-1234','mariana@email.com'),
(6,'Lucas Costa','2003-11-25','Masculino','Rua Principal, 456','(11) 1234-5678','lucas@email.com'),
(7,'Isabela Santos','2006-09-10','Feminino','Rua da Amizade, 789','(11) 9876-5432','isabela@email.com'),
(8,'Gustavo Pereira','2004-05-15','Masculino','Avenida dos Sonhos, 123','(11) 7654-3210','gustavo@email.com'),
(9,'Carolina Oliveira','2005-02-20','Feminino','Rua da Alegria, 456','(11) 8765-4321','carolina@email.com'),
(10,'Daniel Silva','2003-10-05','Masculino','Avenida Central, 789','(11) 1234-5678','daniel@email.com'),
(11,'Larissa Souza','2004-12-08','Feminino','Rua da Felicidade, 123','(11) 9876-5432','larissa@email.com'),
(12,'Bruno Costa','2005-07-30','Masculino','Avenida Principal, 456','(11) 7654-3210','bruno@email.com'),
(13,'Camila Rodrigues','2006-03-22','Feminino','Rua das Estrelas, 789','(11) 8765-4321','camila@email.com'),
(14,'Rafael Fernandes','2004-11-18','Masculino','Avenida dos Sonhos, 123','(11) 1234-5678','rafael@email.com'),
(15,'Letícia Oliveira','2005-01-05','Feminino','Rua da Alegria, 456','(11) 9876-5432','leticia@email.com'),
(16,'Fernanda Lima','2004-02-12','Feminino','Rua da Esperança, 789','(11) 4567-8901','fernanda@email.com'),
(17,'Vinícius Santos','2003-07-28','Masculino','Avenida da Amizade, 123','(11) 8901-2345','vinicius@email.com'),
(18,'Juliana Pereira','2006-09-01','Feminino','Rua das Rosas, 789','(11) 3456-7890','juliana@email.com');

-- inserir dados na tabela de disciplinas

INSERT INTO tabela_disciplinas (
  id_disciplina,
  nome_disciplina,
  descricao,
  carga_horaria,
  id_professor
)

VALUES

(1,'Matemática','Estudo de conceitos matemáticos avançados',60,1),
(2,'História','História mundial e local',45,2),
(3,'Física','Princípios fundamentais da física',60,1),
(4,'Química','Estudo da química e suas aplicações',45,3),
(5,'Inglês','Aulas de inglês para iniciantes',45,4),
(6,'Artes','Exploração da criatividade artística',30,5);

-- inserir dados na tabela de notas

INSERT INTO tabela_notas (
  id_nota,
  id_aluno,
  id_disciplina,
  valor_nota,
  data_avaliacao
)

VALUES

(2,1,1,6.19,'7/7/2023'),
(3,1,2,7.18,'7/7/2023'),
(4,1,3,7.47,'7/7/2023'),
(5,1,4,7.46,'7/7/2023'),
(6,1,5,4.35,'7/7/2023'),
(7,1,6,4.43,'7/7/2023'),
(8,1,7,0.76,'7/7/2023'),
(9,1,8,9.22,'7/7/2023'),
(10,1,9,9.04,'7/7/2023'),
(11,1,10,3.28,'7/7/2023'),
(12,2,1,1.34,'7/9/2023'),
(13,2,2,3.1,'7/9/2023'),
(14,2,3,1.66,'7/9/2023'),
(15,2,4,0.03,'7/9/2023'),
(16,2,5,4.34,'7/9/2023'),
(17,2,6,4.02,'7/9/2023'),
(18,2,7,8.79,'7/9/2023'),
(19,2,8,1.17,'7/9/2023'),
(20,2,9,8.26,'7/9/2023'),
(21,2,10,3.41,'7/9/2023'),
(22,3,1,6.82,'7/27/2023'),
(23,3,2,8.21,'7/27/2023'),
(24,3,3,1.3,'7/27/2023'),
(25,3,4,4.01,'7/27/2023'),
(26,3,5,0.25,'7/27/2023'),
(27,3,6,6.63,'7/27/2023'),
(28,3,7,9.74,'7/27/2023'),
(29,3,8,3.77,'7/27/2023'),
(30,3,9,0.58,'7/27/2023'),
(31,3,10,8.52,'7/27/2023'),
(32,4,1,8.37,'8/8/2023'),
(33,4,2,0.26,'8/8/2023'),
(34,4,3,5.95,'8/8/2023'),
(35,4,4,6.98,'8/8/2023'),
(36,4,5,6.18,'8/8/2023'),
(37,4,6,4.79,'8/8/2023'),
(38,4,7,7.96,'8/8/2023'),
(39,4,8,0.62,'8/8/2023'),
(40,4,9,7.77,'8/8/2023'),
(41,4,10,5.81,'8/8/2023'),
(42,5,1,2.25,'8/15/2023'),
(43,5,2,5.82,'8/15/2023'),
(44,5,3,4.11,'8/15/2023'),
(45,5,4,7.99,'8/15/2023'),
(46,5,5,3.23,'8/15/2023'),
(47,5,6,8.09,'8/15/2023'),
(48,5,7,8.24,'8/15/2023'),
(49,5,8,3.33,'8/15/2023'),
(50,5,9,4.24,'8/15/2023'),
(51,5,10,0.11,'8/15/2023');

-- inserir dados na tabela de professores

INSERT INTO tabela_professores (
  id_professor,
  nome_professor,
  data_nascimento,
  genero,
  telefone_contato,
  email
)

VALUES

(1,'Ana Oliveira','1980-05-25','Feminino','(11) 1234-5678','ana@email.com'),
(2,'Carlos Ferreira','1975-09-12','Masculino','(11) 2345-6789','carlos@email.com'),
(3,'Mariana Santos','1982-03-15','Feminino','(11) 3456-7890','mariana@email.com'),
(4,'Ricardo Silva','1978-08-20','Masculino','(11) 7890-1234','ricardo@email.com'),
(5,'Fernanda Lima','1985-01-30','Feminino','(11) 4567-8901','fernanda@email.com');

-- inserir dados na tabela de turmas

INSERT INTO tabela_turmas (
  id_turma,
  nome_turma,
  ano_letivo,
  id_professor_orientador
)

VALUES

(1,'Turma A',2023,1),
(2,'Turma B',2023,2),
(3,'Turma C',2023,3),
(4,'Turma D',2023,4),
(5,'Turma E',2023,5);

-- inserir dados na tabela de turma-alunos

INSERT INTO tabela_turma_alunos (
  id_turma,
  id_aluno
)

VALUES

(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(1,6),
(2,7),
(3,8),
(4,9),
(5,10);

-- inserir dados na tabela de turma-disciplinas

INSERT INTO tabela_turma_disciplinas (
  id_turma,
  id_disciplina
)

VALUES

(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(1,3),
(2,1),
(3,2);

-- verificar se os dados foram importados corretamente em todas as tabelas

SELECT * FROM tabela_alunos
SELECT * FROM tabela_disciplinas
SELECT * FROM tabela_notas
SELECT * FROM tabela_professores
SELECT * FROM tabela_turmas
SELECT * FROM tabela_turma_alunos 
SELECT * FROM tabela_turma_disciplinas

-- retornar as informações de todos os alunos ordenados pelo nome

SELECT * FROM tabela_alunos ORDER BY nome_aluno;

-- retornar disciplinas que possuem carga horária maior que 40

SELECT id_disciplina, nome_disciplina, carga_horaria FROM tabela_disciplinas WHERE carga_horaria > 40;

-- buscar as notas maiores que 6 e menores que 8

SELECT valor_nota FROM tabela_notas WHERE valor_nota > 6 and valor_nota < 8;