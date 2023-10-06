-- a
SELECT *
FROM user u
INNER JOIN animal a ON a.animal_id = u.user.id

-- b
SELECT animal_name
FROM animal
INNER JOIN terrain t ON t.terrain_id = a.animal.id

-- c

-- g
INSERT INTO annonce (annonce_type, points, annonce_id) VALUES
('animal', 100, 1);

-- i
INSERT INTO offre (offre_type, points, offre_id) VALUES
('animal', 100, 1)