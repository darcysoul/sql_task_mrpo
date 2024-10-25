-- Создание таблицы SouvenirCategories
CREATE TABLE SouvenirCategories (
    ID BIGINT PRIMARY KEY,
    IdParent BIGINT,
    Name VARCHAR(100) NOT NULL,
    FOREIGN KEY (IdParent) REFERENCES SouvenirCategories(ID)
);