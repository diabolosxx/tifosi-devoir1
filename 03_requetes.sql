
SELECT nom FROM focaccia ORDER BY nom ASC;
--Affichage des lignes 0 - 8 (total de 9, traitement en 0,0007 seconde(s).) [nom: ... - TRADIZIONE...]

SELECT COUNT(*) FROM ingredient;
--total_ingredients: 25

SELECT AVG(prix) FROM focaccia;
--prix_moyen: 9.222222

SELECT b.nom AS boisson, m.nom AS marque
FROM boisson b
JOIN marque m ON b.id_marque = m.id_marque
ORDER BY b.nom;
--boisson	marque

SELECT i.nom
FROM ingredient i
JOIN focaccia_ingredient fi ON fi.id_ingredient = i.id_ingredient
JOIN focaccia f ON f.id_focaccia = fi.id_focaccia
WHERE f.nom = 'Raclaccia';
--nom :Ananas,Base crème,Champignon

SELECT f.nom, COUNT(fi.id_ingredient) AS nb_ingredients
FROM focaccia f
LEFT JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.id_focaccia;
--
nom
nb_ingredients
Mozaccia
3
Gorgonzollaccia
3
Raclaccia
3
Emmentalaccia
3
Tradizione
3
Hawaienne
0
Américaine
0
Paysanne
0
0

SELECT f.nom
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.id_focaccia
ORDER BY COUNT(fi.id_ingredient) DESC
LIMIT 1;
--
nom :Mozaccia

SELECT f.nom
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON i.id_ingredient = fi.id_ingredient
WHERE i.nom = 'ail';
--nom :Mozaccia,Gorgonzollaccia,Tradizione

SELECT i.nom
FROM ingredient i
LEFT JOIN focaccia_ingredient fi ON fi.id_ingredient = i.id_ingredient
WHERE fi.id_ingredient IS NULL;
--nom
Jambon cuit
Jambon fumé
Oeuf
Oignon
Olive noire
Olive verte
Parmesan
Piment
Poivre
Pomme de terre
Raclette
Salami
Tomate cerise
Mozarella

SELECT f.nom
FROM focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT fi.id_focaccia
    FROM focaccia_ingredient fi
    JOIN ingredient i ON i.id_ingredient = fi.id_ingredient
    WHERE i.nom = 'champignon');
--nom
Mozaccia
Gorgonzollaccia
Emmentalaccia
Tradizione
Hawaienne
Américaine
Paysanne

