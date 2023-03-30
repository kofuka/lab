-- 2)	Заказы клиента за период
SELECT *
FROM zakaz
WHERE id_klient in (SELECT id_klient FROM klient WHERE id_klient = 1) and data BETWEEN ('2023-02-11')and('2023-02-12')
