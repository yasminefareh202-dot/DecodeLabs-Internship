create database projet3;
USE projet3;
-- Montant total des ventes
SELECT SUM(TotalPrice) AS Total_Ventes
FROM datasett;
--
 select Product , SUM(TotalPrice)  as price from datasett group by Product order by price desc; 
 -- panier _Moyen 
 SELECT AVG(TotalPrice) AS Panier_Moyen
FROM datasett;
--
select count(*) from datasett;
-- Nombre d'unités vendues par produit --
select sum(Quantity) as qt ,Product from datasett group by Product; 
-- Modes de paiement qui génèrent le plus de ventes--
select PaymentMethod , sum(TotalPrice) as price from datasett group by PaymentMethod order by price desc;
-- Sources de recommandation qui génèrent le plus de ventes--
select ReferralSource, sum(TotalPrice) as price from datasett group by ReferralSource order by price desc;
-- Évolution des performances des ventes au fil du temps

Par mois
SELECT
    DATE_FORMAT(Date, '%Y-%m') AS Mois,
    SUM(TotalPrice) AS Total_Ventes,
    COUNT(*) AS Nombre_Commandes,
    AVG(TotalPrice) AS Panier_Moyen
FROM datasett
GROUP BY DATE_FORMAT(Date, '%Y-%m')
ORDER BY Mois;
