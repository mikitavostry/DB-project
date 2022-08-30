create table Firmy
(
    id_klienta  int       not null
        constraint PK_Firmy
            primary key
        constraint FK_Firmy_Klienci
            references Klienci,
    nazwa_firmy nchar(64) not null
)
go

