create table Konferencje
(
    id_konferencji              int identity
        constraint PK_Konferencje
            primary key,
    nazwa_konferencji           nchar(64) not null,
    max_uczestnikow_konferencji int       not null
        constraint max_uczestnikow_konferencji
            check ([max_uczestnikow_konferencji] > 0),
    cena_za_dzien               money     not null
        constraint cena_za_dzien_konferencji
            check ([cena_za_dzien] >= 0),
    data_rozpoczecia            datetime  not null,
    data_zakonczenia            datetime  not null,
    constraint CK_Konferencje
        check ([data_zakonczenia] > [data_rozpoczecia])
)
go

