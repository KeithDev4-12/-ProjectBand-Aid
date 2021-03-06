object MainDataModule: TMainDataModule
  OldCreateOrder = False
  Height = 412
  Width = 547
  object SQLiteJWSDesktopConn: TFDConnection
    Params.Strings = (
      'Database=D:\JWS_Software\Juban Database\jws_desktop.db'
      'ConnectionDef=SQLITE_JWS_DESKTOP')
    LoginPrompt = False
    Left = 72
    Top = 32
  end
  object SQLiteJWSMainDatabaseConn: TFDConnection
    Params.Strings = (
      'Database=D:\JWS_Software\Juban Database\jws_main.db'
      'ConnectionDef=SQLITE_JWS_DESKTOP_MAIN')
    LoginPrompt = False
    Left = 264
    Top = 40
  end
  object SQLiteJWSMobileConn: TFDConnection
    Params.Strings = (
      'Database=D:\JWS_Software\Juban Database\jws_mobile.db'
      'ConnectionDef=SQLITE_JWS_MOBILE')
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
      '  Username = :AUserName '
      'and '
      '  Password = :APassWord')
    Left = 88
    Top = 256
    ParamData = <
      item
        Name = 'AUSERNAME'
        DataType = ftWideString
        ParamType = ptInput
        Value = 'a'
      end
      item
        Name = 'APASSWORD'
        DataType = ftWideString
        ParamType = ptInput
        Value = 'a'
      end>
    object qryLogInCount_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'Count_id'
      Origin = 'Count_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryLogInROLE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object tblLogin: TFDTable
    IndexFieldNames = 'id'
    Connection = SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'users'
    TableName = 'users'
    Left = 192
    Top = 288
    object tblLoginid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblLoginusername: TWideMemoField
      FieldName = 'username'
      Origin = 'username'
      Required = True
      BlobType = ftWideMemo
    end
    object tblLoginpassword: TWideMemoField
      FieldName = 'password'
      Origin = 'password'
      Required = True
      BlobType = ftWideMemo
    end
    object tblLoginrole: TWideMemoField
      FieldName = 'role'
      Origin = 'role'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object MYSQLDatabase: TFDConnection
    Params.Strings = (
      'ConnectionDef=MYSQL_JWS')
    Left = 416
    Top = 240
  end
end
