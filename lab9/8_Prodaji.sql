-- Продажи по району за период
SELECT *
FROM zakaz
WHERE id_klient in (SELECT id_klient FROM klient WHERE id_rayon in (SELECT id_rayon FROM rayon WHERE rayon = 'Первомайский'))
