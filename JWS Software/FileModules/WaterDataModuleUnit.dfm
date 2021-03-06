object WaterDataModule: TWaterDataModule
  OldCreateOrder = False
  Height = 227
  Width = 255
  object tblWaterRate: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'waterrate'
    TableName = 'waterrate'
    Left = 32
    Top = 8
    object tblWaterRateid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblWaterRateratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object tblWaterRateconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWaterRateconsumptionfrom: TFloatField
      FieldName = 'consumptionfrom'
      Origin = 'consumptionfrom'
      Required = True
    end
    object tblWaterRateconsumptionto: TFloatField
      FieldName = 'consumptionto'
      Origin = 'consumptionto'
      Required = True
    end
    object tblWaterRateratebaseamount: TFloatField
      FieldName = 'ratebaseamount'
      Origin = 'ratebaseamount'
      Required = True
    end
    object tblWaterRaterateaddamount: TFloatField
      FieldName = 'rateaddamount'
      Origin = 'rateaddamount'
      Required = True
    end
  end
  object qryWaterRate: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      
        'select ID,RATECODE,CAST(CONNECTIONTYPE as Char(20)) as Connectio' +
        'nType,'
      'consumptionfrom,consumptionto,'
      'ratebaseamount,rateaddamount'
      ''
      ' from waterrate')
    Left = 112
    Top = 16
    object qryWaterRateid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryWaterRateratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object qryWaterRateConnectionType: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ConnectionType'
      Origin = 'ConnectionType'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryWaterRateconsumptionfrom: TFloatField
      FieldName = 'consumptionfrom'
      Origin = 'consumptionfrom'
      Required = True
    end
    object qryWaterRateconsumptionto: TFloatField
      FieldName = 'consumptionto'
      Origin = 'consumptionto'
      Required = True
    end
    object qryWaterRateratebaseamount: TFloatField
      FieldName = 'ratebaseamount'
      Origin = 'ratebaseamount'
      Required = True
    end
    object qryWaterRaterateaddamount: TFloatField
      FieldName = 'rateaddamount'
      Origin = 'rateaddamount'
      Required = True
    end
  end
end
