-- 2.	Создать запрос на выборку поставок сувениров за промежуток времени

SELECT sp.id AS ID, sp.data AS Data, ps.amount AS Amount, ps.price AS Price, s.shortname AS SouvenirName,  pr.name AS OrganizationName,  pr.contactperson AS ContactPerson
FROM souvenirprocurements AS sp
JOIN procurementsouvenirs AS ps ON sp.id=ps.idprocurement
JOIN souvenirs AS s ON s.id=ps.idsouvenir
JOIN providers AS pr ON pr.id=sp.idprovider
WHERE sp.data BETWEEN '2024-01-01' AND '2024-01-03';