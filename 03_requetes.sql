
SELECT nom FROM focaccia ORDER BY nom ASC;

SELECT COUNT(*) FROM ingredient;

SELECT AVG(prix) FROM focaccia;

SELECT b.nom, m.nom
FROM boisson b
JOIN marque m ON b.id_marque = m.id_marque
ORDER BY b.nom;

SELECT i.nom
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE f.nom = 'Raclaccia';

SELECT f.nom, COUNT(fi.id_ingredient) AS nb_ing
FROM focaccia f
LEFT JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.id_focaccia;

SELECT f.nom
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.id_focaccia
ORDER BY COUNT(fi.id_ingredient) DESC
LIMIT 1;

SELECT f.nom
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE i.nom = 'ail';

SELECT f.nom
FROM focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT fi.id_focaccia
    FROM focaccia_ingredient fi
    JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
    WHERE i.nom = 'champignons'
);
