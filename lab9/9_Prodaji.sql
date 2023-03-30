-- Контакты клиентов
SELECT kontakty
FROM kontakty
WHERE id_klient = (SELECT id_klient FROM klient WHERE id_klient = 2)
