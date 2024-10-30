-- 3.	Создать запрос на выборку сувениров по категориям и отсортировать по популярности от самого непопулярного

SELECT s.id AS SouvenirID, s.shortname AS SouvenirName, s.rating AS Rating, sc.name AS CategoryName
FROM souvenirs AS s
JOIN souvenircategories AS sc ON s.idcategory = sc.id
WHERE sc.name = 'Кружки'
ORDER BY s.rating ASC;