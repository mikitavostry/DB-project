create view view_name as
select Z.id_klienta, F.nazwa_firmy, SUM(Z.kwota_oplacona) as 'Kwota opłacona' FROM dbo.Firmy F INNER JOIN dbo.Klienci K on K.id_klienta = F.id_klienta INNER JOIN dbo.Uczestnicy U on K.id_klienta = U.id_klienta INNER JOIN dbo.Zapisy_na_dni Znd on U.id_uczestnika = Znd.id_uczestnika INNER JOIN dbo.Zamowienia Z on Znd.id_zamowienia = Z.id_zamowienia
GROUP BY Z.id_klienta, F.nazwa_firmy
go

