object SettingsDataModule: TSettingsDataModule
  OldCreateOrder = False
  Height = 114
  Width = 330
  object qryFieldFindings: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT ID, '
      'CAST(FieldFindingsType as Char(20)) as FieldFindingsType,'
      'CAST(FieldFindingsValue as Char(30)) as FieldFindingsValue,'
      'PrintBillFlag FROM FieldFindings')
    Left = 112
    Top = 40
    object qryFieldFindingsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryFieldFindingsFieldFindingsType: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FieldFindingsType'
      Origin = 'FieldFindingsType'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryFieldFindingsFieldFindingsValue: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FieldFindingsValue'
      Origin = 'FieldFindingsValue'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryFieldFindingsprintbillflag: TIntegerField
      FieldName = 'printbillflag'
      Origin = 'printbillflag'
      Required = True
    end
  end
  object qrySettings: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'settings'
    TableName = 'settings'
    Left = 32
    Top = 40
    object qrySettingsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrySettingssettingsname: TWideMemoField
      FieldName = 'settingsname'
      Origin = 'settingsname'
      Required = True
      BlobType = ftWideMemo
    end
    object qrySettingssettingsvalue: TWideMemoField
      FieldName = 'settingsvalue'
      Origin = 'settingsvalue'
      BlobType = ftWideMemo
    end
  end
  object tblFieldFindings: TFDTable
    Active = True
    BeforeInsert = tblFieldFindingsBeforeInsert
    BeforeEdit = tblFieldFindingsBeforeEdit
    AfterPost = tblFieldFindingsAfterPost
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'fieldfindings'
    TableName = 'fieldfindings'
    Left = 208
    Top = 48
    object tblFieldFindingsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblFieldFindingsfieldfindingstype: TWideMemoField
      FieldName = 'fieldfindingstype'
      Origin = 'fieldfindingstype'
      Required = True
      BlobType = ftWideMemo
    end
    object tblFieldFindingsfieldfindingsvalue: TWideMemoField
      FieldName = 'fieldfindingsvalue'
      Origin = 'fieldfindingsvalue'
      Required = True
      BlobType = ftWideMemo
    end
    object tblFieldFindingsprintbillflag: TIntegerField
      FieldName = 'printbillflag'
      Origin = 'printbillflag'
      Required = True
    end
  end
end
