-- 4.	Создать запрос на выборку всех поставщиков, поставляющих категорию товара

SELECT DISTINCT pr.id AS ProviderId, pr.name AS OrganizationName,  pr.name AS OrganizationName,  pr.contactperson AS ContactPerson, c.name AS CategoryName
FROM providers AS pr
JOIN souvenirprocurements AS sp ON pr.id = sp.idprovider
JOIN procurementsouvenirs AS ps ON sp.id = ps.idprocurement
JOIN souvenirs AS s ON ps.idsouvenir = s.id
JOIN souvenircategories AS c ON s.idcategory = c.id
WHERE c.name = 'Фонари'