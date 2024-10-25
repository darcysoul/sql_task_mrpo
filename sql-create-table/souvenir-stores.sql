-- Создание таблицы SouvenirStores
CREATE TABLE SouvenirStores (
    ID BIGINT PRIMARY KEY,
    IdSouvenir BIGINT NOT NULL,
    IdProcurement BIGINT NOT NULL,
    Amount INT NOT NULL,
    Comments VARCHAR(1000),
    FOREIGN KEY (IdSouvenir) REFERENCES Souvenirs(ID),
    FOREIGN KEY (IdProcurement) REFERENCES SouvenirProcurements(ID)
);