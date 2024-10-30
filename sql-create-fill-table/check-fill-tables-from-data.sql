-- Проверить результаты заполнения бд через CSV файлы

(SELECT 'colors' AS source, id, name, NULL::VARCHAR AS description
FROM colors
LIMIT 5)

UNION ALL

(SELECT 'souvenirmaterials' AS source, id, name, NULL::VARCHAR AS description
FROM souvenirmaterials
LIMIT 5)

UNION ALL

(SELECT 'souvenircategories' AS source, id, name, NULL::VARCHAR AS description
FROM souvenircategories
LIMIT 5)

UNION ALL

(SELECT 'applicationmethods' AS source, id, name, NULL::VARCHAR AS description
FROM applicationmethods
LIMIT 5)

UNION ALL

(SELECT 'souvenirs' AS source, id, shortname AS name, description
FROM souvenirs
LIMIT 5);
