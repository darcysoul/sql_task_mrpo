-- Проверка результатов заполнения таблиц самостоятельно

SELECT 
    'providers' AS source, 
    id::VARCHAR AS id, 
    name, 
    email, 
    contactperson, 
    comments
FROM providers

UNION ALL

SELECT 
    'procurementstatuses' AS source, 
    id::VARCHAR AS id, 
    name, 
    NULL AS email, 
    NULL AS contactperson, 
    NULL AS comments
FROM procurementstatuses

UNION ALL

SELECT 
    'souvenirprocurements' AS source, 
    id::VARCHAR AS id, 
    idprovider::VARCHAR AS idprovider, 
    data::VARCHAR AS data, 
    idstatus::VARCHAR AS idstatus, 
    NULL AS comments
FROM souvenirprocurements

UNION ALL

SELECT 
    'procurementsouvenirs' AS source, 
    id::VARCHAR AS id, 
    idsouvenir::VARCHAR AS idsouvenir, 
    idprocurement::VARCHAR AS idprocurement, 
    amount::VARCHAR AS amount, 
    price::VARCHAR AS comments
FROM procurementsouvenirs

UNION ALL

SELECT 
    'souvenirstores' AS source, 
    id::VARCHAR AS id, 
    idsouvenir::VARCHAR AS idsouvenir, 
    idprocurement::VARCHAR AS idprocurement, 
    amount::VARCHAR AS amount, 
    comments
FROM souvenirstores;
