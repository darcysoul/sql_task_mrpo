-- 6.	Создать объект для вывода категорий, в зависимости от выбранной

SELECT * FROM souvenircategories AS c
WHERE c.idparent = (SELECT id FROM souvenircategories WHERE Name = 'Аксессуары для путешествий');
