-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Termin_platnosci]
	-- Add the parameters for the stored procedure here
	@id_klienta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF EXISTS(SELECT * FROM Klienci WHERE id_klienta=@id_klienta)
	BEGIN
		SELECT z.id_zamowienia, z.termin_platnosci
		FROM Klienci AS k
		JOIN Uczestnicy AS u ON u.id_klienta = k.id_klienta
		JOIN Zapisy_na_dni AS znd ON znd.id_uczestnika = u.id_uczestnika
		JOIN Zamowienia AS z ON z.id_zamowienia = znd.id_zamowienia
		WHERE k.id_klienta = @id_klienta
		GROUP BY z.id_zamowienia, z.termin_platnosci
	END
END
go

