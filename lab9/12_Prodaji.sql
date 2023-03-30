-- Остаток товара за период (в одной выборке отразить поставки и продажи)
DECLARE @id_kol INT
SELECT @id_kol = kolichestvo
FROM spisok_tovarov
WHERE id_spisok_postavki = 1;

DECLARE @id_koll INT
SELECT @id_koll = kol_vo
FROM spisok_postavki
WHERE id_spisok_postavki = 1;

print (@id_koll - @id_kol)