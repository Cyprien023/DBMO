

USE FishAndSheeps;

CREATE TABLE user (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    user_password VARCHAR(20) NOT NULL

) ENGINE=InnoDB;

CREATE TABLE  animal (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    animal_type VARCHAR(7), 
    animal_color VARCHAR(20),
    birthdate VARCHAR(10),
    animal_name VARCHAR(32),
    terrain_id INT(10) ,
    user_id INT(10),
    CONSTRAINT FK_USER FOREIGN KEY (user_id) REFERENCES user(id)


) engine = InnoDB;

CREATE TABLE transaction (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id INT(10)
    ) engine = InnoDB;

    
CREATE TABLE  terrain (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    terrain_type VARCHAR(20)


) engine = InnoDB;

CREATE TABLE food (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(20),
    calories INT(10)
) engine = InnoDB;

CREATE TABLE annonce (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    annonce_type VARCHAR(250),
    points INT(10),
    annonce_id INT(10)
    -- CONSTRAINT FK_ANNONCE FOREIGN KEY (annonce_id) REFERENCES user(id)

) engine = InnoDB;

CREATE TABLE offre (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    offre_type VARCHAR(250),
    points INT(10),
    offre_id INT(10)
    -- CONSTRAINT FK_OFFRE FOREIGN KEY (offre_id) REFERENCES user(id)


) engine = InnoDB;


INSERT INTO user (email, user_password) VALUES
('alain@gmail.com', 'alain123'),
('olivier@gmail.com', 'olivier123'),
('patrick@gmail.com', 'patrick123');

INSERT INTO animal (animal_type, animal_color, birthdate, animal_name) VALUES
('mouton', 'blanc', '22/12/2021', 'fabrice'),
('poisson', 'rouge', '26/03/2022', 'jacque'),
('mouton', 'gris', '12/11/2021', 'bob');


