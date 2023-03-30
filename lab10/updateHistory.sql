USE Students
GO
CREATE TRIGGER student_UPDATE
ON student
AFTER UPDATE
AS
INSERT INTO History (id_student, Operation)
SELECT Id, 'Добавлен студент' + fam + imya + 'паспорт' + passport + 'Дата регистрации' + red_date
FROM INSERTED
