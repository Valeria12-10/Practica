CREATE TRIGGER ПользователиГруппа_INSERT
ON ПользователиГруппа
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
        IF NOT EXISTS (SELECT 1 FROM ПользователиГруппа WHERE Логин = @NewLogin)
            SET @UniqueLogin = 1;
     END;

     SELECT @Email = [Email] FROM inserted;
	 SELECT @Password = [Пароль] FROM inserted;

     SET @NewLogin = LEFT(@Email, CHARINDEX('@', @Email) - 1);

    UPDATE ПользователиГруппа
    SET  Логин = @NewLogin
    WHERE ID_ПользователяГруппа = (SELECT ID_ПользователяГруппа FROM inserted);


    PRINT 'Создан уникальный логин: ' + @NewLogin;
    PRINT 'Сообщение отправлено на email: ' + @Email;
  
END;