# PROJETO EM GRUPO MÓDULO 4
 
⇨ GRUPO 4 
- Gustavo Resende
- Isadora Grigório
- Letícia Costa
- Rafaela Guimarães
- Regiane Marinho
- Yuri Rodrigues
------------------------------------


CONTEXTO ⇨ Temos um problema e precisaremos da sua ajuda para resolver! Acumulamos alguns conjuntos de dados e não conseguimos ter uma visão padronizada desses dados. O conjunto de dados disponíveis podem ser encontrados aqui:https://drive.google.com/drive/folders/1F9Rwbzzz4LJCxZU-mTR4JqDT_2vJ7-sC?usp=sharing.


⇨ Nesse projeto você e sua squad deverão montar um dashboard com base no conjunto de dados escolhidos por vocês, a fim de realizar uma apresentação com a exploração dos dados.


⇨ A partir dos dados fornecidos optamos por utilizar a tabela GOT_episodes_v4.cvs que apresenta dados sobre os episódios e temporadas da série Game of Thrones. Durante o Brainstorm sobre perguntas que podem ser respondidas pelos dados selecionamos as seguintes perguntas: 
<br/>


- PERGUNTAS!

⇨ Quais personagens estrelaram na temporada 1?
> Eddard "Ned" Stark (ator: Sean Bean)
> Nicolaj Coster 
> Mark Addy <br/> <br/>
> 	SELECT Season AS Temporada, <br/>
    Episode AS Episodios, <br/>
    Title AS Titulo, <br/>
    Star_1 AS Ator_Atriz, <br/>
    Star_2 AS Ator_Atriz, <br/>
    Star_3 AS Ator_Atriz <br/>
	FROM episodios <br/>
    WHERE Season = 1; <br/>
--------------------------
 <br/>

⇨ Qual episódio com a maior avaliação dos critico?
> 1° lugar ( The Long Night ), temporada 8 - episódio 3 - pontuação 7,1 <br/> <br/>
> 	SELECT Season AS Temporada, <br/>
	Episode AS Episódio, <br/>
	Title AS Título, <br/>
	Critics_reviews AS Avaliação <br/>
    FROM episodios <br/>
    WHERE Critics_reviews = (SELECT MAX(Critics_reviews) FROM episodios); <br/>
-----------------------
 <br/> <br/>
⇨ Qual a quantidade de episódios por temporadas?
> Temporada 1 - 10 episódios.  <br/>
> Temporada 2 - 10 episódios.  <br/>
> Temporada 3 - 10 episódios.  <br/>
> Temporada 4 - 10 episódios.  <br/>
> Temporada 5 - 10 episódios.  <br/>
> Temporada 6 - 10 episódios.  <br/>
> Temporada 7 - 07 episódios.  <br/>
> Temporada 8 - 06 episódios. <br/> <br/>
> 	SELECT DISTINCT Season AS Tempora, <br/>
COUNT(Episode) AS Quantidades_de_episódios FROM episodios GROUP BY Season;
---------------------------
 <br/>

⇨ Qual foi a melhor temporada e a pior?
> A melhor foi a temporada 4 nota 95,5.
> A pior foi a temporada 8 nota 64,5.<br/> <br/>
>	SELECT Season AS Temporada, <br/>
	Episode AS Episódio, <br/>
	Title AS Título, <br/>
	Rating AS Avaliação <br/>
    FROM episodios <br/>
    WHERE Rating = (SELECT MAX(Rating) FROM episodios); <br/>
    
>	SELECT Season AS Temporada, <br/>
	Episode AS Episódio, <br/>
	Title AS Título, <br/>
	Rating AS Avaliação <br/>
    FROM episodios <br/>
    WHERE Rating = (SELECT MIN(Rating) FROM episodios); <br/>
-------------------------
 <br/>

⇨ Qual episodio tem mais visibilidade?
> "The Iron Throne" 13.1 de pontuação. <br/> <br/>
> SELECT Season AS Temporada, <br/>
    Episode AS Episódio, <br/>
    Title AS Título, <br/>
    Views AS Visualizações <br/>
    FROM episodios <br/>
    WHERE Views = (SELECT MAX(Views) FROM episodios); <br/>
--------------------------
 <br/> 

⇨ Qual episódios com maior duração?
> 8° temporada -  episódio 3 , duração 1h e 22min <br/> <br/>
> SELECT Season AS Temporada, <br/>
    Episode AS Episódio, <br/>
    Title AS Título, <br/>
    Duration as Duração <br/>
    FROM episodios <br/>
    WHERE Duration = (SELECT MAX(Duration) FROM episodios); <br/>

-----------------------
- DASHBOARD  <br/> <br/>
⇨ ![texto](./Dashboard.png)






