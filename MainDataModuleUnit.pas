object MainDataModule: TMainDataModule
  OldCreateOrder = False
  Height = 391
  Width = 535
  object SQLiteJWSDesktopConn: TFDConnection
    Params.Strings = (
      'Database=J:\Juban - Orig\jws_desktop.db'
      'ConnectionDef=SQLITE_BWD_DESKTOP')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 32
  end
  object SQLiteJWSMainDatabaseConn: TFDConnection
    Params.Strings = (
      'Database=J:\Juban - Orig\jws_2020.db'
      'ConnectionDef=SQLITE_BWD_DESKTOP')
    Connected = True
    LoginPrompt = False
    Left = 264
    Top = 40
  end
  object SQLiteJWSMobileConn: TFDConnection
    Params.Strings = (
      'Database=J:\Juban - Orig\jws_mobile.db'
      'ConnectionDef=SQLITE_BWD_DESKTOP')
    LoginPrompt = False
    Left = 440
    Top = 32
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 112
    Top = 144
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 352
    Top = 136
  end
  object qryLogIn: TFDQuery
    Connection = SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT '
      '  COUNT(id) as Count_id,CAST(Role As Char(50)) as ROLE'
      'FROM '
      '  users '
      'where '
      '  Usern