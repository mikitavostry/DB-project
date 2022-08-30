CREATE view Lista_darmowych_warsztatów as
SELECT dbo.Warsztaty.id_warsztatu, dbo.Warsztaty.nazwa_warsztatu,dbo.Warsztaty.czas_rozpoczecia, dbo.Warsztaty.czas_zakonczenia,
       dbo.Warsztaty.id_prowadzacego, dbo.Warsztaty.max_uczestnikow_warsztatu, dbo.Warsztaty.cena_warsztatu, Dk.id_konferencji
FROM dbo.Warsztaty
INNER JOIN Dni_konferencji Dk on Dk.id_dnia = Warsztaty.id_dnia
WHERE dbo.Warsztaty.cena_warsztatu = 0
go

