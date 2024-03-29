-- 1
-- Le nom des marques, triés par ordre alphabétique
SELECT nom
FROM marque
ORDER BY nom ASC;

-- 2
-- Le prénom et le nom des clients, triés par nom
SELECT prenom, nom
FROM client
ORDER BY nom, prenom;

-- 3
-- Les produits dont le prix est > que 100
SELECT *
FROM produit
WHERE prix > 100;

-- 4
-- Les produits dont le prix est compris entre 50 et 100 (BETWEEN)
SELECT nom, prix
FROM produit
WHERE prix BETWEEN 50 AND 100;

-- 5
-- Les marques contenant la lettre a en minuscules (LIKE)
SELECT nom
FROM marque
WHERE nom LIKE '%a%';

-- 6
-- Les catégories dont le nom se termine par un s
SELECT nom
FROM categorie
WHERE nom LIKE '%s';

-- 7
-- Les commandes payées du clients d’id 5
SELECT *
FROM commande
WHERE client_id = 5 AND etat = 'PAYEE';

-- 8
-- Les produits des catégories d’id 1,2,3 (IN)
SELECT *
FROM produit
WHERE categorie_id IN (1, 2, 3);

-- 9 Le nom et prénom des clients, et tous les champs de leur commande
SELECT  client.prenom, client.nom, commande.*
FROM    client
            JOIN commande ON client.id = commande.client_id;

-- 10 Les nom des produits et le nom de leur catégorie,
-- triés par nom de catégorie et nom de produit
SELECT  produit.nom AS NomProduit, categorie.nom AS NomCategorie
FROM    produit
            JOIN categorie ON produit.categorie_id = categorie.id
ORDER BY NomCategorie, NomProduit;

-- 11 Les produits de la catégorie Hauts, triés par nom de produit
SELECT  produit.nom
FROM    produit
            JOIN categorie ON produit.categorie_id = categorie.id
WHERE categorie.nom = 'Hauts'
ORDER BY produit.nom;

-- 12 Les produits de la catégorie Parfums et de la marque Chanèle,
-- triés par nom de produit
SELECT  produit.nom
FROM    produit
            JOIN categorie ON produit.categorie_id = categorie.id
            JOIN marque ON produit.marque_id = marque.id
WHERE categorie.nom = 'Parfums' AND marque.nom = 'Chanèle'
ORDER BY produit.nom;

-- 13 Le nom, le prix, la marque et la catégorie des produits
-- de la commande 45
SELECT  produit.nom, produit.prix, marque.nom AS NomMarque, categorie.nom AS NomCategorie
FROM    commande_produit
            JOIN produit ON commande_produit.produit_id = produit.id
            JOIN marque ON produit.marque_id = marque.id
            JOIN categorie ON produit.categorie_id = categorie.id
WHERE commande_produit.commande_id = 45;


-- 14 Les produits et la marque de commandes payées Angie Jolina,
-- triées par date de commande décroissante
SELECT  produit.nom AS NomProduit, marque.nom AS NomMarque, commande.date
FROM    commande
            JOIN client ON commande.client_id = client.id
            JOIN commande_produit ON commande.id = commande_produit.commande_id
            JOIN produit ON commande_produit.produit_id = produit.id
            JOIN marque ON produit.marque_id = marque.id
WHERE   client.prenom = 'Angie'
  AND client.nom = 'Jolina'
  AND commande.etat = 'PAYEE'
ORDER BY commande.date DESC;

-- 15 La marque commandée par Willie Smite,
-- pour la catégorie Chapeaux triées par ordre alphabétique
SELECT  DISTINCT marque.nom AS Marque
FROM    marque
            JOIN produit ON marque.id = produit.marque_id
            JOIN commande_produit ON produit.id = commande_produit.produit_id
            JOIN commande ON commande_produit.commande_id = commande.id
            JOIN client ON commande.client_id = client.id
            JOIN categorie ON produit.categorie_id = categorie.id
WHERE   client.nom = 'Smite'
  AND client.prenom = 'Willie'
  AND categorie.nom = 'Chapeaux'
