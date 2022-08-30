
CREATE TRIGGER [dbo].[usun_konferencje] ON [dbo].[Konferencje] 
	INSTEAD OF DELETE
AS 
BEGIN
   DELETE FROM Zapisy_na_warsztaty WHERE Zapisy_na_warsztaty.id_warsztatu IN (
		SELECT Warsztaty.id_warsztatu FROM Warsztaty WHERE Warsztaty.id_dnia IN (
			SELECT Dni_konferencji.id_dnia FROM Dni_konferencji WHERE Dni_konferencji.id_konferencji IN (
				SELECT deleted.id_konferencji FROM deleted
			)
		)
	)


   DELETE FROM Zapisy_na_dni WHERE Zapisy_na_dni.id_dnia in (
		SELECT Dni_konferencji.id_dnia FROM Dni_konferencji WHERE Dni_konferencji.id_konferencji IN (
			SELECT deleted.id_konferencji FROM deleted
			)
		)


   DELETE FROM Warsztaty WHERE Warsztaty.id_dnia in (
		SELECT Dni_konferencji.id_dnia FROM Dni_konferencji WHERE Dni_konferencji.id_konferencji IN (
			SELECT deleted.id_konferencji FROM deleted
			)
		)

   DELETE FROM Dni_konferencji WHERE Dni_konferencji.id_konferencji IN (
		SELECT deleted.id_konferencji FROM deleted
	)

   DELETE FROM Konferencje WHERE Konferencje.id_konferencji in (
		SELECT deleted.id_konferencji FROM deleted
	)
   
END
go

