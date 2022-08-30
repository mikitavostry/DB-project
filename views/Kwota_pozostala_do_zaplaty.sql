create view Kwota_pozostala_do_zaplaty as
select K.id_klienta, SUM(Wz.wartosc_zamowienia) - SUM(kwota_oplacona) as 'do_zaplaty'  from Klienci K inner join Uczestnicy U on K.id_klienta = U.id_klienta inner join Zapisy_na_dni Znd on U.id_uczestnika = Znd.id_uczestnika inner join Zamowienia Z on Znd.id_zamowienia = Z.id_zamowienia inner join Wartosc_zamowienia Wz on Z.id_zamowienia = Wz.id_zamowienia
group by K.id_klienta
go

