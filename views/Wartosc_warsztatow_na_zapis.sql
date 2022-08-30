CREATE VIEW dbo.Wartosc_warsztatow_na_zapis
AS
SELECT        dbo.Zapisy_na_dni.id_zapisu, SUM(ISNULL(dbo.Warsztaty.cena_warsztatu, 0)) AS wartosc_rezerwacji, COUNT(dbo.Warsztaty.cena_warsztatu) AS ilosc_rezrewacji
FROM            dbo.Zapisy_na_warsztaty INNER JOIN
                         dbo.Warsztaty ON dbo.Zapisy_na_warsztaty.id_warsztatu = dbo.Warsztaty.id_warsztatu RIGHT OUTER JOIN
                         dbo.Zapisy_na_dni ON dbo.Zapisy_na_warsztaty.id_zapisu = dbo.Zapisy_na_dni.id_zapisu
GROUP BY dbo.Zapisy_na_dni.id_zapisu
go

exec sp_addextendedproperty 'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[18] 2[9] 3) )"
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
         Begin Table = "Zapisy_na_warsztaty"
            Begin Extent = 
               Top = 2
               Left = 297
               Bottom = 115
               Right = 467
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Warsztaty"
            Begin Extent = 
               Top = 208
               Left = 29
               Bottom = 338
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zapisy_na_dni"
            Begin Extent = 
               Top = 35
               Left = 528
               Bottom = 165
               Right = 698
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
', 'SCHEMA', 'dbo', 'VIEW', 'Wartosc_warsztatow_na_zapis'
go

exec sp_addextendedproperty 'MS_DiagramPaneCount', 1, 'SCHEMA', 'dbo', 'VIEW', 'Wartosc_warsztatow_na_zapis'
go

