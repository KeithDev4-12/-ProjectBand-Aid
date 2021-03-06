object RouteDataModule: TRouteDataModule
  OldCreateOrder = False
  Height = 86
  Width = 155
  object tblRoute: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'routes'
    TableName = 'routes'
    Left = 24
    Top = 16
    object tblRouteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblRouteroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object tblRouterouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object qryRoute: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'select ID,ROUTECODE,'
      'CAST(ROUTEADDRESS as Char(20)) as ROUTEADDRESS from routes')
    Left = 104
    Top = 16
    object qryRouteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryRouteroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object qryRouteROUTEADDRESS: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROUTEADDRESS'
      Origin = 'ROUTEADDRESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
end
