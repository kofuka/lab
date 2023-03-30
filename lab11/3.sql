BEGIN TRANSACTION

DECLARE @id_pr INT = 4 
DECLARE @cena DECIMAL(10, 2) = 100.00 
DECLARE @comm NVARCHAR(50) = 'h'
DECLARE @id_tov INT = 2

IF EXISTS (
  SELECT 1 FROM price_list WHERE id_price_list = @id_pr AND cena > 0
)
BEGIN
  ROLLBACK TRANSACTION
  PRINT 'transaction rollback'
END
ELSE
BEGIN
  
  INSERT INTO price_list(id_price_list, data, cena, comments, id_tovar)
  VALUES (@id_pr, GETDATE(), @cena, @comm, @id_tov)

  SELECT SCOPE_IDENTITY() AS NewOrderId 
END

COMMIT TRANSACTION