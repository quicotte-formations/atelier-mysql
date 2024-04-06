DROP DATABASE IF EXISTS jeu_echecs;
CREATE DATABASE jeu_echecs;
USE jeu_echecs;

CREATE TABLE joueur
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    pseudo VARCHAR(20) NOT NULL UNIQUE,
    mdp    VARCHAR(20) NOT NULL
);

CREATE TABLE partie
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    etat            VARCHAR(10) NOT NULL,
    joueur_blanc_id INT         NOT NULL,
    joueur_noir_id  INT         NOT NULL,
    FOREIGN KEY (joueur_blanc_id) REFERENCES joueur (id),
    FOREIGN KEY (joueur_noir_id) REFERENCES joueur (id)
);

CREATE TABLE mouvement
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    pos_depart  CHAR(2) NOT NULL,
    pos_arrivee CHAR(2) NOT NULL,
    partie_id   INT     NOT NULL,
    ordre       INT     NOT NULL,
    FOREIGN KEY (partie_id) REFERENCES partie (id)
);
