-- Ot malenkogo k bolshomu
-- SELECT * FROM sales
-- ORDER BY volume; -- Сортировка от маленького к большому

-- SELECT * FROM sales
-- ORDER BY volume DESC; -- Сортировка от большого к маленькому

-- SELECT * FROM sales
-- ORDER BY volume DESC
-- LIMIT 10;

-- SELECT * FROM sales
-- ORDER BY volume
-- LIMIT 10;

-- SELECT * FROM sales
-- WHERE is_disputed IS FALSE
-- ORDER BY volume DESC
-- LIMIT 3;

SELECT * FROM sales
ORDER BY volume DESC -- Сортировка от большого к маленькому
LIMIT 5 -- лимит отобажаемых строк
OFFSET 3; -- убирает с возвращаемой таблицы первые 3 строки (можно использовать для пагинации)