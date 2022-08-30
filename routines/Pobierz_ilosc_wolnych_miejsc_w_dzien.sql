-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE Pobierz_ilosc_wolnych_miejsc_w_dzien 
	-- Add the parameters for the stored procedure here
	@id_dnia int
AS
DECLARE @return_value int
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SET @return_value = (SELECT Wolnych_miejsc FROM Ilosc_wolnych_miejsc_na_dzien WHERE id_dnia = @id_dnia)

    SELECT 'Return Value' = @return_value
END
go

