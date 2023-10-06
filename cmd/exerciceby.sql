-- USE exby;

-- CREATE TABLE user (
--     id INT(10) AUTO_INCREMENT PRIMARY KEY,
--     useername VARCHAR(50) NOT NULL,
--     age INT(120),
--     sexe VARCHAR(20)

-- ) ENGINE=InnoDB;

-- CREATE TABLE  address (
--     id INT(10) AUTO_INCREMENT PRIMARY KEY,
--     coutry VARCHAR(50), 
--     departement VARCHAR(50),
--     city VARCHAR(10),

-- ) ENGINE=InnoDB;


USE exby;

create table user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50), 
    prenom VARCHAR(50),
    sexe VARCHAR(20),
    age INT(120),
    id_adress INT
    );



create table adress (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pays VARCHAR(20),
    ville VARCHAR(20),
    rue VARCHAR(20),
    ad_number int
    );



INSERT INTO user (nom, prenom, sexe, age, id_adress)
VALUES
    ('Dupont', 'Jean', 'M',65, 1),
    ('Durand', 'Sophie', 'F',34, 2),
    ('Smith', 'John', 'M',16, 3),
    ('Tremblay', 'Marie', 'F',13, 4),
    ('Müller', 'Hans', 'M',35, 5),
    ('Tanaka', 'Yuki', 'F',43, 6),
    ('Silva', 'Carlos', 'M',66, 7),
    ('Garcia', 'Maria', 'F',17, 8),
    ('Rossi', 'Giovanni', 'M',24, 9),
    ('Taylor', 'Emma', 'F',26, 10),
    ('Dupont', 'Jean', 'M',65, 1),
    ('Durand', 'Sophie', 'F',34, 2),
    ('Smith', 'John', 'M',16, 3),
    ('Tremblay', 'Marie', 'F',13, 4),
    ('Müller', 'Hans', 'M',35, 5),
    ('Tanaka', 'Yuki', 'F',43, 6),
    ('Silva', 'Carlos', 'M',66, 7),
    ('Garcia', 'Maria', 'F',17, 8),
    ('Rossi', 'Giovanni', 'M',24, 9),
    ('Taylor', 'Emma', 'F',26, 10),
    ('Dupont', 'Jean', 'M',65, 1),
    ('Durand', 'Sophie', 'F',34, 2),
    ('Smith', 'John', 'M',16, 3),
    ('Tremblay', 'Marie', 'F',13, 4),
    ('Müller', 'Hans', 'M',35, 5),
    ('Tanaka', 'Yuki', 'F',43, 6),
    ('Silva', 'Carlos', 'M',66, 7),
    ('Garcia', 'Maria', 'F',17, 8),
    ('Rossi', 'Giovanni', 'M',24, 9),
    ('Taylor', 'Emma', 'F',26, 10),
    ('Dupont', 'Jean', 'M',65, 1),
    ('Durand', 'Sophie', 'F',34, 2),
    ('Smith', 'John', 'M',16, 3),
    ('Tremblay', 'Marie', 'F',13, 4),
    ('Müller', 'Hans', 'M',35, 5),
    ('Tanaka', 'Yuki', 'F',43, 6),
    ('Silva', 'Carlos', 'M',66, 7),
    ('Garcia', 'Maria', 'F',17, 8),
    ('Rossi', 'Giovanni', 'M',24, 9),
    ('Taylor', 'Emma', 'F',26, 10);


