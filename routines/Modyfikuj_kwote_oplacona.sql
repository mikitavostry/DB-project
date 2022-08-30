
CREATE PROCEDURE [dbo].[Modyfikuj_kwote_oplacona] @id_zamowienia int, @wplata money
AS
BEGIN
	SET NOCOUNT ON;
	IF EXISTS(SELECT id_zamowienia FROM dbo.Zamowienia WHERE id_zamowienia = @id_zamowienia)
    BEGIN
		DECLARE @oplacono money
		SET @oplacono = (SELECT kwota_oplacona FROM dbo.Zamowienia WHERE id_zamowienia = @id_zamowienia)
		SET @oplacono = @oplacono + @wplata
		UPDATE dbo.Zamowienia
			SET kwota_oplacona = @oplacono
			WHERE id_zamowienia = @id_zamowienia
	END
END
go

