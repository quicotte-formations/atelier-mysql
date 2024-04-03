DROP DATABASE IF EXISTS billetterie;
CREATE DATABASE billetterie;
USE billetterie;

CREATE TABLE style
(
    id  INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE artiste
(
    id  INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE concert
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    nom          VARCHAR(100) NOT NULL UNIQUE,
    date_concert DATETIME     NOT NULL,
    lieu         VARCHAR(255) NOT NULL
);

CREATE TABLE client
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    nom    VARCHAR(50)  NOT NULL,
    prenom VARCHAR(50)  NOT NULL,
    email  VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE commande
(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    client_id     INT            NOT NULL,
    date_commande DATETIME       NOT NULL,
    montant_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (client_id) REFERENCES client (id)
);

CREATE TABLE ticket
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    concert_id INT            NOT NULL,
    prix       DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (concert_id) REFERENCES concert (id)
);

CREATE TABLE style_artiste
(
    style_id   INT NOT NULL,
    artiste_id INT NOT NULL,
    FOREIGN KEY (style_id) REFERENCES style (id),
    FOREIGN KEY (artiste_id) REFERENCES artiste (id)
);

CREATE TABLE artiste_concert
(
    artiste_id INT NOT NULL,
    concert_id INT NOT NULL,
    FOREIGN KEY (artiste_id) REFERENCES artiste (id),
    FOREIGN KEY (concert_id) REFERENCES concert (id)
);

CREATE TABLE commande_ticket
(
    commande_id INT NOT NULL,
    ticket_id   INT NOT NULL,
    FOREIGN KEY (commande_id) REFERENCES commande (id),
    FOREIGN KEY (ticket_id) REFERENCES ticket (id)
);
