CREATE DATABASE db_generation_game_on;

USE db_generation_game_on;

CREATE TABLE tb_classe (
	id_da_classe BIGINT AUTO_INCREMENT, 
    vilao VARCHAR (50),
    heroi VARCHAR (50),
    poderoso BOOLEAN,
    
    PRIMARY KEY (id_da_classe)
);

CREATE TABLE tb_personagem (
	id_do_personagem BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    ataque FLOAT NOT NULL,
    defesa FLOAT NOT NULL,
    origem VARCHAR(50) NOT NULL, -- Nome do game
    fk_personagem BIGINT,
    
    PRIMARY KEY (id_do_personagem),
    FOREIGN KEY (fk_personagem) REFERENCES tb_classe (id_da_classe)
);


SELECT * FROM tb_classe;
SELECT * FROM tb_personagem;

INSERT INTO tb_classe (vilao, heroi, poderoso) VALUES
-- VILOES 
("Matou pessoas e roubou", "O Batman", FALSE), -- Coringa
("Mata e manipula pessoas para fazer o ela quer.", "Etham Winters", TRUE), -- Evelyne
("Prende a namorada do cara.", "Super Mario", TRUE), -- Bowser
-- HEROIS
("Trindade", "Explora tumbas e salva a humanidade.", TRUE), -- Lara Croft
("Hades", "Explora o mundo atrás de respostas.",TRUE), -- Aloy
("O mundo pós apocalíptico", "Atravessa cidades em busca da cura." , TRUE), -- Ellie
("Rafe Adler", "Escala montanha e combate viloes" , FALSE), -- Ellie
("Seu dom", "Volta no tempo",TRUE); -- Aloy


INSERT INTO tb_personagem (nome, ataque, defesa, origem, fk_personagem) VALUES
-- VILOES
("Coringa", 1000, 1380, "O Batman", 1), 
("Evelyne", 3000, 2000, "Resident Evil 7", 2),
("Bowser", 1000, 1390, "Super Mario", 3),
-- HEROIS
("Lara Croft", 2900, 3000, "Shadow of the Tomb Raider", 4),
("Aloy", 4000, 3900, "Horizon Zero Down", 5),
("Ellie", 3000, 3000, "The Last Of Us", 6),
("Nathan Drack", 2000, 1200, "Uncharted", 7),
("Maxine Caulfield", 4000, 1000, "Life is Strange", 8);

SELECT * FROM tb_personagem where ataque > 2000;
SELECT * FROM tb_personagem where defesa >= 1000 and defesa <= 2000;
SELECT * FROM tb_personagem where nome like "%c%";

SELECT * FROM tb_classe
	INNER JOIN tb_personagem on tb_personagem.fk_personagem = tb_classe.id_da_classe;
    
SELECT nome, origem FROM tb_classe 
	INNER JOIN tb_personagem on tb_personagem.fk_personagem = tb_classe.id_da_classe WHERE poderoso = TRUE;






