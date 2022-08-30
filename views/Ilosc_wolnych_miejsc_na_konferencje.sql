-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Ilosc_wolnych_miejsc_na_konferencje]
	-- Add the parameters for the stored procedure here
	@id_konferencji int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF EXISTS(SELECT * FROM Konferencje WHERE id_konferencji=@id_konferencji)
	BEGIN
		DECLARE @zajete int
		SET @zajete = (SELECT [zajete miejsca]
			FROM dbo.Ilosc_zajetych_miejsc
			WHERE id_konferencji=@id_konferencji
			)
		SELECT (max_uczestnikow_konferencji - @zajete) AS wolne_miejsca
			FROM dbo.Konferencje
			WHERE id_konferencji=@id_konferencji
			RETURN
	END
END
go

