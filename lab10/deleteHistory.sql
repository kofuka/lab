USE Students
GO
CREATE TRIGGER Products_DELETE
ON student
AFTER DELETE
AS
INSERT INTO History (id_student, Operation)
SELECT Id, '������ �������' + fam + imya + '�������' + passport + '���� �����������' + red_date
FROM DELETED