-- 1
SELECT ville_nom, ville_population_2012
FROM villes_france_free
ORDER BY ville_population_2012 DESC
LIMIT 10;

-- 2
SELECT ville_nom, ville_surface
FROM villes_france_free
ORDER BY ville_surface DESC
LIMIT 50;


-- 3
SELECT ville_nom, ville_departement
FROM villes_france_free
WHERE ville_departement LIKE '97%'

-- 4
SELECT ville_nom, ville_departement, departement_nom
FROM villes_france_free, departement
ORDER BY ville_population_2012 DESC
LIMIT 10;

-- 5
SELECT ville_nom, ville_departement, ville_commune, departement_nom
FROM villes_france_free, departement
ORDER BY ville_commune DESC

-- 6
SELECT ville_surface, departement_nom
FROM villes_france_free, departement
ORDER BY ville_surface DESC
LIMIT 10;

-- 7
SELECT COUNT(ville_nom)
FROM villes_france_free
WHERE ville_nom LIKE 'SAINT%'

-- 8
SELECT ville_nom, COUNT(ville_id) AS ville
FROM villes_france_free
GROUP BY ville_nom
HAVING ville > 8
ORDER BY ville DESC

-- 9
SELECT ville_nom, ville_surface
FROM villes_france_free
WHERE ville_surface > (
    SELECT AVG(ville_surface)
    FROM villes_france_free
)

-- 10
SELECT departement_nom, SUM(ville_population_2012) AS total
FROM departement d
INNER JOIN villes_france_free vff ON d.departement_code = vff.ville_departement
GROUP BY departement_code
HAVING total > 2000000;

-- 11
UPDATE villes_france_free
SET ville_nom = REPLACE(ville_nom, '-', ' ')
WHERE ville_nom = 'SAINT-%'

SELECT ville_nom
FROM villes_france_free
WHERE ville_nom LIKE 'SAINT%'
