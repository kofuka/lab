-- 3)	������ ������� ������������ �� ���� ������
SELECT *
FROM spisok_postavki
WHERE id_spisok_postavki in (SELECT id_tovar FROM tovar WHERE tovar = '����')
