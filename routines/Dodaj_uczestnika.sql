
CREATE PROCEDURE [dbo].[Dodaj_uczestnika] @id_klienta int, @imie varchar(64), @nazwisko varchar(64)
AS
BEGIN
	SET NOCOUNT ON;
	IF (@id_klienta IN (SELECT id_klienta FROM Klienci WHERE id_klienta = @id_klienta))
    BEGIN
		INSERT INTO dbo.Uczestnicy (imie, nazwisko, id_klienta) VALUES (@imie, @nazwisko, @id_klienta)
	END
END
go

