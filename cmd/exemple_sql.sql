CREATE TABLE User (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(255) NOT NULL,
  age INT(120)
);

CREATE TABLE Article (
  article_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  user_id INT NOT NULL,
  editor_id INT NOT NULL

);

CREATE TABLE Comment (
  comment_id INT PRIMARY KEY AUTO_INCREMENT,
  content TEXT NOT NULL,
  user_id INT NOT NULL,
  article_id INT NOT NULL

);

INSERT INTO User (username, email, age)
VALUES
  ('johndoe', 'johndoe@orange.com', 24),
  ('janedoe', 'janedoe@gmail.com', 16),
  ('jimsmith', 'jimsmith@outlook.com', 28);

INSERT INTO Article (title, content, user_id, editor_id)
VALUES
  ('Comment utiliser SQL', 'SQL is a powerful language for managing data in relational databases. In this article, we will learn the basics of SQL and how to use it to interact with databases.', 1, 1),
  ('Les bénéfices du sport', 'Exercise is important for maintaining physical and mental health. Regular exercise can help to reduce stress, improve sleep, and boost energy levels.', 2, 2),
  ('limportance du sommeil', 'Getting enough sleep is essential for overall health and well-being. Lack of sleep can lead to a variety of health problems, including depression, weight gain, and decreased immunity.', 3, 3);

INSERT INTO Comment (content, user_id, article_id)
VALUES
  ('Great article, I learned a lot about SQL', 1, 1),
  ('I completely agree, exercise is so important', 2, 2),
  ('I struggle to get enough sleep, thanks for the tips', 3, 3),
  ('This article was very helpful, thanks for sharing', 2, 1),
  ('I never knew the importance of sleep before', 1, 3);

