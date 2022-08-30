create table Warsztaty
(
    id_warsztatu              int identity
        constraint PK_Warsztaty
            primary key,
    nazwa_warsztatu           nchar(64) not null,
    czas_rozpoczecia          datetime  not null,
    czas_zakonczenia          datetime  not null,
    id_prowadzacego           int       not null
        constraint FK_Warsztaty_Prowadzacy
            references Prowadzacy,
    id_dnia                   int       not null
        constraint FK_Warsztaty_Dni_konferencji
            references Dni_konferencji,
    max_uczestnikow_warsztatu int       not null
        constraint CK_Warsztaty
            check ([max_uczestnikow_warsztatu] > 0),
    cena_warsztatu            money     not null
        constraint CK_Warsztaty_1
            check ([cena_warsztatu] >= 0),
    constraint CK_Warsztaty_2
        check ([czas_zakonczenia] > [czas_rozpoczecia])
)
go

