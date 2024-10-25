-- Создание таблицы Providers
CREATE TABLE Providers (
    ID BIGINT PRIMARY KEY,
    Name VARCHAR(200) NOT NULL,
    Email VARCHAR(200) NOT NULL,
    ContactPerson VARCHAR(200) NOT NULL,
    Comments VARCHAR(1000)
);