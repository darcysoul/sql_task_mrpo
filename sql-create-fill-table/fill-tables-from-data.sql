-- Скрипт для заполнения таблиц базы данных через CSV файлы

-- Заполнение таблицы Colors
COPY colors (id, name)
FROM '/Users/catherinesavenko/kate/МРПО/data-base-task/normalized_datasets/colors_dataset.csv'
DELIMITER ';'
CSV HEADER;

-- Заполнение таблицы SouvenirMaterials
COPY souvenirmaterials (id, name)
FROM '/Users/catherinesavenko/kate/МРПО/data-base-task/normalized_datasets/materials_dataset.csv'
DELIMITER ';'
CSV HEADER;

-- Заполнение таблицы SouvenirCategories
COPY souvenircategories (id, idparent, name)
FROM '/Users/catherinesavenko/kate/МРПО/data-base-task/normalized_datasets/categories_dataset.csv'
DELIMITER ';'
CSV HEADER;

-- Заполнение таблицы ApplicationMethods
COPY applicationmethods (id, name)
FROM '/Users/catherinesavenko/kate/МРПО/data-base-task/normalized_datasets/appmethods_dataset.csv'
DELIMITER ';'
CSV HEADER;

-- Заполнение таблицы Souvenirs
COPY souvenirs (id, url, shortname, name, description, rating, idcategory, idcolor, size, idmaterial, weight, qtypics, picssize, idapplicmethod, allcategories, dealerprice, price, comments)
FROM '/Users/catherinesavenko/kate/МРПО/data-base-task/normalized_datasets/souvenirs_dataset.csv'
DELIMITER ';'
CSV HEADER;

-- Завершено заполнение таблиц базы данных через CSV файлы