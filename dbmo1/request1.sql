-- a
INSERT INTO user (mail, user_password, first_name, last_name, user_role, phone_number)
VALUES ('antoine', 'antoine@gmail.com', 'antoine', 'doube','USER', 07 85 63 34 22 / 04 72 43 56 32);

-- b
INSERT INTO team (product_owner, chef_project, technicien, team_else, user_id)
VALUES ('jacque', 'marie', 'olivier', 'bob', 1);

-- c 
INSERT INTO task (task_name, statut, user_owner, user_worker, files, comment, user_id, project_id)
VALUES ('Tache 1', 'En cours', 'marie', 'bob', '', 'Besoin de plus de temps pour terminer', 1, 1);

-- d

INSERT INTO groupe (group_name, message, group_date, user_id, project_id)
VALUES ('Groupe 1', 'Bienvenue dans le groupe', '2022-02-01', 1, 1),

-- e
ALTER TABLE team
ADD new_user VARCHAR(50);

INSERT INTO team (new_user)
VALUES ('patrick');

-- f
INSERT INTO project (team_id)
VALUES (1);

-- g
INSERT INTO task (user_id)
VALUES (1);

-- h
ALTER TABLE task 
DROP user_id 
WHERE user_id = 1;

-- i
INSERT INTO groupe (files)
VALUES ('https://www.youtube.com/')

-- j
UPDATE task 
SET comment = 'je ne suis pas de ton avis'
WHERE id = 2

-- k


-- l

-- m

-- n
UPDATE project
SET start_date = '2022-06-12'
WHERE id = 1;

UPDATE project
SET end_date = '2023-01-12'
WHERE id = 1;

-- o
ALTER TABLE task
DROP COLUMN comment
WHERE id = 2

-- p
DELETE FROM task
WHERE id = 1

-- q
SELECT *
FROM task
INNER JOIN user ON user.user_id = task.id


-- r
SELECT message 
FROM groupe
GROUP BY message
LIMIT message > 10

