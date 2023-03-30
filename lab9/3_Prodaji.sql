-- »зменение цен на товары, поставленные за период
UPDATE price_list SET cena = 134
WHERE data >= '2022-09-01' and data <= '2022-12-01';
