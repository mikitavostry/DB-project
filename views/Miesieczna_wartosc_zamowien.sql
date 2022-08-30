CREATE VIEW dbo.Miesieczna_wartosc_zamowien
AS
SELECT        YEAR(dbo.Zamowienia.data_zamowienia) AS rok, MONTH(dbo.Zamowienia.data_zamowienia) AS miesiac, SUM(dbo.Wartosc_zapisu_na_dzien.wartosc_zapisu) AS wartosc_zamowien
FROM            dbo.Zapisy_na_dni INNER JOIN
                         dbo.Zamowienia ON dbo.Zapisy_na_dni.id_zamowienia = dbo.Zamowienia.id_zamowienia INNER JOIN
                         dbo.Wartosc_zapisu_na_dzien ON dbo.Zapisy_na_dni.id_zapisu = dbo.Wartosc_zapisu_na_dzien.id_zapisu
GROUP BY YEAR(dbo.Zamowienia.data_zamowienia), MONTH(dbo.Zamowienia.data_zamowienia)
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
         Begin Table = "Wartosc_zapisu_na_dzien"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 105
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zamowienia"
            Begin Extent = 
               Top = 44
               Left = 542
               Bottom = 226
               Right = 722
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Zapisy_na_dni"
            Begin Extent = 
               Top = 41
               Left = 276
               Bottom = 171
               Right = 446
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
         Column = 3060
         Alias = 1890
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1080
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', 'dbo', 'VIEW', 'Miesieczna_wartosc_zamowien'
go

exec sp_addextendedproperty 'MS_DiagramPaneCount', 1, 'SCHEMA', 'dbo', 'VIEW', 'Miesieczna_wartosc_zamowien'
go

