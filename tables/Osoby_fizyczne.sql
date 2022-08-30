create table Osoby_fizyczne
(
    id_klienta int       not null
        constraint PK_Osoby_fizyczne
            primary key
        constraint FK_Osoby_fizyczne_Klienci
            references Klienci,
    imie       nchar(64) not null,
    nazwisko   nchar(64) not null
)
go

