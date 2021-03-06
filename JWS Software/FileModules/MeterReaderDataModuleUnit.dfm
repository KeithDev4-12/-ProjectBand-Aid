object MeterReaderDataModule: TMeterReaderDataModule
  OldCreateOrder = False
  Height = 150
  Width = 215
  object tblMeterReader: TFDTable
    Active = True
    Filtered = True
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'meterreader'
    TableName = 'meterreader'
    Left = 40
    Top = 32
    object tblMeterReaderid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tblMeterReadername: TWideMemoField
      FieldName = 'name'
      Origin = 'name'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object qryMeterReader: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'select '
      'ID,'
      'CAST(NAME as Char(150)) as METERREADERNAME'
      'from '
      'METERREADER')
    Left = 136
    Top = 32
    object qryMeterReaderid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryMeterReaderMETERREADERNAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'METERREADERNAME'
      Origin = 'METERREADERNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
end
