create table Klienci
(
    id_klienta int identity
        constraint PK_Klienci
            primary key,
    telefon    varchar(16) not null
        constraint CK_Klienci
            check (NOT [telefon] like '%[^0-9]%'),
    email      nchar(64)   not null
        constraint CK_Klienci_1
            check ([email] like '_%@__%.__%'),
    adres      nchar(64)   not null
)
go

