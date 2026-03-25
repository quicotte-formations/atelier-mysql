INSERT INTO reservation (client_id, chambre_id, date_arrivee, date_depart, prix_total)
VALUES (2,6,'2023/12/05','2023/12/12', 980);

UPDATE  chambre
SET     prix = 200
WHERE   id = 6;

UPDATE chambre 
SET prix = (    SELECT avg_prix 
                FROM ( 
                    SELECT  AVG(prix) AS avg_prix 
                    FROM chambre 
                    WHERE type_chambre = 'Chambre Double') AS temp) 
WHERE type_chambre = 'Chambre Simple';