INSERT INTO adress (pays, ville, rue, ad_number)
VALUES
    ('France', 'Paris', 'Rue de Rivoli', 10),
    ('France', 'Lyon', 'Rue du Vieux Temple', 5),
    ('USA', 'New York', 'Broadway', 234),
    ('Canada', 'Montreal', 'Rue Sainte-Catherine', 123),
    ('Allemagne', 'Berlin', 'Unter den Linden', 50),
    ('Japon', 'Tokyo', 'Shibuya', 1),
    ('Brésil', 'Rio de Janeiro', 'Avenida Atlântica', 100),
    ('Espagne', 'Barcelone', 'Las Ramblas', 20),
    ('Italie', 'Rome', 'Via del Corso', 45),
    ('Australie', 'Sydney', 'George Street', 300);
    ('Espagne', 'Barcelone', 'Las Ramblas', 20),
    ('Brésil', 'Rio de Janeiro', 'Avenida Atlântica', 100),
    ('USA', 'New York', 'Broadway', 234),
    ('Espagne', 'Barcelone', 'Las Ramblas', 20),
    ('Japon', 'Tokyo', 'Shibuya', 1),
    ('USA', 'New York', 'Broadway', 234),
    ('Italie', 'Rome', 'Via del Corso', 45),
    ('Italie', 'Rome', 'Via del Corso', 45),
    ('Espagne', 'Barcelone', 'Las Ramblas', 20),
    ('Brésil', 'Rio de Janeiro', 'Avenida Atlântica', 100),
    ('Japon', 'Tokyo', 'Shibuya', 1),
    ('France', 'Lyon', 'Rue du Vieux Temple', 5),
    ('France', 'Lyon', 'Rue du Vieux Temple', 5),
    ('Australie', 'Sydney', 'George Street', 300),
    ('Australie', 'Sydney', 'George Street', 300),
    ('Italie', 'Rome', 'Via del Corso', 45),
    ('Italie', 'Rome', 'Via del Corso', 45),
    ('Espagne', 'Barcelone', 'Las Ramblas', 20),
    ('Japon', 'Tokyo', 'Shibuya', 1),
    ('France', 'Lyon', 'Rue du Vieux Temple', 5),
    ('France', 'Lyon', 'Rue du Vieux Temple', 5),
    ('Australie', 'Sydney', 'George Street', 300),
    ('Australie', 'Sydney', 'George Street', 300),
    ('Espagne', 'Barcelone', 'Las Ramblas', 20);




-- utilisateur majeur selon le sexe
-- SELECT COUNT(age) AS 'nombre de majeur', sexe
-- FROM user
-- WHERE age > 18
-- GROUP BY sexe
    
-- utilisateur mineur selon le sexe
-- SELECT COUNT(age) AS 'nombre de mineur', sexe
-- FROM user
-- WHERE age < 18
-- GROUP BY sexe


-- SELECT IF(age > 18, 'M', 'm') AS 'Majeur ou mineur', COUNT(1) AS total, prenom
-- FROM user
-- GROUP BY age


-- moyenne age M
-- SELECT AVG(age)
-- FROM user
-- WHERE sexe = 'M'

-- moyenne age F
-- SELECT AVG(age)
-- FROM user
-- WHERE sexe = 'F'

-- age moyen selon le sexe
-- SELECT AVG(age), sexe
-- FROM user 
-- GROUP BY sexe


-- SELECT AVG(age)
-- FROM user u
-- INNER JOIN adress a ON a.user_id = u.address.id 
-- WHERE sexe = 'M'


-- SELECT adress.pays, COUNT(1) AS total
-- FROM user
-- INNER JOIN adress ON adress.user_id = user.id
-- WHERE sexe = 'F'
-- GROUP BY adress.pays
-- HAVING total >= 25;


-- SELECT adress.pays, COUNT(1) AS total
-- FROM adress
-- INNER JOIN user ON user.id_adress = adress.id
-- WHERE sexe = 'F'
-- GROUP BY adress.pays
-- HAVING total > 3

-- SELECT adress.pays, COUNT(1) AS total
-- FROM adress
-- INNER JOIN user ON user.id_adress = adress.id
-- GROUP BY adress.pays, user.sexe
-- HAVING total > 3 AND sexe = 'F'




-- SELECT adress.pays, COUNT(1) AS total, AVG(user.age) > 50 AS plus_de_50ans
-- FROM adress
-- INNER JOIN user ON user.id_adress = adress.id
-- GROUP BY pays
-- HAVING plus_de_50ans = 1



-- ne pas avoir de doublons
-- SELECT DISTINCT pays
-- FROM adress

-- SELECT pays
-- FROM adress
-- GROUP BY pays