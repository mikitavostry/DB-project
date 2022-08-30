create view Ilosc_wolnych_miejsc as
SELECT Konferencje.id_konferencji, Konferencje.max_uczestnikow_konferencji -  COUNT(Zapisy_na_dni.id_dnia) as 'wolne miejsca'
FROM Konferencje
INNER JOIN Dni_konferencji
    ON Dni_konferencji.id_konferencji = Konferencje.id_konferencji
INNER JOIN Zapisy_na_dni
    ON Zapisy_na_dni.id_dnia = Dni_konferencji.id_dnia
GROUP BY Konferencje.id_konferencji, Konferencje.max_uczestnikow_konferencji
go

