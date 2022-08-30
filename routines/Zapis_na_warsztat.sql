CREATE PROCEDURE [dbo].[Zapis_na_warsztat]
	-- Add the parameters for the stored procedure here
	@id_warsztatu int = NULL,
	@id_uczestnika int = NULL
AS
BEGIN
    DECLARE @id_klienta int 
    SET @id_klienta = (SELECT id_klienta FROM Uczestnicy WHERE id_uczestnika = @id_uczestnika)
    IF
	    EXISTS(SELECT * FROM Warsztaty WHERE id_warsztatu = @id_warsztatu) AND
	    @id_klienta IS NOT NULL
        BEGIN
            DECLARE @ilosc_wolnych_miejsc int
	        SET @ilosc_wolnych_miejsc = (select wolne_miejsca from Ilosc_wolnych_miejsc_warsztat
	        where id_warsztatu = @id_warsztatu)
            DECLARE @id_dnia int
            SET @id_dnia = (select id_dnia from Warsztaty where id_warsztatu = @id_warsztatu)

	        IF EXISTS(SELECT * FROM Zapisy_na_dni WHERE id_uczestnika = @id_uczestnika and id_dnia = @id_dnia)
	               and @ilosc_wolnych_miejsc > 0
	            BEGIN
		            SET NOCOUNT ON;
                    DECLARE @id_zamowienia int
		            SET @id_zamowienia = (SELECT id_zamowienia FROM Zapisy_na_dni WHERE id_uczestnika = @id_uczestnika
		                                                                and id_dnia = @id_dnia)
		            DECLARE @id_zapisu int
		            SET @id_zapisu = (SELECT id_zapisu FROM Zapisy_na_dni WHERE id_uczestnika = @id_uczestnika
		                                                                and id_dnia = @id_dnia)
		            IF NOT EXISTS(SELECT * FROM Zapisy_na_warsztaty WHERE id_warsztatu = @id_warsztatu 
		                                                              and id_zapisu = @id_zapisu)
		                BEGIN
                            INSERT INTO dbo.Zapisy_na_warsztaty VALUES (@id_warsztatu, @id_zapisu)
                        END
                    END
        END
END
go

