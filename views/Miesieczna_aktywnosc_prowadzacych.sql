CREATE VIEW dbo.Miesieczna_aktywnosc_prowadzacych
AS
SELECT        YEAR(dbo.Warsztaty.czas_rozpoczecia) AS rok, MONTH(dbo.Warsztaty.czas_rozpoczecia) AS miesiac, dbo.Prowadzacy.id_prowadzacego, dbo.Prowadzacy.imie, dbo.Prowadzacy.nazwisko, COUNT(*) 
                         AS przeprowadzaone_warsztaty
FROM            dbo.Prowadzacy RIGHT OUTER JOIN
                         dbo.Warsztaty ON dbo.Prowadzacy.id_prowadzacego = dbo.Warsztaty.id_prowadzacego
GROUP BY YEAR(dbo.Warsztaty.czas_rozpoczecia), MONTH(dbo.Warsztaty.czas_rozpoczecia), dbo.Prowadzacy.id_prowadzacego, dbo.Prowadzacy.imie, dbo.Prowadzacy.nazwisko
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
         Begin Table = "Prowadzacy"
            Begin Extent = 
               Top = 24
               Left = 97
               Bottom = 150
               Right = 290
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Warsztaty"
            Begin Extent = 
               Top = 32
               Left = 446
               Bottom = 241
               Right = 683
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
         Column = 1815
         Alias = 2745
         Table = 1170
         Output = 915
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
', 'SCHEMA', 'dbo', 'VIEW', 'Miesieczna_aktywnosc_prowadzacych'
go

exec sp_addextendedproperty 'MS_DiagramPaneCount', 1, 'SCHEMA', 'dbo', 'VIEW', 'Miesieczna_aktywnosc_prowadzacych'
go

