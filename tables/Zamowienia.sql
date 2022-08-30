create table Zamowienia
(
    id_zamowienia    int identity
        constraint PK_Zamowienia
            primary key,
    data_zamowienia  datetime not null,
    id_klienta       int      not null,
    kwota_oplacona   money    not null
        constraint CK_Zamowienia
            check ([kwota_oplacona] >= 0),
    termin_platnosci datetime not null,
    constraint CK_Zamowienia_1
        check ([termin_platnosci] > [data_zamowienia])
)
go

