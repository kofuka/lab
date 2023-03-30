-- 3)	Список товаров поставленных по типу товара
SELECT *
FROM spisok_postavki
WHERE id_spisok_postavki in (SELECT id_tovar FROM tovar WHERE tovar = 'Мыло')
