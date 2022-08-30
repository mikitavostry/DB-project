CREATE TRIGGER usuwanie_klienta
    ON Klienci
    INSTEAD OF DELETE 
AS
    BEGIN
    DELETE FROM dbo.Zamowienia
    WHERE dbo.Zamowienia.id_zamowienia IN (SELECT id_zamowienia FROM Zapisy_na_dni
        WHERE id_uczestnika in (SELECT id_uczestnika FROM Uczestnicy WHERE 
        id_klienta in (SELECT deleted.id_klienta FROM deleted)))

    DELETE FROM Zapisy_na_warsztaty
    WHERE dbo.Zapisy_na_warsztaty.id_zapisu IN (SELECT Zapisy_na_dni.id_zapisu FROM Zapisy_na_dni
        WHERE id_uczestnika in (SELECT id_uczestnika FROM Uczestnicy WHERE 
        id_klienta in (SELECT deleted.id_klienta FROM deleted)))
    
    DELETE FROM Zapisy_na_dni
    WHERE id_uczestnika IN (SELECT id_uczestnika FROM Uczestnicy U
        WHERE U.id_klienta in (SELECT deleted.id_klienta FROM deleted))
    
    DELETE FROM Uczestnicy
    WHERE id_klienta IN (SELECT deleted.id_klienta FROM deleted)
    
    DELETE FROM Osoby_fizyczne
    WHERE id_klienta IN (SELECT deleted.id_klienta FROM deleted)
    
    DELETE FROM Firmy
    WHERE id_klienta IN (SELECT deleted.id_klienta FROM deleted)
    
    DELETE FROM Klienci
    WHERE id_klienta IN (SELECT deleted.id_klienta FROM deleted)
    END
go

