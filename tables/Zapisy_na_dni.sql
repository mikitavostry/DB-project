create table Zapisy_na_dni
(
    id_zapisu     int identity
        constraint PK_Zapisy_na_dni
            primary key,
    id_dnia       int not null
        constraint FK_Zapisy_na_dni_Dni_konferencji
            references Dni_konferencji,
    id_uczestnika int not null
        constraint FK_Zapisy_na_konferencje_Uczestnicy
            references Uczestnicy,
    id_zamowienia int not null
        constraint FK_Zapisy_na_dni_Zamowienia
            references Zamowienia
)
go

