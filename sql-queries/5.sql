-- 5.	Создать запрос на выборку поставок сувениров за промежуток времени и отсортировать по статусу

SELECT sp.id AS SouvenirId, sp.data AS Data, s.shortname AS SouvenirName, st.name AS Status
FROM souvenirprocurements AS sp
JOIN procurementsouvenirs AS ps ON sp.id=ps.idprocurement
JOIN souvenirs AS s ON s.id=ps.idsouvenir
JOIN procurementstatuses AS st ON st.id=sp.IdStatus
WHERE sp.data BETWEEN '2024-01-01' AND '2024-01-03'
ORDER BY st.id ASC;