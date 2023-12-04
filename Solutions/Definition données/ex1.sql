drop table if exists commande_produit;
drop table if exists commande ;
drop table if exists client;
drop table if exists produit;
drop table if exists client;
drop table if exists categorie;

create table client(
                       id BIGINT PRIMARY KEY AUTO_INCREMENT,
                       pseudo VARCHAR(32),
                       mdp VARCHAR(32)
);

create table commande(
                         id BIGINT PRIMARY KEY AUTO_INCREMENT,
                         date_heure_creatio timestamp,
                         prix_total float,
                         etat varchar(10),
                         client_id BIGINT
);

create table commande_produit(
                                 commande_id BIGINT,
                                 produit_id BIGINT
);

create table produit(
                        id BIGINT PRIMARY KEY AUTO_INCREMENT,
                        nom varchar(32),
                        prix float,
                        categori_id BIGINT
)

create table categorie(
                          id BIGINT PRIMARY KEY AUTO_INCREMENT,
                          nom varchar(32)
);

ALTER TABLE client ADD UNIQUE (pseudo);
ALTER TABLE commande ADD CONSTRAINT FOREIGN KEY (client_id) REFERENCES client(id);
ALTER TABLE commande_produit ADD CONSTRAINT FOREIGN KEY (commande_id) REFERENCES commande(id);
ALTER TABLE commande_produit ADD CONSTRAINT FOREIGN KEY (produit_id) REFERENCES produit(id);
ALTER TABLE produit ADD CONSTRAINT FOREIGN KEY (categori_id) REFERENCES categorie(id);
ALTER TABLE categorie ADD UNIQUE (nom);
