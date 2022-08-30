-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[Stworz_rezerwacje_na_dzien] 
	-- Add the parameters for the stored procedure here
	@id_d int, 
	@id_uczestnika int,
	@id_zamowienia int = -1 -- Jesli ID zamowienia == -1 -> utworz nowe zamowienie, w przeciwnym wypadku dopisz do poprzedniego
AS
DECLARE @id_zam int
DECLARE @id_klienta int
SET @id_klienta = (SELECT id_klienta FROM Uczestnicy WHERE id_uczestnika=@id_uczestnika)
IF 
	EXISTS(SELECT * FROM Uczestnicy WHERE id_uczestnika = @id_uczestnika) AND 
	EXISTS(SELECT * FROM Dni_konferencji WHERE id_dnia = @id_d) AND
	@id_klienta IS NOT NULL
BEGIN
	DECLARE @ilosc_wolnych_miejsc int

	SET @ilosc_wolnych_miejsc = (SELECT Wolnych_miejsc FROM Ilosc_wolnych_miejsc_na_dzien WHERE id_dnia = @id_d)

	IF (@id_zamowienia = -1 OR NOT EXISTS(SELECT * FROM Zamowienia WHERE id_zamowienia=@id_zamowienia)) AND
		@ilosc_wolnych_miejsc > 0
	BEGIN
		SET NOCOUNT ON;
		
		INSERT INTO Zamowienia (data_zamowienia, id_klienta, kwota_oplacona, termin_platnosci)
			VALUES(GETDATE(), @id_klienta, 0, DATEADD(DD, 14, GETDATE())); -- TODO: Termin platnosci musi byc mniejszy niz dzien konferencji
		SET @id_zam = SCOPE_IDENTITY();
		

		INSERT INTO Zapisy_na_dni(id_dnia, id_uczestnika, id_zamowienia)
			VALUES(@id_d, @id_uczestnika, @id_zam);
	END
	ELSE IF (@ilosc_wolnych_miejsc > 0)
	BEGIN
		SET NOCOUNT ON;
			
		DECLARE @id_klienta_zam int
		SET @id_klienta_zam = (SELECT id_klienta FROM Zamowienia WHERE id_zamowienia = @id_zamowienia)

		IF @id_klienta_zam = @id_klienta AND @id_klienta_zam IS NOT NULL
		BEGIN
			INSERT INTO Zapisy_na_dni(id_dnia, id_uczestnika, id_zamowienia)
				VALUES(@id_d, @id_uczestnika, @id_zamowienia);
		END
	END
END
go

