CREATE VIEW dbo.Suma_wplat_od_poszczegolnych_klientow
AS
SELECT        TOP (100) PERCENT dbo.Klienci.id_klienta, dbo.Osoby_fizyczne.imie, dbo.Osoby_fizyczne.nazwisko, dbo.Firmy.nazwa_firmy, SUM(dbo.Zamowienia.kwota_oplacona) AS suma_wplat
FROM            dbo.Klienci INNER JOIN
                         dbo.Zamowienia INNER JOIN
                         dbo.Zapisy_na_dni ON dbo.Zamowienia.id_zamowienia = dbo.Zapisy_na_dni.id_zamowienia INNER JOIN
                         dbo.Uczestnicy ON dbo.Zapisy_na_dni.id_uczestnika = dbo.Uczestnicy.id_uczestnika ON dbo.Klienci.id_klienta = dbo.Uczestnicy.id_klienta LEFT OUTER JOIN
                         dbo.Firmy ON dbo.Klienci.id_klienta = dbo.Firmy.id_klienta LEFT OUTER JOIN
                         dbo.Osoby_fizyczne ON dbo.Klienci.id_klienta = dbo.Osoby_fizyczne.id_klienta
GROUP BY dbo.Klienci.id_klienta, dbo.Osoby_fizyczne.imie, dbo.Osoby_fizyczne.nazwisko, dbo.Firmy.nazwa_firmy
go

exec sp_addextendedproperty 'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Zamowienia"
            Begin Extent = 
               Top = 46
               Left = 36
               Bottom = 194
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zapisy_na_dni"
            Begin Extent = 
               Top = 53
               Left = 366
               Bottom = 183
               Right = 536
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Uczestnicy"
            Begin Extent = 
               Top = 109
               Left = 653
               Bottom = 239
               Right = 823
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Klienci"
            Begin Extent = 
               Top = 103
               Left = 995
               Bottom = 238
               Right = 1165
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Osoby_fizyczne"
            Begin Extent = 
               Top = 36
               Left = 1315
               Bottom = 149
               Right = 1485
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Firmy"
            Begin Extent = 
               Top = 193
               Left = 1313
               Bottom = 289
               Right = 1483
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Colum', 'SCHEMA', 'dbo', 'VIEW', 'Suma_wplat_od_poszczegolnych_klientow'
go

exec sp_addextendedproperty 'MS_DiagramPane2', N'n = 5445
         Alias = 2040
         Table = 2760
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', 'dbo', 'VIEW', 'Suma_wplat_od_poszczegolnych_klientow'
go

exec sp_addextendedproperty 'MS_DiagramPaneCount', 2, 'SCHEMA', 'dbo', 'VIEW', 'Suma_wplat_od_poszczegolnych_klientow'
go

