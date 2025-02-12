CREATE TABLE Cursos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(50),
    area VARCHAR(50),
    concorrencia DECIMAL(10,2)
);

INSERT INTO Cursos (nome, area, concorrencia) VALUES
('Medicina', 'Saúde', 96.5),
('Psicologia', 'Humanas', 55.6),
('Relações Internacionais', 'Humanas', 42.5),
('Psicologia', 'Humanas', 35.3),
('Audiovisual', 'Humanas', 32.3),
('Publicidade e Propaganda', 'Humanas', 28.6);

SELECT *
FROM  Cursos
ORDER BY concorrencia ASC;

SELECT area, COUNT(*) AS total_cursos
FROM Cursos
GROUP BY area;

SELECT area, AVG (concorrencia) AS media_concorrencia
FROM Cursos
GROUP BY area;
