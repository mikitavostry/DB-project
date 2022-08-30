create table Dni_konferencji
(
    id_dnia        int identity
        constraint PK_Dni_konferencji_1
            primary key,
    id_konferencji int not null
        constraint FK_Dni_konferencji_Konferencje
            references Konferencje
)
go

