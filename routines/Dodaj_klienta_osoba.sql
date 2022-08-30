CREATE PROCEDURE dbo.Dodaj_osoba_fizyczna
    @imie nchar(64) = NULL,
    @nazwisko nchar(64)=NULL,
    @telefon varchar(16)=NULL,
    @email nchar(64)=NULL,
    @adres nchar(64)=NULL
AS
    
    BEGIN
        DECLARE @id_klienta int
        SET NOCOUNT ON
        INSERT INTO dbo.Klienci VALUES (@telefon, @email, @adres)
        SET @id_klienta = SCOPE_IDENTITY()
        INSERT INTO dbo.Osoby_fizyczne VALUES (@id_klienta, @imie, @nazwisko)
    end
go

