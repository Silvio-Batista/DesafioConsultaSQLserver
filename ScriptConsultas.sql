/* Primeiro Pesquisa */
select Nome, Ano 
from Filmes
/* Segundo Pesquisa */
Select Nome, Ano 
From Filmes order by Ano
/* Terceiro Pesquisa*/
Select Nome, Ano, Duracao 
from filmes 
where Nome = 'De volta para o Futuro' and Ano = 1985
/*Quarto Pesquisa */
Select Nome, Ano, Duracao 
from filmes 
where Ano = 1997
/*Quinta Pesquisa */
Select Nome, Ano, Duracao 
from filmes 
where ano > 2000
/*Sexta Pesquisa */
Select Nome, Ano, Duracao 
from filmes 
where duracao > 100 and duracao < 150 
order by duracao
/*Setima Pesquisa */
Select Ano, count (Ano) Quantidade 
from Filmes 
group by Ano 
order by Quantidade desc
/*Oitava Pesquisa */
select PrimeiroNome, UltimoNome, Genero 
from Atores 
where genero like 'M%'
/*Nona Pesquisa */
select PrimeiroNome, UltimoNome, Genero 
from Atores 
where genero like 'F%'
order by PrimeiroNome
/*Décima Pesquisa */
Select F.Nome, G.genero
from Filmes F
inner join FilmesGenero 
on F.id = FilmesGenero.IdFilme
inner join  Generos G
on G.Id = FilmesGenero.IdGenero
/*Décima primeira Pesquisa */
Select F.Nome, G.genero
from Filmes F
inner join FilmesGenero 
on F.id = FilmesGenero.IdFilme
inner join  Generos G
on G.Id = FilmesGenero.IdGenero
where genero = 'Mistério'
/*Décima segunda Pesquisa */
Select F.Nome, A.PrimeiroNome, A.UltimoNome, E.papel
from Filmes F
inner join ElencoFilme E
on F.Id = E.IdFilme
inner join Atores A
on E.IdAtor = A.Id
