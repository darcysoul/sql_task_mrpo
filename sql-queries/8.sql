-- 8. Создание объекта оповещения пользователя при отсутствии поставок товаров или количестве которых меньше чем 50 шт.

CREATE OR REPLACE FUNCTION notify_low_stock()
RETURNS TRIGGER AS $$
DECLARE
    notification TEXT;
    stock_count INT;
BEGIN
    -- Считаем общее количество товара на складе
    SELECT SUM(amount) INTO stock_count
    FROM souvenirstores
    WHERE idsouvenir = NEW.idsouvenir;

    -- Проверяем, если количество меньше 50 или товар отсутствует
    IF stock_count IS NULL OR stock_count < 50 THEN
        notification := 'Отсутствует поставка товара ' || NEW.idsouvenir || 
                        ' (текущее количество: ' || COALESCE(stock_count, 0) || ' шт.)';
        RAISE NOTICE '%', notification;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_low_stock
BEFORE INSERT OR UPDATE ON souvenirstores
FOR EACH ROW
EXECUTE FUNCTION notify_low_stock();


-- -- Проверка

-- INSERT INTO souvenirstores (id, idsouvenir, idprocurement, amount, comments)
-- VALUES 
-- (6, 8096, 1, 30, 'Недостаток на складе'), 
-- (7, 8097, 1, 20, 'Недостаток на складе'),
-- (8, 8098, 1, 60, 'Достаточно на складе');

-- -- Обновим запись, чтобы сделать количество товара меньше 50
-- UPDATE souvenirstores
-- SET amount = 15
-- WHERE idsouvenir = 8098;
