CREATE PROCEDURE dbo.Dodaj_klienta_firma
    @nazwa_firmy nchar(64)=NULL,
    @telefon varchar(16)=NULL,
    @email nchar(64)=NULL,
    @adres nchar(64)=NULL
AS

    BEGIN
        DECLARE @id_klienta int
        SET NOCOUNT ON
        INSERT INTO dbo.Klienci VALUES (@telefon, @email, @adres)
        SET @id_klienta = SCOPE_IDENTITY()
        INSERT INTO dbo.Firmy VALUES (@id_klienta, @nazwa_firmy)
    end
go

