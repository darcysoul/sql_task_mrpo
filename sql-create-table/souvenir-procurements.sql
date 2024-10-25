-- Создание таблицы SouvenirProcurements
CREATE TABLE SouvenirProcurements (
    ID BIGINT PRIMARY KEY,
    IdProvider BIGINT NOT NULL,
    Data DATE NOT NULL,
    IdStatus BIGINT NOT NULL,
    FOREIGN KEY (IdProvider) REFERENCES Providers(ID),
    FOREIGN KEY (IdStatus) REFERENCES ProcurementStatuses(ID)
);