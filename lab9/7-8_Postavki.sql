-- Оплата по поставкам (журнал) за период
SELECT *
FROM oplata
WHERE id_zakaz in (SELECT id_zakaz FROM zakaz WHERE id_zakaz in (SELECT id_zakaz FROM spisok_tovarov WHERE id_spisok_postavki IN (
SELECT id_spisok_postavki FROM spisok_postavki WHERE id_postavki in (SELECT id_postavki FROM postavki WHERE data BETWEEN ('2022-01-01')and('2022-03-01')))))