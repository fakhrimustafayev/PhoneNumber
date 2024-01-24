SELECT dbo.PhoneNumber('0503421296') AS FormattedNumber
-- Çıktı: +994 (050) 342 12 96

SELECT dbo.PhoneNumber('505643278') AS FormattedNumber
-- Çıktı: +994 (50) 564 32 72

SELECT dbo.PhoneNumber('9940501588448') AS FormattedNumber
-- Çıktı: +994 (050) 158 84 48

SELECT dbo.PhoneNumber('+9940504761966') AS FormattedNumber
-- Çıktı: +994 (050) 476 19 66

SELECT dbo.PhoneNumber('123hewr56789') AS FormattedNumber
-- Çıktı: NULL (Geçersiz telefon numarası)