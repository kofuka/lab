-- 1) declare @a int = 10, @b int = 15, @c  int =0
-- Если @c >= 0 то вычислить сумму чисел, иначе откат транзакции   

BEGIN TRANSACTION;
declare @a int = 10, @b int = 15, @c  int =0;
if @c >= 0
begin
print @a + @b + @c;
end
else
rollback

COMMIT TRANSACTION;