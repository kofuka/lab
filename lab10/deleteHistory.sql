USE Students
GO
CREATE TRIGGER Products_DELETE
ON student
AFTER DELETE
AS
INSERT INTO History (id_student, Operation)
SELECT Id, 'Удален студент' + fam + imya + 'паспорт' + passport + 'Дата регистрации' + red_date
FROM DELETED