ORDER BY Marque ASC;

-- 16 Tous les clients et leurs commandes, y compris ceux sans commandes
SELECT  client.nom, client.prenom, commande.*
FROM    client
            LEFT JOIN commande ON client.id = commande.client_id
ORDER BY commande.id;

-- 17 Tous les produits et leurs commandes, y compris ceux jamais commandés
SELECT  produit.nom AS NomProduit, commande.id AS IDCommande
FROM    produit
            LEFT JOIN commande_produit ON produit.id = commande_produit.produit_id
            LEFT JOIN commande ON commande_produit.commande_id = commande.id
ORDER BY commande.id;

-- 18 Le produit commandé à la fois par Scarla Johannsen et par Beyoncy
-- Requête pour Scarla Johannsen
SELECT  p.*
FROM    commande
            JOIN commande_produit ON commande.id = commande_produit.commande_id
            JOIN produit p on commande_produit.produit_id = p.id
            JOIN client ON commande.client_id = client.id
WHERE   client.nom = 'Johannsen'
  AND client.prenom = 'Scarla'
INTERSECT
-- Requête pour Beyoncy
SELECT  p.*
FROM    commande
            JOIN commande_produit ON commande.id = commande_produit.commande_id
            JOIN produit p on commande_produit.produit_id = p.id
            JOIN client ON commande.client_id = client.id
WHERE client.nom = 'Beyoncy';

-- 19 Les produits qui n’ont jamais été commandés par Brit Spiers
-- Tous les produits
SELECT  *
FROM    produit
EXCEPT
-- Produits commandés par Brit Spiers
SELECT  p.*
FROM    commande
            JOIN commande_produit ON commande.id = commande_produit.commande_id
            JOIN produit p on commande_produit.produit_id = p.id
            JOIN client ON commande.client_id = client.id
WHERE client.nom = 'Spiers' AND client.prenom = 'Brit';

-- 20 Les produits de la catégorie Bijoux et aussi les produits de la marque Prado
-- Produits de la catégorie Bijoux
SELECT  produit.*
FROM    produit
            JOIN categorie ON produit.categorie_id = categorie.id
WHERE categorie.nom = 'Bijoux'
UNION
-- Produits de la marque Prado
SELECT  produit.*
FROM    produit
            JOIN marque ON produit.marque_id = marque.id
WHERE marque.nom = 'Prado';

-- 21 Les marques commandées à la fois par Greg Clouni et Jon Deep, mais pas par Brad Petit
(
    -- Marques commandées par Greg Clouni
    SELECT  m.*
    FROM    commande
                JOIN commande_produit ON commande.id = commande_produit.commande_id
                JOIN produit ON commande_produit.produit_id = produit.id
                JOIN client ON commande.client_id = client.id
                JOIN marque m on produit.marque_id = m.id
    WHERE   client.nom = 'Clouni'
      AND client.prenom = 'Greg'

    INTERSECT
    -- Marques commandées par Jon Deep
    SELECT  m2.*
    FROM    commande
                JOIN commande_produit ON commande.id = commande_produit.commande_id
                JOIN produit ON commande_produit.produit_id = produit.id
                JOIN client ON commande.client_id = client.id
                JOIN marque m2 on produit.marque_id = m2.id
    WHERE client.nom = 'Deep' AND client.prenom = 'Jon')

EXCEPT
-- Marques commandées par Brad Petit
SELECT  m3.* FROM commande
                      JOIN commande_produit ON commande.id = commande_produit.commande_id
                      JOIN produit ON commande_produit.produit_id = produit.id
                      JOIN client ON commande.client_id = client.id
                      JOIN marque m3 on produit.marque_id = m3.id
WHERE   client.nom = 'Petit'
  AND client.prenom = 'Brad';

