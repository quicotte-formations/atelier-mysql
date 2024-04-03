CREATE OR REPLACE DATABASE solution_streaming;
USE solution_streaming;-- pour se placer dans la DB
CREATE TABLE pays
(
    id  INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(32) NOT NULL UNIQUE
);

CREATE TABLE genre
(
    id  INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(32) NOT NULL UNIQUE
);

CREATE TABLE casting
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    prenom VARCHAR(20) NOT NULL,
    nom    VARCHAR(20) NOT NULL
);
CREATE UNIQUE INDEX uq_prenom_nom ON casting (prenom, nom);

CREATE TABLE film
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    titre          VARCHAR(50) NOT NULL UNIQUE,
    duree          TIME,
    date_sortie    DATE,
    descriptif     TEXT,
    pays_id        INT NOT NULL,
    genre_id       INT NOT NULL,
    realisateur_id INT NOT NULL,
    FOREIGN KEY (pays_id) REFERENCES pays (id),
    FOREIGN KEY (genre_id) REFERENCES genre (id),
    FOREIGN KEY (realisateur_id) REFERENCES casting (id)
);

CREATE TABLE acteur_film
(
    casting_id INT NOT NULL,
    film_id    INT NOT NULL,
    FOREIGN KEY (casting_id) REFERENCES casting (id) ON DELETE CASCADE,
    FOREIGN KEY (film_id) REFERENCES film (id) ON DELETE CASCADE
);
