create view Kwota_opłacona_osoby_fizyczne as
select Z.id_klienta, O.imie, O.nazwisko, SUM(Z.kwota_oplacona) as 'Kwota opłacona' FROM dbo.Osoby_fizyczne O INNER JOIN dbo.Klienci K on K.id_klienta = O.id_klienta INNER JOIN dbo.Uczestnicy U on K.id_klienta = U.id_klienta INNER JOIN dbo.Zapisy_na_dni Znd on U.id_uczestnika = Znd.id_uczestnika INNER JOIN dbo.Zamowienia Z on Znd.id_zamowienia = Z.id_zamowienia
GROUP BY Z.id_klienta, O.imie, O.nazwisko
go

