object CreateScheduleDataModule: TCreateScheduleDataModule
  OldCreateOrder = False
  Height = 461
  Width = 554
  object qryRouteAssigned: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT'
      '  SCHEDULEID,'
      '  ROUTECODE,'
      '  CAST(ROUTEADDRESS AS CHAR(100)) AS ROUTEADDRESS,'
      '  CAST(READINGSTARTDATE AS CHAR(50)) AS READINGSTARTDATE,'
      '  DURATION'
      'FROM '
      '  READINGSCHEDULE '
      'WHERE '
      '  BILLMONTH = :ABILLMONTH')
    Left = 32
    Top = 16
    ParamData = <
      item
        Name = 'ABILLMONTH'
        DataType = ftWideString
        ParamType = ptInput
        Value = '202001'
      end>
    object qryRouteAssignedroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object qryRouteAssignedROUTEADDRESS: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROUTEADDRESS'
      Origin = 'ROUTEADDRESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryRouteAssignedscheduleid: TIntegerField
      FieldName = 'scheduleid'
      Origin = 'scheduleid'
      Required = True
    end
    object qryRouteAssignedREADINGSTARTDATE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'READINGSTARTDATE'
      Origin = 'READINGSTARTDATE'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryRouteAssignedduration: TIntegerField
      FieldName = 'duration'
      Origin = 'duration'
    end
  end
  object tblInsertScheduleName: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'SCHEDULE'
    TableName = 'SCHEDULE'
    Left = 248
    Top = 24
    object tblInsertScheduleNameid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblInsertScheduleNameScheduleName: TWideMemoField
      FieldName = 'ScheduleName'
      Origin = 'ScheduleName'
      BlobType = ftWideMemo
    end
  end
  object dsScheduleName: TDataSource
    DataSet = qryInsertScheduleName
    Left = 264
    Top = 88
  end
  object qryInsertScheduleName: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT '
      'ID,'
      'CAST(SCHEDULENAME AS CHAR(100)) as SCHEDULENAME'
      'FROM SCHEDULE')
    Left = 384
    Top = 24
    object qryInsertScheduleNameid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryInsertScheduleNameSCHEDULENAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'SCHEDULENAME'
      Origin = 'SCHEDULENAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object dsRouteAssigned: TDataSource
    DataSet = qryRouteAssigned
    Left = 32
    Top = 64
  end
  object tblReadingSchedule: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'readingschedule'
    TableName = 'readingschedule'
    Left = 40
    Top = 208
    object tblReadingScheduleid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblReadingSchedulebillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object tblReadingScheduleroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object tblReadingSchedulerouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object tblReadingScheduletotalconsumer: TIntegerField
      FieldName = 'totalconsumer'
      Origin = 'totalconsumer'
    end
    object tblReadingSchedulereadingstartdate: TWideMemoField
      FieldName = 'readingstartdate'
      Origin = 'readingstartdate'
      Required = True
      BlobType = ftWideMemo
    end
    object tblReadingScheduleduration: TIntegerField
      FieldName = 'duration'
      Origin = 'duration'
    end
    object tblReadingScheduletotalfinished: TIntegerField
      FieldName = 'totalfinished'
      Origin = 'totalfinished'
    end
    object tblReadingScheduletotaluploaded: TIntegerField
      FieldName = 'totaluploaded'
      Origin = 'totaluploaded'
    end
    object tblReadingSchedulescheduleid: TIntegerField
      FieldName = 'scheduleid'
      Origin = 'scheduleid'
    end
    object tblReadingScheduleposted: TIntegerField
      FieldName = 'posted'
      Origin = 'posted'
    end
    object tblReadingSchedulemeterreaderid: TIntegerField
      FieldName = 'meterreaderid'
      Origin = 'meterreaderid'
    end
  end
  object qryRoute: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT'
      '  ID,'
      '  ROUTECODE,'
      '  CAST(ROUTEADDRESS AS CHAR(100)) AS ROUTEADDRESS'
      'FROM '
      '  ROUTES')
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
  object qryCheckBillMonth: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT Distinct CAST(BillMonth AS CHAR(20)) as BillMonth'
      '-- SUBSTRING(BILLMONTH,0,2),'
      '-- SUBSTRING(BILLMONTH,3,4) '
      'FROM ReadingSchedule '
      'ORDER BY  '
      'SUBSTRING(BILLMONTH,3,4) Desc,'
      'SUBSTRING(BILLMONTH,0,2) Desc Limit 1')
    Left = 240
    Top = 208
  end
  object qryBillMonth: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT '
      'Distinct CAST(BillMonth AS CHAR(20)) as BillMonth'
      '-- SUBSTRING(BILLMONTH,0,2),'
      '-- SUBSTRING(BILLMONTH,3,4) '
      'FROM ReadingSchedule '
      'ORDER BY  '
      'SUBSTRING(BILLMONTH,3,4) Desc,'
      'SUBSTRING(BILLMONTH,0,2) Desc ')
    Left = 208
    Top = 320
    object qryBillMonthBillMonth: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'BillMonth'
      Origin = 'BillMonth'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object vtReadingSchedule: TVirtualTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'billmonth'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'routecode'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'routeaddress'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'totalconsumer'
        DataType = ftInteger
      end
      item
        Name = 'readingstartdate'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'duration'
        DataType = ftInteger
      end
      item
        Name = 'scheduleid'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'meterreaderid'
        DataType = ftInteger
      end>
    Left = 40
    Top = 288
    Data = {
      03000900020069640E00000000000000090062696C6C6D6F6E74682700000000
      0000000900726F757465636F646503000000000000000C00726F757465616464
      7265737327000000000000000D00746F74616C636F6E73756D65720300000000
      000000100072656164696E677374617274646174652700000000000000080064
      75726174696F6E03000000000000000A007363686564756C6569640300000000
      0000000D006D6574657272656164657269640300000000000000000005000000
      04000000010000000C0000003100320032003000320030000400000004000000
      14000000420069006E0061006E0075006100680061006E000400000064000000
      1400000032003000320031002D00320030002D00300031000400000001000000
      0400000001000000040000000000000004000000040000000C00000031003100
      320030003200300004000000030000000E0000004200610063006F006C006F00
      640004000000640000001400000032003000320031002D00300034002D003000
      3100040000000100000004000000010000000400000000000000040000000500
      00000C00000030003100320030003200310004000000020000000C0000004100
      72006F0072006F00790004000000640000001400000032003000320031002D00
      310039002D003000310004000000010000000400000001000000040000000000
      000004000000060000000C000000300032003200300032003100040000000400
      000014000000420069006E0061006E0075006100680061006E00040000006400
      00001400000032003000320031002D00310031002D0030003100040000000300
      00000400000002000000040000000000000004000000070000000C0000003100
      3200320030003200310004000000310100000A000000420075006C0061006E00
      04000000640000001400000032003000320031002D00320037002D0030003100
      040000000300000004000000010000000400000000000000}
    object vtReadingScheduleid: TAutoIncField
      FieldName = 'id'
    end
    object vtReadingSchedulebillmonth: TWideMemoField
      FieldName = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object vtReadingScheduleroutecode: TIntegerField
      FieldName = 'routecode'
      Required = True
    end
    object vtReadingSchedulerouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object vtReadingScheduletotalconsumer: TIntegerField
      FieldName = 'totalconsumer'
    end
    object vtReadingSchedulereadingstartdate: TWideMemoField
      FieldName = 'readingstartdate'
      Required = True
      BlobType = ftWideMemo
    end
    object vtReadingScheduleduration: TIntegerField
      FieldName = 'duration'
    end
    object vtReadingSchedulescheduleid: TIntegerField
      FieldName = 'scheduleid'
      Required = True
    end
    object vtReadingSchedulemeterreaderid: TIntegerField
      FieldName = 'meterreaderid'
    end
  end
  object qryCheckReadingSchedule: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT '
      'CAST(BILLMONTH AS CHAR(6)) AS BILLMONTH,'
      'ROUTECODE,'
      'CAST(ROUTEADDRESS AS CHAR(100)) AS ROUTEADDRESS,'
      'TOTALCONSUMER,'
      'CAST(READINGSTARTDATE AS CHAR(20)) AS READINGSTARTDATE,'
      'DURATION,'
      'SCHEDULEID,'
      'METERREADERID'
      'FROM ReadingSchedule WHERE BILLMONTH = :ABILLMONTH'
      'AND --METERREADERID = 0'
      'POSTED = 0 '
      'GROUP BY SCHEDULEID,BILLMONTH,METERREADERID '
      ''
      '')
    Left = 336
    Top = 296
    ParamData = <
      item
        Name = 'ABILLMONTH'
        DataType = ftWideString
        ParamType = ptInput
        Value = '122020'
      end>
    object qryCheckReadingScheduleBILLMONTH: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'BILLMONTH'
      Origin = 'BILLMONTH'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryCheckReadingScheduleroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object qryCheckReadingScheduleROUTEADDRESS: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROUTEADDRESS'
      Origin = 'ROUTEADDRESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryCheckReadingScheduletotalconsumer: TIntegerField
      FieldName = 'totalconsumer'
      Origin = 'totalconsumer'
    end
    object qryCheckReadingScheduleREADINGSTARTDATE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'READINGSTARTDATE'
      Origin = 'READINGSTARTDATE'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryCheckReadingScheduleduration: TIntegerField
      FieldName = 'duration'
      Origin = 'duration'
    end
    object qryCheckReadingSchedulescheduleid: TIntegerField
      FieldName = 'scheduleid'
      Origin = 'scheduleid'
      Required = True
    end
    object qryCheckReadingSchedulemeterreaderid: TIntegerField
      FieldName = 'meterreaderid'
      Origin = 'meterreaderid'
    end
  end
  object qryCheckScheduleName: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT * FROM READINGSCHEDULE')
    Left = 336
    Top = 352
  end
  object qryMeterReader: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT ID,'
      'CAST(NAME AS CHAR(100)) AS NAME '
      'FROM METERREADER')
    Left = 416
    Top = 112
    object qryMeterReaderid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryMeterReaderNAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object qryMeterReaderAssigned: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'select '
      '  r.id,'
      '  CAST(r.BillMonth AS CHAR(6)) AS BILLMONTH,'
      '  r.RouteCode,'
      '  CAST(r.RouteAddress AS CHAR(150)) AS ROUTEADDRESS,'
      '  r.TotalConsumer,'
      '  CAST(r.ReadingStartDate AS CHAR(20)) AS READINGSTARTDATE,'
      '  r.Duration,'
      '  r.Scheduleid,'
      '  CAST(s.ScheduleName AS CHAR(150)) AS SCHEDULENAME,'
      '  r.MeterReaderId,'
      '  m.id,'
      '  CAST(m.Name AS CHAR(200)) AS NAME'
      'from'
      '  meterreader m '
      'left join '
      
        '  readingschedule r on r.meterreaderid = m.id and r.BillMonth = ' +
        ':ABillMonth'
      'LEFT JOIN '
      '  SCHEDULE s on s.id= r.scheduleid'
      ' group by m.id')
    Left = 408
    Top = 240
    ParamData = <
      item
        Name = 'ABILLMONTH'
        DataType = ftWideString
        ParamType = ptInput
        Value = '012020'
      end>
    object qryMeterReaderAssignedid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryMeterReaderAssignedBILLMONTH: TWideStringField
      FieldName = 'BILLMONTH'
      Origin = 'BILLMONTH'
      Size = 32767
    end
    object qryMeterReaderAssignedroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object qryMeterReaderAssignedROUTEADDRESS: TWideStringField
      FieldName = 'ROUTEADDRESS'
      Origin = 'ROUTEADDRESS'
      Size = 32767
    end
    object qryMeterReaderAssignedtotalconsumer: TIntegerField
      FieldName = 'totalconsumer'
      Origin = 'totalconsumer'
    end
    object qryMeterReaderAssignedREADINGSTARTDATE: TWideStringField
      FieldName = 'READINGSTARTDATE'
      Origin = 'READINGSTARTDATE'
      Size = 32767
    end
    object qryMeterReaderAssignedduration: TIntegerField
      FieldName = 'duration'
      Origin = 'duration'
    end
    object qryMeterReaderAssignedscheduleid: TIntegerField
      FieldName = 'scheduleid'
      Origin = 'scheduleid'
      Required = True
    end
    object qryMeterReaderAssignedmeterreaderid: TIntegerField
      FieldName = 'meterreaderid'
      Origin = 'meterreaderid'
    end
    object qryMeterReaderAssignedid_1: TFDAutoIncField
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryMeterReaderAssignedNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 32767
    end
    object qryMeterReaderAssignedSCHEDULENAME: TWideStringField
      FieldName = 'SCHEDULENAME'
      Origin = 'SCHEDULENAME'
      Size = 32767
    end
  end
  object dsMeterReaderAssigned: TDataSource
    DataSet = qryMeterReaderAssigned
    Left = 448
    Top = 312
  end
  object qryScheduleRepresentation: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT'
      's.ID,'
      'CAST(s.SCHEDULENAME AS CHAR(100)) as SCHEDULENAME'
      'FROM SCHEDULE s'
      'LEFT JOIN READINGSCHEDULE r ON '
      '    r.BillMonth = :ABillMonth '
      'where '
      '  r.ScheduleId = s.id '
      'GROUP BY r.ScheduleId')
    Left = 432
    Top = 184
    ParamData = <
      item
        Name = 'ABILLMONTH'
        DataType = ftWideString
        ParamType = ptInput
        Value = '122021'
      end>
    object qryScheduleRepresentationid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryScheduleRepresentationSCHEDULENAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'SCHEDULENAME'
      Origin = 'SCHEDULENAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object qryPostAllRecord: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      
        'SELECT * FROM READINGSCHEDULE WHERE BILLMONTH = :ABILLMONTH and ' +
        'Posted = '#39'0'#39)
    Left = 456
    Top = 384
    ParamData = <
      item
        Name = 'ABILLMONTH'
        DataType = ftWideString
        ParamType = ptInput
        Value = '062020'
      end>
    object qryPostAllRecordid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPostAllRecordbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object qryPostAllRecordroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object qryPostAllRecordrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object qryPostAllRecordtotalconsumer: TIntegerField
      FieldName = 'totalconsumer'
      Origin = 'totalconsumer'
    end
    object qryPostAllRecordreadingstartdate: TWideMemoField
      FieldName = 'readingstartdate'
      Origin = 'readingstartdate'
      Required = True
      BlobType = ftWideMemo
    end
    object qryPostAllRecordduration: TIntegerField
      FieldName = 'duration'
      Origin = 'duration'
    end
    object qryPostAllRecordscheduleid: TIntegerField
      FieldName = 'scheduleid'
      Origin = 'scheduleid'
      Required = True
    end
    object qryPostAllRecordmeterreaderid: TIntegerField
      FieldName = 'meterreaderid'
      Origin = 'meterreaderid'
    end
    object qryPostAllRecordposted: TIntegerField
      FieldName = 'posted'
      Origin = 'posted'
      Required = True
    end
  end
  object qryPosted: TFDQuery
    Active = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      
        'SELECT * FROM READINGSCHEDULE WHERE BILLMONTH = :ABILLMONTH and ' +
        'Posted = '#39'0'#39)
    Left = 328
    Top = 400
    ParamData = <
      item
        Name = 'ABILLMONTH'
        DataType = ftWideString
        ParamType = ptInput
        Value = '122020'
      end>
    object qryPostedid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPostedbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object qryPostedroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object qryPostedrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object qryPostedtotalconsumer: TIntegerField
      FieldName = 'totalconsumer'
      Origin = 'totalconsumer'
    end
    object qryPostedreadingstartdate: TWideMemoField
      FieldName = 'readingstartdate'
      Origin = 'readingstartdate'
      Required = True
      BlobType = ftWideMemo
    end
    object qryPostedduration: TIntegerField
      FieldName = 'duration'
      Origin = 'duration'
    end
    object qryPostedscheduleid: TIntegerField
      FieldName = 'scheduleid'
      Origin = 'scheduleid'
      Required = True
    end
    object qryPostedmeterreaderid: TIntegerField
      FieldName = 'meterreaderid'
      Origin = 'meterreaderid'
    end
    object qryPostedposted: TIntegerField
      FieldName = 'posted'
      Origin = 'posted'
      Required = True
    end
  end
  object qryCountConsumer: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT '
      '  COUNT(ACCOUNTNO) as CountConsumer'
      'FROM '
      '  CONSUMERACCOUNT '
      'WHERE '
      '  UCase(ROUTEADDRESS) = UCase(:AROUTEADDRESS)')
    Left = 184
    Top = 400
    ParamData = <
      item
        Name = 'AROUTEADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qryCountConsumerCountConsumer: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'CountConsumer'
      Origin = 'CountConsumer'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryBillMonth2: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      
        'select DISTINCT(CAST(BillMonth as Char(50))) AS BillMonth From R' +
        'eadingSchedule')
    Left = 120
    Top = 384
    object WideStringField2: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'BillMonth'
      Origin = 'BillMonth'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object tblSettings: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'settings'
    SchemaName = 'settings'
    TableName = 'settings'
    Left = 112
    Top = 144
    object tblSettingsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblSettingssettingsname: TWideMemoField
      FieldName = 'settingsname'
      Origin = 'settingsname'
      Required = True
      BlobType = ftWideMemo
    end
    object tblSettingssettingsvalue: TWideMemoField
      FieldName = 'settingsvalue'
      Origin = 'settingsvalue'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object qryConsumerAccountCheck: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT '
      ' * '
      'FROM '
      '  CONSUMERACCOUNT '
      'WHERE '
      '  BILLMONTH = :ABILLMONTH '
      'AND '
      '  ROUTEADDRESS = :AROUTEADDRESS')
    Left = 320
    Top = 176
    ParamData = <
      item
        Name = 'ABILLMONTH'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end
      item
        Name = 'AROUTEADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qryConsumerAccountCheckid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConsumerAccountCheckaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      Required = True
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object qryConsumerAccountCheckroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
    end
    object qryConsumerAccountCheckrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object qryConsumerAccountCheckconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      Required = True
      BlobType = ftWideMemo
    end
    object qryConsumerAccountChecknewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object qryConsumerAccountCheckmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      Required = True
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object qryConsumerAccountCheckpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object qryConsumerAccountCheckpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      Required = True
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object qryConsumerAccountCheckpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object qryConsumerAccountCheckcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object qryConsumerAccountChecktotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object qryConsumerAccountCheckoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object qryConsumerAccountCheckmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckcurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
      Origin = 'currentamountdue'
    end
    object qryConsumerAccountChecktotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object qryConsumerAccountChecktotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object qryConsumerAccountCheckdiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object qryConsumerAccountCheckpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object qryConsumerAccountChecktotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object qryConsumerAccountChecktotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object qryConsumerAccountCheckpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckreadingtime: TWideMemoField
      FieldName = 'readingtime'
      Origin = 'readingtime'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountCheckmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountChecknumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object qryConsumerAccountChecknumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object qryConsumerAccountChecknumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object qryConsumerAccountCheckdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
end
