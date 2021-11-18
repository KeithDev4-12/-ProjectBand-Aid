object SystemLogDataModule: TSystemLogDataModule
  OldCreateOrder = False
  Height = 209
  Width = 330
  object qrySettings: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'systemlog'
    TableName = 'systemlog'
    Left = 32
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    Left = 232
    Top = 48
  end
  object fdSystemLog: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSMainDatabaseConn
    UpdateOptions.UpdateTableName = 'systemlog'
    TableName = 'systemlog'
    Left = 128
    Top = 40
    object fdSystemLogid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdSystemLogusername: TWideMemoField
      FieldName = 'username'
      Origin = 'username'
      Required = True
      BlobType = ftWideMemo
    end
    object fdSystemLogtaskperformed: TWideMemoField
      FieldName = 'taskperformed'
      Origin = 'taskperformed'
      Required = True
      BlobType = ftWideMemo
    end
    object fdSystemLoglogdatetime: TWideMemoField
      FieldName = 'logdatetime'
      Origin = 'logdatetime'
      Required = True
      BlobType = ftWideMemo
    end
  end
end
