-- 1.	Создать запрос на выборку сувениров по материалу

SELECT s.id AS SouvenirID, s.shortname AS SouvenirName, m.id AS MaterialID, m.name AS MaterialName
FROM souvenirs AS s
JOIN souvenirmaterials AS m ON s.idmaterial = m.id
WHERE m.name = 'алюминий';