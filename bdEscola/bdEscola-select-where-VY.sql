USE bdEscola

-- Listar o nome, rg e data de aniversário dos alunos nascidos em SP
SELECT nomeAluno as 'Nome do Aluno', rgAluno as 'RG do Aluno', dataNascimentoAluno as 'Data de Nascimento', naturalidadeAluno as 'Naturalidade do Aluno' FROM tbAluno
WHERE naturalidadeAluno = 'SP'


-- Listar o nome e o rg dos alunos com o nome começado com P
SELECT  nomeAluno as 'Nome do Aluno', rgAluno as 'RG do Aluno' FROM tbAluno
WHERE nomeAluno LIKE 'P%'


-- Listar o nome dos cursos cuja carga horária seja superior a 2000 horas
SELECT nomeCurso as 'Cursos', cargaHorariaCurso as 'Carga Horária' FROM tbCurso
WHERE cargaHorariaCurso >2000


-- Listar o nome e o rg de todos os alunos que possuem o sobrenome Silva
SELECT nomeAluno as 'Nome do Aluno', rgAluno as 'RG do Aluno'FROM tbAluno
WHERE nomeAluno LIKE '%SI%'


-- Listar o nome dos alunos e a data de nascimento que fazem aniversário em março
SELECT nomeAluno as 'Nome do Aluno', dataNascimentoAluno as 'Data de Nascimento' FROM tbAluno
WHERE datepart(month, dataNascimentoAluno) = 3


-- Listar o código dos alunos e a data de matrícula dos alunos matriculados em maio de qualquer ano
SELECT idAluno as 'Código do Aluno', dataMatricula as 'Mês de Matrícula' FROM tbMatricula
WHERE datepart(month, dataMatricula) = 5


-- Listar o código dos alunos matriculados no curso de inglês
SELECT idAluno as 'Código do Aluno matriculado no curso de inglês' FROM tbMatricula
WHERE idTurma IN (1,2) 


-- Listar o código dos alunos matriculados na turma 1AA
SELECT idAluno as 'Código do Aluno matriculado na turma 1AA' FROM tbMatricula
WHERE idTurma IN (3)


-- Listar todos os dados de todos os alunos
SELECT idAluno as 'Código do Aluno', nomeAluno as 'Nome do Aluno', dataNascimentoAluno as 'Data de Nascimento', rgAluno as 'RG do aluno', naturalidadeAluno as 'Naturalidade do aluno' FROM tbAluno


-- Listar todos os dados de todas as turmas
SELECT idTurma as 'Código da Turma', nomeTurma as 'Nome da Turma', idCurso as 'Curso', horarioTurma as 'Horário da Turma' FROM tbTurma