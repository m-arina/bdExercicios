USE bdEscola

-- Listar o nome, rg e data de anivers�rio dos alunos nascidos em SP
SELECT nomeAluno as 'Nome do Aluno', rgAluno as 'RG do Aluno', dataNascimentoAluno as 'Data de Nascimento', naturalidadeAluno as 'Naturalidade do Aluno' FROM tbAluno
WHERE naturalidadeAluno = 'SP'


-- Listar o nome e o rg dos alunos com o nome come�ado com P
SELECT  nomeAluno as 'Nome do Aluno', rgAluno as 'RG do Aluno' FROM tbAluno
WHERE nomeAluno LIKE 'P%'


-- Listar o nome dos cursos cuja carga hor�ria seja superior a 2000 horas
SELECT nomeCurso as 'Cursos', cargaHorariaCurso as 'Carga Hor�ria' FROM tbCurso
WHERE cargaHorariaCurso >2000


-- Listar o nome e o rg de todos os alunos que possuem o sobrenome Silva
SELECT nomeAluno as 'Nome do Aluno', rgAluno as 'RG do Aluno'FROM tbAluno
WHERE nomeAluno LIKE '%SI%'


-- Listar o nome dos alunos e a data de nascimento que fazem anivers�rio em mar�o
SELECT nomeAluno as 'Nome do Aluno', dataNascimentoAluno as 'Data de Nascimento' FROM tbAluno
WHERE datepart(month, dataNascimentoAluno) = 3


-- Listar o c�digo dos alunos e a data de matr�cula dos alunos matriculados em maio de qualquer ano
SELECT idAluno as 'C�digo do Aluno', dataMatricula as 'M�s de Matr�cula' FROM tbMatricula
WHERE datepart(month, dataMatricula) = 5


-- Listar o c�digo dos alunos matriculados no curso de ingl�s
SELECT idAluno as 'C�digo do Aluno matriculado no curso de ingl�s' FROM tbMatricula
WHERE idTurma IN (1,2) 


-- Listar o c�digo dos alunos matriculados na turma 1AA
SELECT idAluno as 'C�digo do Aluno matriculado na turma 1AA' FROM tbMatricula
WHERE idTurma IN (3)


-- Listar todos os dados de todos os alunos
SELECT idAluno as 'C�digo do Aluno', nomeAluno as 'Nome do Aluno', dataNascimentoAluno as 'Data de Nascimento', rgAluno as 'RG do aluno', naturalidadeAluno as 'Naturalidade do aluno' FROM tbAluno


-- Listar todos os dados de todas as turmas
SELECT idTurma as 'C�digo da Turma', nomeTurma as 'Nome da Turma', idCurso as 'Curso', horarioTurma as 'Hor�rio da Turma' FROM tbTurma