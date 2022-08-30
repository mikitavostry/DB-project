CREATE VIEW dbo.Osoby_fizyczne_z_nieoplaconymi_zamowieniami
AS
SELECT        dbo.Klienci_z_nieoplaconymi_zamowieniami.id_klienta, dbo.Osoby_fizyczne.imie, dbo.Osoby_fizyczne.nazwisko, dbo.Klienci_z_nieoplaconymi_zamowieniami.kwota_do_zaplacenia, dbo.Klienci.telefon, dbo.Klienci.email, 
                         dbo.Klienci.adres
FROM            dbo.Klienci_z_nieoplaconymi_zamowieniami INNER JOIN
                         dbo.Osoby_fizyczne ON dbo.Klienci_z_nieoplaconymi_zamowieniami.id_klienta = dbo.Osoby_fizyczne.id_klienta INNER JOIN
                         dbo.Klienci ON dbo.Osoby_fizyczne.id_klienta = dbo.Klienci.id_klienta
go

exec sp_addextendedproperty 'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
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
         Begin Table = "Klienci_z_nieoplaconymi_zamowieniami"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Osoby_fizyczne"
            Begin Extent = 
               Top = 6
               Left = 276
               Bottom = 119
               Right = 446
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Klienci"
            Begin Extent = 
               Top = 6
               Left = 484
               Bottom = 136
               Right = 654
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
', 'SCHEMA', 'dbo', 'VIEW', 'Osoby_fizyczne_z_nieoplaconymi_zamowieniami'
go

exec sp_addextendedproperty 'MS_DiagramPaneCount', 1, 'SCHEMA', 'dbo', 'VIEW',
     'Osoby_fizyczne_z_nieoplaconymi_zamowieniami'
go

