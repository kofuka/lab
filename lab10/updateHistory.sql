USE Students
GO
CREATE TRIGGER student_UPDATE
ON student
AFTER UPDATE
AS
INSERT INTO History (id_student, Operation)
SELECT Id, '�������� �������' + fam + imya + '�������' + passport + '���� �����������' + red_date
FROM INSERTED
