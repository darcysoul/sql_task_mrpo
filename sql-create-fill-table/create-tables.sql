-- Скрипт для создания схемы базы данных

-- Создание таблицы Colors
CREATE TABLE Colors (
    ID BIGINT PRIMARY KEY,
    Name VARCHAR(200) NOT NULL
);

-- Создание таблицы SouvenirCategories
CREATE TABLE SouvenirCategories (
    ID BIGINT PRIMARY KEY,
    IdParent BIGINT,
    Name VARCHAR(100) NOT NULL
);

-- Создание таблицы SouvenirMaterials
CREATE TABLE SouvenirMaterials (
    ID INT PRIMARY KEY,
    Name VARCHAR(200) NOT NULL
);

-- Создание таблицы ApplicationMethods
CREATE TABLE ApplicationMethods (
    ID INT PRIMARY KEY,
    Name VARCHAR(200) NOT NULL
);

-- Создание таблицы Souvenirs
CREATE TABLE Souvenirs (
    ID BIGINT PRIMARY KEY,
    URL VARCHAR(100) NOT NULL,
    ShortName VARCHAR(150) NOT NULL,
    Name VARCHAR(200) NOT NULL,
    Description VARCHAR(2500) NOT NULL,
    Rating SMALLINT NOT NULL,
    IdCategory BIGINT NOT NULL,
    IdColor BIGINT NOT NULL,
    Size VARCHAR(150) NOT NULL,
    IdMaterial INT NOT NULL,
    Weight DECIMAL(10,3),
    QTypics VARCHAR(10),
    PicsSize VARCHAR(20),
    IdApplicMethod INT NOT NULL,
    AllCategories VARCHAR(150) NOT NULL,
    DealerPrice DECIMAL(10,2) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Comments VARCHAR(1000),
    FOREIGN KEY (IdCategory) REFERENCES SouvenirCategories(ID),
    FOREIGN KEY (IdColor) REFERENCES Colors(ID),
    FOREIGN KEY (IdMaterial) REFERENCES SouvenirMaterials(ID),
    FOREIGN KEY (IdApplicMethod) REFERENCES ApplicationMethods(ID)
);

-- Создание таблицы Providers
CREATE TABLE Providers (
    ID BIGINT PRIMARY KEY,
    Name VARCHAR(200) NOT NULL,
    Email VARCHAR(200) NOT NULL,
    ContactPerson VARCHAR(200) NOT NULL,
    Comments VARCHAR(1000)
);

-- Создание таблицы ProcurementStatuses
CREATE TABLE ProcurementStatuses (
    ID BIGINT PRIMARY KEY,
    Name VARCHAR(200) NOT NULL
);

-- Создание таблицы SouvenirProcurements
CREATE TABLE SouvenirProcurements (
    ID BIGINT PRIMARY KEY,
    IdProvider BIGINT NOT NULL,
    Data DATE NOT NULL,
    IdStatus BIGINT NOT NULL,
    FOREIGN KEY (IdProvider) REFERENCES Providers(ID),
    FOREIGN KEY (IdStatus) REFERENCES ProcurementStatuses(ID)
);

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

-- Завершено создание структуры базы данных 
