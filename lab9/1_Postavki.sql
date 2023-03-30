-- 1)	Список поставки за период  по товарам --
SELECT * 
FROM spisok_postavki
WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_tovarov WHERE id_tovar in (SELECT id_tovar FROM tovar WHERE id_tovar in 
(SELECT id_tovar FROM price_list WHERE data = '2022-08-01 00:00:00')))