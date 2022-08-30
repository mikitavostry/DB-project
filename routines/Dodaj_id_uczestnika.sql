use u_kozlecki
go

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Dodaj_id_uczestnika
	-- Add the parameters for the stored procedure here
	@id_zapisu int,
	@id_uczestnika int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF EXISTS (SELECT * FROM Zapisy_na_dni WHERE id_zapisu=@id_zapisu)
	BEGIN
		UPDATE Zapisy_na_dni 
		SET id_uczestnika=@id_uczestnika
		WHERE id_zapisu=@id_zapisu
	END
END
go

