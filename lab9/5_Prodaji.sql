-- Оплата по продажам (журнал) за период
SELECT id_oplata, summa, id_zakaz
FROM oplata
WHERE data >= '2022-01-01' and data <= '2022-03-01'
