CREATE DATABASE bdEscola

USE bdEscola

CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso VARCHAR (10) NOT NULL
	, cargaHorariaCurso INT NOT NULL
	, valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	, nomeAluno VARCHAR (80) NOT NULL
	, dataNascimentoAluno SMALLDATETIME NOT NULL
	, rgAluno VARCHAR (12) NOT NULL
	, naturalidadeAluno VARCHAR (2) NOT NULL
)

CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	, nomeTurma VARCHAR (4) NOT NULL
	, idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	, horarioTurma SMALLDATETIME NOT NULL
)

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	, idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
)