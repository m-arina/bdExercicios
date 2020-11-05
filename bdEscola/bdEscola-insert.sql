USE bdEscola

INSERT INTO tbCurso(nomeCurso, cargaHorariaCurso, valorCurso)
	VALUES ('Inglês', 2000, 356.00)
	, ('Alemão', 3000, 478.00)

SELECT * FROM tbCurso


INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
	VALUES ('Paulo Santos', '03/10/2000', '82.292.122-0', 'SP')
	, ('Maria da Gloria', '10/03/1999', '45.233.123-0', 'SP')
	, ('Perla Nogueira Silva', '04/04/1998', '23.533.211-9', 'SP')
	, ('Gilson Barros Silva', '09/09/1995', '34.221.211-x', 'PE')
	, ('Mariana Barbosa Santos', '10/10/2001', '54.222.122-9', 'RJ')

SELECT * FROM tbAluno


INSERT INTO tbTurma(nomeTurma, idCurso, horarioTurma)
	VALUES