-- 1) declare @a int = 10, @b int = 15, @c  int =0
-- ���� @c >= 0 �� ��������� ����� �����, ����� ����� ����������   

BEGIN TRANSACTION;
declare @a int = 10, @b int = 15, @c  int =0;
if @c >= 0
begin
print @a + @b + @c;
end
else
rollback

COMMIT TRANSACTION;