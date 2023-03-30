USE Students
GO
CREATE TRIGGER student_INSERT
ON student
AFTER INSERT
AS
INSERT INTO History (id_student, Operation)
SELECT Id, 'Добавлен студент' + fam + imya + 'паспорт' + passport + 'Дата регистрации' + red_date
FROM INSERTED
