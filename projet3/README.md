# Data Analytics Project

## Description

Ce projet consiste à analyser un jeu de données de commandes et de ventes afin d'identifier les principales tendances commerciales et de mieux comprendre le comportement des ventes.

L'analyse a été réalisée à l'aide de **Excel,  et SQL**.

## Objectifs de l'analyse

L'objectif principal est d'explorer les données de ventes et de répondre aux questions suivantes :

* Quel est le montant total des ventes ?
* Quel est le panier moyen (valeur moyenne des commandes) ?
* Combien de commandes sont contenues dans le jeu de données ?
* Quels produits génèrent le plus de ventes ?
* Combien d'unités de chaque produit ont été vendues ?
* Quels modes de paiement génèrent le plus de ventes ?
* Quelles sources de recommandation (acquisition) génèrent le plus de ventes ?
* Comment les commandes sont-elles réparties par statut ?
* Quelles sont les commandes qui ont une valeur totale élevée ?
* Comment la performance des ventes évolue-t-elle au fil du temps ?

## Outils utilisés

* **Microsoft Excel** : nettoyage, préparation et exploration des données.
* **MySQL** : analyse des données à l'aide de requêtes SQL.

## Analyse SQL

L'analyse SQL a été utilisée pour répondre aux principales questions commerciales.

### 1. Montant total des ventes

```sql
SELECT SUM(TotalPrice) AS Total_Ventes
FROM dataset;
```

### 2. Panier moyen

```sql
SELECT AVG(TotalPrice) AS Panier_Moyen
FROM dataset;
```

### 3. Nombre de commandes

```sql
SELECT COUNT(DISTINCT OrderID) AS Nombre_Commandes
FROM dataset;
```

### 4. Produits générant le plus de ventes

```sql
SELECT Product,
       SUM(TotalPrice) AS Total_Ventes
FROM dataset
GROUP BY Product
ORDER BY Total_Ventes DESC;
```

### 5. Nombre d'unités vendues par produit

```sql
SELECT Product,
       SUM(Quantity) AS Unites_Vendues
FROM dataset
GROUP BY Product
ORDER BY Unites_Vendues DESC;
```

### 6. Ventes par mode de paiement

```sql
SELECT PaymentMethod,
       SUM(TotalPrice) AS Total_Ventes
FROM dataset
GROUP BY PaymentMethod
ORDER BY Total_Ventes DESC;
```

### 7. Ventes par source de recommandation

```sql
SELECT ReferralSource,
       SUM(TotalPrice) AS Total_Ventes
FROM dataset
GROUP BY ReferralSource
ORDER BY Total_Ventes DESC;
```

### 8. Répartition des commandes par statut

```sql
SELECT Status,
       COUNT(DISTINCT OrderID) AS Nombre_Commandes
FROM dataset
GROUP BY Status
ORDER BY Nombre_Commandes DESC;
```

### 9. Commandes ayant les valeurs les plus élevées

```sql
SELECT OrderID,
       TotalPrice
FROM dataset
ORDER BY TotalPrice DESC
LIMIT 10;
```

### 10. Évolution des ventes au fil du temps

```sql
SELECT DATE_FORMAT(Date, '%Y-%m') AS Mois,
       SUM(TotalPrice) AS Total_Ventes,
       COUNT(DISTINCT OrderID) AS Nombre_Commandes,
       AVG(TotalPrice) AS Panier_Moyen
FROM dataset
GROUP BY DATE_FORMAT(Date, '%Y-%m')
ORDER BY Mois;
```



## Conclusion

Cette analyse permet d'obtenir une vision globale de la performance commerciale. L'utilisation combinée de **SQL, Excel * permet de transformer les données brutes en informations utiles pour faciliter l'interprétation des ventes et la prise de décision.
