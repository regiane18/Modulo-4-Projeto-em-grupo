CREATE DATABASE projeto4;
USE projeto4;

CREATE TABLE episodios (
	id INT NOT NULL AUTO_INCREMENT,
    Season INT NOT NULL,
    Episode INT NOT NULL,
	Title VARCHAR(512) NOT NULL,
	Rating DOUBLE NOT NULL,
	Star_1 VARCHAR(512) NOT NULL,
	Star_2 VARCHAR(512) NOT NULL,
	Star_3 VARCHAR(512) NOT NULL,
    Critics_reviews INT NOT NULL,
	Duration INT NOT NULL,
    Views DOUBLE NOT NULL,
    PRIMARY KEY(id)
);

-- Qual personagem estrelou na maior quantidade de episódios?
	SELECT Season AS Temporada, 
    Episode AS Episodios, 
    Title AS Titulo, 
    Star_1 AS Ator_Atriz, 
    Star_2 AS Ator_Atriz, 
    Star_3 AS Ator_Atriz
	FROM episodios
    WHERE Season = 1;

-- Qual episódios com maior duração?
	SELECT Season AS Temporada, 
    Episode AS Episódio, 
    Title AS Título, 
    Duration as Duração 
    FROM episodios 
    WHERE Duration = (SELECT MAX(Duration) FROM episodios);

-- Quais são os episódios com a maior avaliação dos critico?
	SELECT Season AS Temporada, 
	Episode AS Episódio, 
	Title AS Título, 
	Critics_reviews AS Avaliação
    FROM episodios
    WHERE Critics_reviews = (SELECT MAX(Critics_reviews) FROM episodios);
    
-- Quantidade de episódios por temporadas?
	SELECT DISTINCT Season AS Tempora, COUNT(Episode) AS Quantidades_de_episódios FROM episodios GROUP BY Season;
    
-- qual foi a melhor temporada e a pior?
	SELECT Season AS Temporada, 
	Episode AS Episódio, 
	Title AS Título, 
	Rating AS Avaliação
    FROM episodios
    WHERE Rating = (SELECT MAX(Rating) FROM episodios);
    
	SELECT Season AS Temporada, 
	Episode AS Episódio, 
	Title AS Título, 
	Rating AS Avaliação
    FROM episodios
    WHERE Rating = (SELECT MIN(Rating) FROM episodios);

-- qual episodio tem mais visibilidade?
	SELECT Season AS Temporada,
    Episode AS Episódio,
    Title AS Título,
    Views AS Visualizações
    FROM episodios
    WHERE Views = (SELECT MAX(Views) FROM episodios);