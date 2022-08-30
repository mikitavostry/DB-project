create table Prowadzacy
(
    id_prowadzacego int identity
        constraint PK_Prowadzacy
            primary key,
    imie            nchar(64) not null,
    nazwisko        nchar(64) not null
)
go

