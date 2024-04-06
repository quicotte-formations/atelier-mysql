DROP DATABASE IF EXISTS librairie;
CREATE DATABASE librairie;
USE librairie;

CREATE TABLE auteur
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    prenom VARCHAR(20) NOT NULL UNIQUE,
    nom    VARCHAR(20) NOT NULL UNIQUE
);
CREATE UNIQUE INDEX idx_nom_prenom ON auteur (nom, prenom);

CREATE TABLE editeur
(
    id  INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE genre
(
    id  INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE collection
(
    id  INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE livre
(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    titre         VARCHAR(40) NOT NULL UNIQUE,
    prix          FLOAT       NOT NULL,
    isbn          VARCHAR(20) NOT NULL UNIQUE,
    editeur_id    INT         NOT NULL,
    collection_id INT,
    genre_id      INT         NOT NULL,
    FOREIGN KEY (editeur_id) REFERENCES editeur (id),
    FOREIGN KEY (collection_id) REFERENCES collection (id),
    FOREIGN KEY (genre_id) REFERENCES genre (id)
);

CREATE TABLE auteur_livre
(
    auteur_id INT NOT NULL,
    livre_id  INT NOT NULL,
    FOREIGN KEY (auteur_id) REFERENCES auteur (id),
    FOREIGN KEY (livre_id) REFERENCES livre (id)
);
