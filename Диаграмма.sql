CREATE TABLE Альбом (
    Альбом_id SERIAL PRIMARY KEY,
    Название_альбома TEXT,
    Год_выпуска DATE
);

CREATE TABLE Исполнитель (
    Исполнитель_id SERIAL PRIMARY KEY,
    Имя TEXT
);

CREATE TABLE Жанры (
    Жанры_id SERIAL PRIMARY KEY,
    Название TEXT
);

CREATE TABLE Альбом_и_артист (
    Альбом_id INTEGER REFERENCES Альбом(Альбом_id),
    Исполнитель_id INTEGER REFERENCES Исполнитель(Исполнитель_id),
    PRIMARY KEY (Альбом_id, Исполнитель_id)
);

CREATE TABLE Жанр_и_артист (
    Жанры_id INTEGER REFERENCES Жанры(Жанры_id),
    Исполнитель_id INTEGER REFERENCES Исполнитель(Исполнитель_id),
    PRIMARY KEY (Жанры_id, Исполнитель_id)
);

CREATE TABLE Трек (
    Трек_id SERIAL PRIMARY KEY,
    Длительность_трека NUMERIC,
    Альбом_id INTEGER REFERENCES Альбом(Альбом_id)
);

CREATE TABLE Сборник (
    Сборник_id SERIAL PRIMARY KEY,
    Название_сборника TEXT,
    Год_выпуска DATE
);

CREATE TABLE Сборник_треки (
    Сборник_id INTEGER REFERENCES Сборник(Сборник_id),
    Трек_id INTEGER REFERENCES Трек(Трек_id),
    PRIMARY KEY (Сборник_id, Трек_id)
);