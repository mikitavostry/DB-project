create table Zapisy_na_warsztaty
(
    id_rezerwacji int identity
        constraint PK_Rezerwacje_na_warsztaty
            primary key,
    id_warsztatu  int not null
        constraint FK_Rezerwacje_na_warsztaty_Warsztaty
            references Warsztaty,
    id_zapisu     int not null
        constraint FK_Zapisy_na_warsztaty_Zapisy_na_dni
            references Zapisy_na_dni
)
go