-- 22 Les clients ayant commandé dans la catégorie Bijoux mais jamais
-- dans la marque Gucci.
-- Ils doivent avoir également commandé des Parfums dans la marque Versaz
-- Clients ayant commandé Bijoux
(
    SELECT  client.*
    FROM    commande
                JOIN commande_produit ON commande.id = commande_produit.commande_id
                JOIN produit ON commande_produit.produit_id = produit.id
                JOIN categorie ON produit.categorie_id = categorie.id
                JOIN client ON commande.client_id = client.id
    WHERE   categorie.nom = 'Bijoux'

    EXCEPT

-- Clients ayant commandé des produits de la marque Gucci
    SELECT  client.*
    FROM    commande
                JOIN commande_produit ON commande.id = commande_produit.commande_id
                JOIN produit ON commande_produit.produit_id = produit.id
                JOIN marque ON produit.marque_id = marque.id
                JOIN client ON commande.client_id = client.id
    WHERE   marque.nom = 'Gucci'
)

INTERSECT

-- Clients ayant commandé des Parfums de la marque Versaz
SELECT  client.*
FROM    commande
            JOIN commande_produit ON commande.id = commande_produit.commande_id
            JOIN produit ON commande_produit.produit_id = produit.id
            JOIN categorie ON produit.categorie_id = categorie.id
            JOIN marque ON produit.marque_id = marque.id
            JOIN client ON commande.client_id = client.id
WHERE   categorie.nom = 'Parfums' AND
        marque.nom = 'Versaz';

-- 23 Le nombre total de catégories, produits, marques, clients
SELECT  (SELECT COUNT(*) FROM categorie) AS TotalCategories,
        (SELECT COUNT(*) FROM produit) AS TotalProduits,
        (SELECT COUNT(*) FROM marque) AS TotalMarques,
        (SELECT COUNT(*) FROM client) AS TotalClients;

-- 24 Les clients n’ayant pas passé de commandes
SELECT  *
FROM    client c
WHERE   c.id NOT IN (
    SELECT  com.client_id
    FROM    commande com
);

-- 25 Pour chaque marque, afficher le prix moyen de ses produits
SELECT  m.nom,
        (SELECT  AVG(p.prix)
         FROM    produit p
         WHERE   p.marque_id = m.id) AS PrixMoyen
FROM    marque m;


-- 26 Le produit le plus cher de chaque catégorie
SELECT  c.nom AS Categorie, p.nom AS NomProduit, MAX(p.prix) AS PrixMax
FROM    produit p
            JOIN categorie c ON p.categorie_id = c.id
WHERE p.prix IN (
    SELECT  MAX(p2.prix)
    FROM    produit p2
    WHERE   p2.categorie_id = p.categorie_id
)
GROUP BY c.nom, p.nom
ORDER BY c.nom, PrixMax DESC;

-- 27 Le nombre de produits de chaque marque, trié en ordre décroissant
SELECT  marque.nom, COUNT(produit.id) AS NombreDeProduits
FROM    marque
            JOIN produit ON marque.id = produit.marque_id
GROUP BY marque.id
ORDER BY NombreDeProduits DESC;

-- 28 Le nombre de produits achetés dans chaque marque, triés par ordre décroissant des ventes
SELECT  marque.nom, COUNT(commande_produit.produit_id) AS NombreProduitsVendus
FROM    marque
            JOIN produit ON marque.id = produit.marque_id
            JOIN commande_produit ON produit.id = commande_produit.produit_id
GROUP BY marque.id
ORDER BY NombreProduitsVendus DESC;

-- 29 Le prix maxi et prix mini des produits groupés par marque et catégorie
SELECT  marque.nom AS Marque, categorie.nom AS Categorie, MAX(produit.prix) AS PrixMax, MIN(produit.prix) AS PrixMin
FROM    produit
            JOIN marque ON produit.marque_id = marque.id
            JOIN categorie ON produit.categorie_id = categorie.id
GROUP BY marque.id, categorie.id;

-- 30 Le nombre de commandes par client, pour les clients ayant passé plus de 5 commandes
SELECT  client.prenom, client.nom, COUNT(commande.id) AS NombreDeCommandes
FROM    client
            JOIN commande ON client.id = commande.client_id
GROUP BY client.id
HAVING COUNT(commande.id) > 5
ORDER BY NombreDeCommandes DESC;