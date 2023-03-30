-- Поставки по товарам за период

SELECT *
FROM postavki
WHERE id_postavki in (SELECT id_postavki FROM spisok_postavki WHERE id_spisok_postavki in (SELECT id_spisok_postavki FROM spisok_tovarov WHERE id_tovar in (SELECT id_tovar FROM tovar WHERE tovar = 'Пальто')) )
