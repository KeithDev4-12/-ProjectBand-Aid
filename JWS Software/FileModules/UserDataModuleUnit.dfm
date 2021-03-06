object UserDataModule: TUserDataModule
  OldCreateOrder = False
  Height = 153
  Width = 88
  object tblUser: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'users'
    TableName = 'users'
    Left = 16
    Top = 16
    object tblUserid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblUserusername: TWideMemoField
      FieldName = 'username'
      Origin = 'username'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUserpassword: TWideMemoField
      FieldName = 'password'
      Origin = 'password'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUserrole: TWideMemoField
      FieldName = 'role'
      Origin = 'role'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object qryUser: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT '
      '  ID,'
      '  CAST(USERNAME as CHAR(150))AS USERNAME, '
      '  CAST(PASSWORD as CHAR(150)) AS PASSWORD,'
      '  CAST(ROLE as CHAR(50)) AS ROLE'
      'FROM '
      'USERS')
    Left = 16
    Top = 72
    object qryUserid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryUserUSERNAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryUserPASSWORD: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASSWORD'
      Origin = 'PASSWORD'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryUserROLE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
end
