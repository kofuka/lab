USE Students
GO
CREATE TRIGGER student_INSERT
ON student
AFTER INSERT
AS
INSERT INTO History (id_student, Operation)
SELECT Id, '�������� �������' + fam + imya + '�������' + passport + '���� �����������' + red_date
FROM INSERTED
