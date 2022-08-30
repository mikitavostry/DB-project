-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[Dodaj_warsztat] 
	-- Add the parameters for the stored procedure here
	@nazwa_warsztatu nvarchar(64) = 'BRAK_NAZWY',	
	@data_roz datetime,
	@data_zakon datetime,
	@id_prowadzacego int,
	@id_dnia int,
	@max_uczestnikow int = 60,
	@cena_warsztatu money = 100
AS
IF EXISTS (SELECT * FROM Dni_konferencji WHERE id_dnia = @id_dnia) AND EXISTS (SELECT * FROM Prowadzacy WHERE id_prowadzacego = @id_prowadzacego)
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Warsztaty (nazwa_warsztatu, czas_rozpoczecia, czas_zakonczenia, id_prowadzacego, id_dnia, max_uczestnikow_warsztatu, cena_warsztatu)
		VALUES (@nazwa_warsztatu, @data_roz, @data_zakon, @id_prowadzacego, @id_dnia, @max_uczestnikow, @cena_warsztatu);
END
go

