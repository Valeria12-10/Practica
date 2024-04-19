CREATE TRIGGER ������������������_INSERT
ON ������������������
AFTER INSERT
AS
BEGIN
     DECLARE @NewLogin NVARCHAR(50);
     DECLARE @Email NVARCHAR(100);
	 DECLARE @Password NVARCHAR(100);

	 DECLARE @UniqueLogin BIT = 0;

     WHILE @UniqueLogin = 0
     BEGIN

     SET @NewLogin = 'User' + CAST(NEWID() AS NVARCHAR(36));
        IF NOT EXISTS (SELECT 1 FROM ������������������ WHERE ����� = @NewLogin)
            SET @UniqueLogin = 1;
     END;

     SELECT @Email = [Email] FROM inserted;
	 SELECT @Password = [������] FROM inserted;

     SET @NewLogin = LEFT(@Email, CHARINDEX('@', @Email) - 1);

    UPDATE ������������������
    SET  ����� = @NewLogin
    WHERE ID_������������������ = (SELECT ID_������������������ FROM inserted);


    PRINT '������ ���������� �����: ' + @NewLogin;
    PRINT '��������� ���������� �� email: ' + @Email;
  
END;