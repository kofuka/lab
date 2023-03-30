INSERT INTO tip_tovara (tip_tovara) VALUES 
('Одежда'),
('Техника'),
('Аксессуары'),
('Хозяйственные');

INSERT INTO tovar (tovar, comments, id_tip_tovara) VALUES
('Пальто', 'Кашемировое пальто', 1),
('Телефон', 'Многофункционнальный', 2),
('Колье', 'Редкие натуральные камни', 3),
('Мыло', 'Моющее средство гигиенической косметики', 4);

INSERT INTO price_list (cena, data, comments, id_tovar)VALUES 
(500.99, '2022-11-04', 'Винтаж', 1),
(200.99, '2022-06-10', 'Лимитированная', 2),
(234.99, '2022-08-01', 'Редкий', 3),
(12.99, '2022-09-05', 'Единичный', 4);

INSERT INTO tip_postavshika (tip_postavshika) VALUES
('Производитель'),
('Розничный продавец'),
('Дистрибьютор'),
('Импортер');

INSERT INTO postavshik (nazvaie, fam, imya, otch, id_tip_postavshika)VALUES 
('Versace', 'Сон', 'Джин', 'Ву', 1),
('Apple', 'Пак', 'Хван', 'Чэ', 2),
('Tamler', 'Кии', 'Сун', 'Хве', 3),
('Dove', 'Ли', 'Хан', 'Мун', 4);

INSERT INTO tip_postavki (tip_postavki)VALUES
('DAF'),
('DEQ'),
('CPT'),
('DDP');

INSERT INTO postavki (nomer_doc, data, comments, id_postavshik, id_tip_postavki)VALUES ('1234', '2022-01-01', 'Итальянская компания', 1, 1),
('1234', '2022-02-01', 'Американская корпорация', 2, 2),('1234', '2022-03-01', 'Ювелирные изделия', 3, 3),
('1234', '2022-04-01', 'Мыломоющие средства', 4, 4);
INSERT INTO oplaty (data, summa, comments, id_postavki) VALUES('2022-01-05', 1000, 'A1234', 1),
('2022-02-01', 2000, 'B1234', 2),('2022-03-10', 1500, 'C1234', 3),
('2022-04-15', 2500, 'D1234', 4);
INSERT INTO spisok_postavki (id_postavki, cena, kol_vo, srok_godnosti) VALUES (1, 20, 50, '2022-12-31'),
(2, 30, 40, '2023-05-31'),(3, 25, 60, '2023-07-31'),
(4, 35, 70, '2023-10-31');
INSERT INTO rayon(rayon) VALUES
('Первомайский'),
('Октябрьский'),
('Свердловский');

INSERT INTO tip_klienta(tip_klienta) VALUES
('Драйвер'),
('Аналитик'),
('Эмоционал');

INSERT INTO klient(fam, imya, otch, passport, passw, login_, mesto_raboty, skidka, id_rayon, id_tip_klienta)VALUES
('Картанбаева', 'Бермет', 'Алмазовна', '123456789', '12345', 'kofuka', 'Yandex', 10, 1, 1),
('Зульфибаева', 'Бермет', 'Алмазовна', '987654321', '23456', 'tetovia', 'Dior', 20, 2, 2),
('Асылбекова', 'Астра', 'Асылбековна', '111222333', '34567', 'shinjucha', 'Samsung', 30, 3, 3);

INSERT INTO tip_kontaktov(tip_kontaktov) VALUES
('Почта'),
('Тел.номер'),
('instagram'),
('twitter'),
('whatsapp');

INSERT INTO kontakty(kontakty, id_klient, id_tip_kontaktov) VALUES
('bermetkartan@gmail.com', 1, 1),
('05554513477', 2, 2),
('ka.bema', 3, 3);

INSERT INTO sostoyanie (sostoyanie)VALUES
('Отправлен'),
('Ожидает'),
('Отменен');

INSERT INTO tip_zakaza (tip_zakaza) VALUES
('Резервирование'),
('Срочный'),
('Обычный');

INSERT INTO tip_prodaj (tip_prodaj)VALUES
('Активные'),('Прямые'),
('Пассивные');
INSERT INTO doljnost (doljnost)VALUES
('Директор'),
('Менеджер'),
('Бухгалтер'),
('Секретарь'),
('Заместитель');

INSERT INTO sotrudnik (fam, imya, otch, id_doljnost)VALUES 
('Бирюкова', 'Дарья', 'Даниэльевна', 1),
('Зотов', 'Александр', 'Данилович', 3),
('Мещеряков', 'Марк', 'Владимирович', 4);

INSERT INTO vid_oplaty (vid_oplaty)VALUES
('Онлайн'),
('Наличными'),
('Кредит');

INSERT INTO zakaz (data, nomer_doc, comments, id_klient, id_tip_zakaza, id_sostoyanie, id_tip_prodaj, id_sotrudnik)VALUES
('2023-02-11', '0001', '1', 1, 1, 1, 1, 1),
('2023-02-12', '0002', '2', 2, 2, 2, 2, 2),
('2023-02-13', '0003', '3', 3, 3, 3, 3, 3);

INSERT INTO oplata (data, summa, comments, id_zakaz, id_vid_oplaty)VALUES
('2022-01-01', 1000, '1', 5, 1),
('2022-02-01', 500, '2', 6, 2),
('2022-03-01', 800, '3', 7, 3);

INSERT INTO spisok_tovarov(cena, kolichestvo, id_zakaz, id_tovar, id_spisok_postavki)VALUES 
(100, 2, 5, 1, 1),
(200, 3, 6, 2, 2),
(150, 4, 7, 3, 3);
