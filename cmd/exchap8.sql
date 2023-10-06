

USE chap8;


-- CREATE TABLE user (
--  name VARCHAR(30),
--  type VARCHAR(15)
-- ) PARTITION BY LIST COLUMNS (type) (
--  PARTITION p_admins VALUES IN ('ADMIN', 'SUPER_ADMIN'),
--  PARTITION p_users VALUES IN ('USER'),
--  PARTITION p_systems VALUES IN ('SYSTEM')
-- );


CREATE TABLE user (
 first_name VARCHAR(30),
 sexe VARCHAR(10),
 birthdate VARCHAR(50)
)ENGINE=InnoDB PARTITION BY RANGE (birthdate) (
 PARTITION p_children VALUES LESS THAN (18),
 PARTITION p_adults VALUES LESS THAN MAXVALUE
);

INSERT INTO user (first_name, sexe, birthdate)
VALUES ('bob', 'H', 22/11/1995),
        ('marie', 'F', 12/05/1997),
        ('fabrice', 'H', 17/02/1999);
