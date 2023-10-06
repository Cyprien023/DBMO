

USE lets_do_it;


CREATE TABLE user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    mail VARCHAR(50),
    user_password VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    user_role VARCHAR(5),
    phone_number INT
);


CREATE TABLE team (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_owner VARCHAR(50),
    chef_project VARCHAR (50),
    technicien VARCHAR(50),
    team_else VARCHAR(50),
    user_id INT,
    CONSTRAINT foreign key FK_user_1 (user_id) references user(id)
);


CREATE TABLE project (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name_project VARCHAR(50),
    start_date DATE,
    end_date DATE,
    task_id INT,
    user_id INT,
    team_id INT,
    CONSTRAINT foreign key FK_task_1 (task_id) references task(id), 
    CONSTRAINT foreign key FK_user_1 (user_id) references user(id), 
    CONSTRAINT foreign key FK_team_1 (team_id) references team(id)

);

CREATE TABLE task (
    id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(50),
    statut VARCHAR(50),
    user_owner VARCHAR(50),
    user_worker VARCHAR(50),
    files VARCHAR(50),
    comment VARCHAR(255),
    user_id INT,
    project_id INT,
    CONSTRAINT foreign key FK_user_1 (user_id) references user(id), 
    CONSTRAINT foreign key FK_project_1 (project_id) references project(id)

);

-- CREATE TABLE group (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     group_name VARCHAR(50),
--     message VARCHAR(150),
--     group_date DATE,
--     user_id INT,
--     project_id INT,
--     CONSTRAINT foreign key FK_user_1 (user_id) references user(id), 
--     CONSTRAINT foreign key FK_project_1 (project_id) references project(id)

-- );


INSERT INTO user (mail, user_password, first_name, last_name, user_role, phone_number)
VALUES ('bob@gmail.com', 'bob123', 'bob', 'louis', 'USER', 06 44 33 54 34),
('olivier@gmail.com', 'olivier123', 'olivier', 'jean', 'ADMIN', 06 44 21 54 34),
('jacque@gmail.com', 'jacque123', 'jacque', 'bleu', 'USER', 06 44 33 78 34),
('marie@gmail.com', 'marie123', 'marie', 'vert', 'USER', 06 44 33 53 14),
('valentin@gmail.com', 'valentin123', 'valentin', 'rog', 'USER', 06 88 33 54 34);


INSERT INTO team (product_owner, chef_project, technicien, team_else, user_id)
VALUES ('John Smith', 'Mary Johnson', 'David Lee', 'Samantha Green', 1),
('Alice Brown', 'Tom Wilson', 'Emily Chen', 'Ryan Davis', 2),
('Michael Kim', 'Susan Wong', 'Daniel Ramirez', 'Katie Lee', 3);


INSERT INTO project (name_project, start_date, end_date, task_id, user_id, team_id)
VALUES ('Projet A', '2023-01-01', '2023-06-30', 1, 1, 1),
('Projet B', '2023-02-15', '2023-12-31', 2, 2, 2),
('Projet C', '2023-03-01', '2023-08-31', 3, 3, 3);


INSERT INTO task (task_name, statut, user_owner, user_worker, files, comment, user_id, project_id)
VALUES ('Tache 1', 'En cours', 'John Smith', 'David Lee', '', 'Besoin de plus de temps pour terminer', 1, 1),
('Tache 2', 'Termine', 'Alice Brown', 'Emily Chen', 'document.pdf', '', 2, 2),
('Tache 3', 'A faire', 'Michael Kim', 'Daniel Ramirez', '', '', 3, 3);


-- INSERT INTO groupe (group_name, message, group_date, user_id, project_id)
-- VALUES ('Groupe 1', 'Bienvenue dans le groupe', '2022-02-01', 1, 1),
-- VALUES ('Groupe 2', 'Reunion demain a 14h', '2022-03-15', 2, 2),
-- VALUES ('Groupe 3', 'Nouveau membre rejoint le groupe', '2022-04-20', 3, 3);









