-- 1)	������ ������ �� ������  �� �������
DECLARE @id_zaka INT

SELECT @id_zaka = id_zakaz 
FROM zakaz
WHERE id_sostoyanie	= (SELECT id_sostoyanie FROM sostoyanie WHERE sostoyanie = '�������') and data >= '2023-02-11' and data <= '2023-02-13'

SELECT id_tovar, kolichestvo
FROM spisok_tovarov
WHERE id_zakaz = @id_zaka