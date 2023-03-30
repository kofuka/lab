-- 2) �������� ������ � ������� ��������, ���� �� ��������� ������� ������� � ����� ����������
USE Students
BEGIN TRANSACTION;
DECLARE @fam NVARCHAR(20) = '���'
DECLARE @imya NVARCHAR(20) = '����'
DECLARE @otch NVARCHAR(20) = '��'
DECLARE @passport NVARCHAR(20) = '���������'
DECLARE @pasword NVARCHAR(20) = '01010'
DECLARE @red_date NVARCHAR(20) = '20.20.2022'
DECLARE @id_gruppa INT = '1'
DECLARE @id_nas_punkt INT = '3'
DECLARE @id_natsionalnost INT = '4'
DECLARE @id_pol INT = '2'
DECLARE @id_grajdanstvo INT = '3'
DECLARE @comments NVARCHAR(20) = '�������'
IF LEN(@fam) > 0
BEGIN
INSERT INTO student(fam, imya, otch, passport, pasword, red_date, id_gruppa, id_nas_punkt, id_natsionalnost, id_pol, id_grajdanstvo, comments)
VALUES (@fam, @imya, @otch, @passport, @pasword, @red_date, @id_gruppa, @id_nas_punkt, @id_natsionalnost, @id_pol, @id_grajdanstvo, @comments)
SELECT SCOPE_IDENTITY() AS id_student
else
begin
  ROLLBACK TRANSACTION
  print 'transaction rollback'
end
COMMIT TRANSACTION;
