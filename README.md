# 🍕 Tifosi — Base de données MySQL

Projet réalisé dans le cadre du brief : **Concevoir une base de données avec MySQL** pour le restaurant de street‑food italien *Tifosi*.

La base de données permet de gérer :
- les focaccias,
- les ingrédients,
- les marques,
- les boissons,
- les clients,
- les achats,
- la composition des focaccias.

---

## 📁 Structure du projet

---

## 🛠️ 1. Création de la base de données

La base doit être créée dans MySQL sous le nom : tifosi


Un utilisateur dédié doit être créé :

- **Nom :** tifosi  
- **Mot de passe :** (à définir)  
- **Droits :** tous les privilèges sur la base `tifosi`

---

## 🧱 2. Script de création du schéma (`01_schema.sql`)

Ce script contient :
- la création des tables,
- les clés primaires,
- les clés étrangères,
- les contraintes d’intégrité,
- les champs obligatoires,
- les valeurs uniques.

Les tables créées sont :
- `marque`
- `boisson`
- `ingredient`
- `focaccia`
- `menu`
- `client`
- `achat`
- `focaccia_ingredient`

---

## 🍽️ 3. Peuplements de la base (`02_insert.sql`)

Les données de test proviennent des fichiers :
- focaccia.xlsx  
- ingredient.xlsx  
- boisson.xlsx  
- marque.xlsx  

Les fichiers ont été convertis en **CSV UTF‑8** puis importés dans MySQL via phpMyAdmin.

Le script `02_insert.sql` contient :
- l’insertion des marques,
- l’insertion des boissons,
- l’insertion des ingrédients,
- l’insertion des focaccias,
- la composition des focaccias,
- les menus,
- les clients,
- les achats.

---

## 🔍 4. Requêtes de vérification (`03_requetes.sql`)

Ce script regroupe les 10 requêtes demandées dans le brief :

1. Liste des focaccias par ordre alphabétique  
2. Nombre total d’ingrédients  
3. Prix moyen des focaccias  
4. Liste des boissons avec leur marque  
5. Ingrédients d’une Raclaccia  
6. Nombre d’ingrédients par focaccia  
7. Focaccia avec le plus d’ingrédients  
8. Focaccias contenant de l’ail  
9. Ingrédients inutilisés  
10. Focaccias sans champignons  

Chaque requête contient :
- le numéro,
- le but,
- le code SQL,
- le résultat attendu,
- le résultat obtenu,
- un commentaire si nécessaire.

---

## 🚀 5. Installation & exécution

### 1. Importer le schéma
Dans phpMyAdmin :
- Sélectionner la base `tifosi`
- Onglet **Importer**
- Charger `01_schema.sql`

### 2. Importer les données
Importer ensuite :
- `02_insert.sql`

### 3. Tester la base
Importer ou exécuter :
- `03_requetes.sql`

---

## 📌 6. Auteur

Projet réalisé par **Abdallah**, dans le cadre du Centre Européen de Formation.

---



