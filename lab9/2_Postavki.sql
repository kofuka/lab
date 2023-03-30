-- 2)	Список товаров поставленных по поставщику
SELECT *
FROM spisok_tovarov
WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_postavki WHERE id_postavki in (SELECT id_postavki FROM postavki
WHERE id_postavshik in (SELECT id_postavshik FROM postavshik WHERE nazvaie = 'Dove')))
