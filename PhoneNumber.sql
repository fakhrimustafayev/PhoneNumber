ALTER FUNCTION dbo.PhoneNumber
(
    @PhoneNumber NVARCHAR(20)
)
RETURNS NVARCHAR(20)
AS
BEGIN
    DECLARE @FormattedNumber NVARCHAR(20)

  
        SET @PhoneNumber = REPLACE(@PhoneNumber, '+', '') -- '+' simvolu varsa təmizleyirik
        SET @PhoneNumber = REPLACE(@PhoneNumber, ' ', '') -- boşluq varsa təmizləyirik

    -- eger 0-9 arası reqemlerden kenar başqa simvol yazılarsa NULL qaytarsın
  IF @PhoneNumber LIKE '%[^0-9]%'
BEGIN
    RETURN NULL
END

    -- Ən az 9 rəqəm olmalıdır
    IF LEN(@PhoneNumber) < 9
    BEGIN
        -- 9dan az reqem varsa NULL döndür
        RETURN NULL
    END

    -- +994 elevə ederek nömreni düzeldirik
    SET @FormattedNumber = '+994 (' + SUBSTRING(@PhoneNumber, LEN(@PhoneNumber) - 9, 3) + ') ' +
                          SUBSTRING(@PhoneNumber, LEN(@PhoneNumber) - 6, 3) + ' ' +
                          SUBSTRING(@PhoneNumber, LEN(@PhoneNumber) - 3, 2) + ' ' +
                          SUBSTRING(@PhoneNumber, LEN(@PhoneNumber) - 1, 2)

    RETURN @FormattedNumber
END



