create table Uczestnicy
(
    id_uczestnika int identity
        constraint PK_Uczestnicy
            primary key,
    id_klienta    int       not null
        constraint FK_Uczestnicy_Klienci
            references Klienci,
    imie          nchar(64) not null,
    nazwisko      nchar(64) not null
)
go

