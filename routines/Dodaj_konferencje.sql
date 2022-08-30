-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[Dodaj_konferencje] 
	-- Add the parameters for the stored procedure here
	@nazwa nvarchar(64) = 'BRAK_NAZWY', 
	@max int = 300,
	@cena money = 0,
	@data_roz datetime,
	@data_zakon datetime
AS
DECLARE @id INT
DECLARE @counter INT
SET @counter=DATEDIFF(d, @data_roz, @data_zakon)
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Konferencje (nazwa_konferencji, max_uczestnikow_konferencji, cena_za_dzien, data_rozpoczecia, data_zakonczenia)
		VALUES (@nazwa, @max, @cena, @data_roz, @data_zakon);

	SET @id = SCOPE_IDENTITY();
END
WHILE (@counter >= 0)
BEGIN
	INSERT INTO Dni_konferencji (id_konferencji)
		VALUES (@id);
	SET @counter = @counter - 1
END
go

