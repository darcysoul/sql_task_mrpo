-- 7.	Создать объект для проверки правильности занесения данных в таблицу SouvenirsCategories

CREATE OR REPLACE FUNCTION check_souvenir_categories()
RETURNS TRIGGER AS $$
BEGIN
    -- Проверка, что Name не пустой
    IF NEW.Name IS NULL OR NEW.Name = '' THEN
        RAISE EXCEPTION 'Name cannot be empty';
    END IF;

    -- Проверка, что IdParent (если задан) соответствует существующему ID
    IF NEW.IdParent IS NOT NULL AND NOT EXISTS (
        SELECT 1 FROM SouvenirCategories WHERE ID = NEW.IdParent
    ) THEN
        RAISE EXCEPTION 'IdParent % does not exist', NEW.IdParent;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_category
BEFORE INSERT OR UPDATE ON souvenircategories
FOR EACH ROW
EXECUTE FUNCTION check_souvenir_categories()

-- -- Проверка
-- INSERT INTO souvenircategories (id, idparent, name)
-- VALUES(1, 2, 'Очки miumiu')