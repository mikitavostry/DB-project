CREATE PROCEDURE dbo.Dodaj_prowadzacego @imie nchar(64) = NULL, @nazwisko nchar(64)=NULL
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO dbo.Prowadzacy VALUES (@imie, @nazwisko);
    end
go

