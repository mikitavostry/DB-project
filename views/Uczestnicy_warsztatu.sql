CREATE VIEW dbo.Uczestnicy_warsztatu
AS
SELECT        dbo.Warsztaty.id_warsztatu, dbo.Warsztaty.nazwa_warsztatu, dbo.Uczestnicy.imie, dbo.Uczestnicy.nazwisko
FROM            dbo.Warsztaty INNER JOIN
                         dbo.Zapisy_na_warsztaty ON dbo.Warsztaty.id_warsztatu = dbo.Zapisy_na_warsztaty.id_warsztatu INNER JOIN
                         dbo.Zapisy_na_dni ON dbo.Zapisy_na_warsztaty.id_zapisu = dbo.Zapisy_na_dni.id_zapisu INNER JOIN
                         dbo.Uczestnicy ON dbo.Zapisy_na_dni.id_uczestnika = dbo.Uczestnicy.id_uczestnika
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
         Begin Table = "Warsztaty"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 275
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zapisy_na_warsztaty"
            Begin Extent = 
               Top = 6
               Left = 313
               Bottom = 119
               Right = 483
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zapisy_na_dni"
            Begin Extent = 
               Top = 6
               Left = 521
               Bottom = 136
               Right = 691
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Uczestnicy"
            Begin Extent = 
               Top = 6
               Left = 729
               Bottom = 136
               Right = 899
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
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
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
', 'SCHEMA', 'dbo', 'VIEW', 'Uczestnicy_warsztatu'
go

exec sp_addextendedproperty 'MS_DiagramPaneCount', 1, 'SCHEMA', 'dbo', 'VIEW', 'Uczestnicy_warsztatu'
go

