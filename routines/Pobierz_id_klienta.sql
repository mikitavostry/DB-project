-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[Pobierz_id_klienta] 
	-- Add the parameters for the stored procedure here
	@id_uczestnika int
AS
DECLARE @return_value int
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SET @return_value = (SELECT id_klienta FROM Uczestnicy WHERE id_uczestnika = @id_uczestnika)

    SELECT 'Return Value' = @return_value
END
go

