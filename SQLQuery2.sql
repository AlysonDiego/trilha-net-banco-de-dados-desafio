--1
SELECT Nome, Ano FROM Filmes
--2
SELECT Nome, Ano, Duracao 
FROM Filmes
ORDER BY Ano ASC;
--3
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Nome = 'De volta para o futuro'
--4
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano = 1997
--5
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano > 2000
--6
SELECT	Nome ,Ano, Duracao 
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC
--7
SELECT Ano, COUNT(Nome) AS Quantidade_Filmes, MAX(Duracao) AS Duracao_Maxima
FROM Filmes
GROUP BY Ano
ORDER BY Duracao_Maxima DESC;
--8
SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'M'
--9
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--10
SELECT F.Nome AS Filme, G.Genero AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;
--11
SELECT F.Nome AS Filme, G.Genero AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Id = 10;
--12
SELECT F.Nome AS Filme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON EF.IdAtor = A.Id;




