-- Скрипт для заполнения таблиц базы данных самостоятельно

-- Вставка данных в таблицу Providers
INSERT INTO providers (id, name, email, contactperson, comments) VALUES
(1, 'Поставщик 1', 'supplier1@example.com', 'Контактное лицо 1', 'Комментарий 1'),
(2, 'Поставщик 2', 'supplier2@example.com', 'Контактное лицо 2', 'Комментарий 2'),
(3, 'Поставщик 3', 'supplier3@example.com', 'Контактное лицо 3', 'Комментарий 3'),
(4, 'Поставщик 4', 'supplier4@example.com', 'Контактное лицо 4', 'Комментарий 4'),
(5, 'Поставщик 5', 'supplier5@example.com', 'Контактное лицо 5', 'Комментарий 5');

-- Вставка данных в таблицу ProcurementStatuses
INSERT INTO procurementstatuses (id, name) VALUES
(1, 'Ожидает обработки'),
(2, 'Обработан'),
(3, 'Отменен'),
(4, 'Завершен'),
(5, 'В пути');

-- Вставка данных в таблицу SouvenirProcurements
INSERT INTO souvenirprocurements (id, idprovider, data, idstatus) VALUES
(1, 1, '2024-01-01', 1),
(2, 2, '2024-01-02', 2),
(3, 3, '2024-01-03', 3),
(4, 4, '2024-01-04', 4),
(5, 5, '2024-01-05', 5);

-- Вставка данных в таблицу ProcurementSouvenirs
INSERT INTO procurementsouvenirs (id, idsouvenir, idprocurement, amount, price) VALUES
(1, 8096, 1, 10, 100.00),
(2, 8097, 2, 15, 150.00),
(3, 8098, 3, 5, 200.00),
(4, 8099, 4, 8, 120.00),
(5, 8100, 5, 12, 130.00);

-- Вставка данных в таблицу SouvenirStores
INSERT INTO souvenirstores (id, idsouvenir, idprocurement, amount, comments) VALUES
(1, 8096, 1, 10, 'Хранится на складе'),
(2, 8097, 2, 5, 'Продано'),
(3, 8098, 3, 8, 'На пути к клиенту'),
(4, 8099, 4, 15, 'Доступно для продажи'),
(5, 8100, 5, 20, 'В ожидании доставки');
