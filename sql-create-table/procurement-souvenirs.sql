-- Создание таблицы ProcurementSouvenirs
CREATE TABLE ProcurementSouvenirs (
    ID BIGINT PRIMARY KEY,
    IdSouvenir BIGINT NOT NULL,
    IdProcurement BIGINT NOT NULL,
    Amount INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (IdSouvenir) REFERENCES Souvenirs(ID),
    FOREIGN KEY (IdProcurement) REFERENCES SouvenirProcurements(ID)
);
