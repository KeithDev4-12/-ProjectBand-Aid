object GenerateDataModule: TGenerateDataModule
  OldCreateOrder = False
  Height = 649
  Width = 741
  object FDBMDSReaderSettings: TFDBatchMoveDataSetReader
    DataSet = tblSettings
    Left = 39
    Top = 350
  end
  object FDBMDSWriterSettings: TFDBatchMoveDataSetWriter
    DataSet = tblWriteSettings
    Left = 39
    Top = 478
  end
  object SettingsBatchMove: TFDBatchMove
    Reader = FDBMDSReaderSettings
    Writer = FDBMDSWriterSettings
    Mode = dmAppendUpdate
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'settingsname'
        DestinationFieldName = 'settingsname'
      end
      item
        SourceFieldName = 'settingsvalue'
        DestinationFieldName = 'settingsvalue'
      end>
    LogFileName = 'Data.log'
    Left = 39
    Top = 414
  end
  object tblSettings: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'settings'
    TableName = 'settings'
    Left = 39
    Top = 534
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
    object tblSettingsqq: TStringField
      FieldKind = fkCalculated
      FieldName = 'qq'
      Calculated = True
    end
  end
  object FDBMDSReaderConsumer: TFDBatchMoveDataSetReader
    DataSet = vtConsumerAccount
    Left = 40
    Top = 17
  end
  object FDBMDSWriterConsumer: TFDBatchMoveDataSetWriter
    DataSet = tblWriteConsumerAccount
    Left = 40
    Top = 145
  end
  object ConsumerBatchMove: TFDBatchMove
    Reader = FDBMDSReaderConsumer
    Writer = FDBMDSWriterConsumer
    Mode = dmAppend
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'accountno'
        DestinationFieldName = 'accountno'
      end
      item
        SourceFieldName = 'accountname'
        DestinationFieldName = 'accountname'
      end
      item
        SourceFieldName = 'routesequence'
        DestinationFieldName = 'routesequence'
      end
      item
        SourceFieldName = 'routecode'
        DestinationFieldName = 'routecode'
      end
      item
        SourceFieldName = 'routeaddress'
        DestinationFieldName = 'routeaddress'
      end
      item
        SourceFieldName = 'ratecode'
        DestinationFieldName = 'ratecode'
      end
      item
        SourceFieldName = 'connectiontype'
        DestinationFieldName = 'connectiontype'
      end
      item
        SourceFieldName = 'connectionstatus'
        DestinationFieldName = 'connectionstatus'
      end
      item
        SourceFieldName = 'newconnectionstatus'
        DestinationFieldName = 'newconnectionstatus'
      end
      item
        SourceFieldName = 'isseniorcitizen'
        DestinationFieldName = 'isseniorcitizen'
      end
      item
        SourceFieldName = 'mobilenumber'
        DestinationFieldName = 'mobilenumber'
      end
      item
        SourceFieldName = 'meterbrand'
        DestinationFieldName = 'meterbrand'
      end
      item
        SourceFieldName = 'meterserialno'
        DestinationFieldName = 'meterserialno'
      end
      item
        SourceFieldName = 'billmonth'
        DestinationFieldName = 'billmonth'
      end
      item
        SourceFieldName = 'billnumber'
        DestinationFieldName = 'billnumber'
      end
      item
        SourceFieldName = 'previousreading'
        DestinationFieldName = 'previousreading'
      end
      item
        SourceFieldName = 'previousreadingdate'
        DestinationFieldName = 'previousreadingdate'
      end
      item
        SourceFieldName = 'presentreading'
        DestinationFieldName = 'presentreading'
      end
      item
        SourceFieldName = 'presentreadingdate'
        DestinationFieldName = 'presentreadingdate'
      end
      item
        SourceFieldName = 'averageconsumption'
        DestinationFieldName = 'averageconsumption'
      end
      item
        SourceFieldName = 'currentconsumption'
        DestinationFieldName = 'currentconsumption'
      end
      item
        SourceFieldName = 'totalconsumption'
        DestinationFieldName = 'totalconsumption'
      end
      item
        SourceFieldName = 'oldmeterconsumption'
        DestinationFieldName = 'oldmeterconsumption'
      end
      item
        SourceFieldName = 'meterfindings'
        DestinationFieldName = 'meterfindings'
      end
      item
        SourceFieldName = 'readingremarks'
        DestinationFieldName = 'readingremarks'
      end
      item
        SourceFieldName = 'currentamountdue'
        DestinationFieldName = 'currentamountdue'
      end
      item
        SourceFieldName = 'totalamountdue'
        DestinationFieldName = 'totalamountdue'
      end
      item
        SourceFieldName = 'totalamountafterduedate'
        DestinationFieldName = 'totalamountafterduedate'
      end
      item
        SourceFieldName = 'discountamount'
        DestinationFieldName = 'discountamount'
      end
      item
        SourceFieldName = 'penaltyamount'
        DestinationFieldName = 'penaltyamount'
      end
      item
        SourceFieldName = 'totalbillarrears'
        DestinationFieldName = 'totalbillarrears'
      end
      item
        SourceFieldName = 'totalotherfees'
        DestinationFieldName = 'totalotherfees'
      end
      item
        SourceFieldName = 'paymentduedate'
        DestinationFieldName = 'paymentduedate'
      end
      item
        SourceFieldName = 'paymentdateafterdue'
        DestinationFieldName = 'paymentdateafterdue'
      end
      item
        SourceFieldName = 'disconnectiondate'
        DestinationFieldName = 'disconnectiondate'
      end
      item
        SourceFieldName = 'readingtime'
        DestinationFieldName = 'readingtime'
      end
      item
        SourceFieldName = 'meterreadername'
        DestinationFieldName = 'meterreadername'
      end
      item
        SourceFieldName = 'numberofreadingretry'
        DestinationFieldName = 'numberofreadingretry'
      end
      item
        SourceFieldName = 'numberofbillprinted'
        DestinationFieldName = 'numberofbillprinted'
      end
      item
        SourceFieldName = 'numberofsmssent'
        DestinationFieldName = 'numberofsmssent'
      end
      item
        SourceFieldName = 'dateuploaded'
        DestinationFieldName = 'dateuploaded'
      end>
    LogFileName = 'Data.log'
    Left = 40
    Top = 81
  end
  object FDBMDSReaderFieldFindings: TFDBatchMoveDataSetReader
    DataSet = tblFieldFinding
    Left = 182
    Top = 17
  end
  object FDBMDSWriterFieldFindings: TFDBatchMoveDataSetWriter
    DataSet = tblWriteFieldFindings
    Left = 182
    Top = 145
  end
  object FieldFindingsBatchMove: TFDBatchMove
    Reader = FDBMDSReaderFieldFindings
    Writer = FDBMDSWriterFieldFindings
    Mode = dmAppendUpdate
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'fieldfindingstype'
        DestinationFieldName = 'fieldfindingstype'
      end
      item
        SourceFieldName = 'fieldfindingsvalue'
        DestinationFieldName = 'fieldfindingsvalue'
      end
      item
        SourceFieldName = 'printbillflag'
        DestinationFieldName = 'printbillflag'
      end>
    LogFileName = 'Data.log'
    Left = 182
    Top = 81
  end
  object tblFieldFinding: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'fieldfindings'
    TableName = 'fieldfindings'
    Left = 182
    Top = 201
  end
  object FDBMDSReaderWaterRate: TFDBatchMoveDataSetReader
    DataSet = tblWaterRate
    Left = 187
    Top = 353
  end
  object FDBMDSWriterWaterRate: TFDBatchMoveDataSetWriter
    DataSet = tblWriteWaterRate
    Left = 187
    Top = 481
  end
  object WaterRateBatchMove: TFDBatchMove
    Reader = FDBMDSReaderWaterRate
    Writer = FDBMDSWriterWaterRate
    Mode = dmAppendUpdate
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'ratecode'
        DestinationFieldName = 'ratecode'
      end
      item
        SourceFieldName = 'connectiontype'
        DestinationFieldName = 'connectiontype'
      end
      item
        SourceFieldName = 'consumptionfrom'
        DestinationFieldName = 'consumptionfrom'
      end
      item
        SourceFieldName = 'consumptionto'
        DestinationFieldName = 'consumptionto'
      end
      item
        SourceFieldName = 'ratebaseamount'
        DestinationFieldName = 'ratebaseamount'
      end
      item
        SourceFieldName = 'rateaddamount'
        DestinationFieldName = 'rateaddamount'
      end>
    LogFileName = 'Data.log'
    Left = 187
    Top = 425
  end
  object tblWaterRate: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'waterrate'
    TableName = 'waterrate'
    Left = 187
    Top = 537
  end
  object FDBMDSReaderMeterReader: TFDBatchMoveDataSetReader
    DataSet = tblMeterReader
    Left = 333
    Top = 17
  end
  object FDBMDSWriterMeterReader: TFDBatchMoveDataSetWriter
    DataSet = tblWriteMeterReader
    Left = 333
    Top = 145
  end
  object FDBMDSReaderReadingSchedule: TFDBatchMoveDataSetReader
    DataSet = tblReadingSchedule
    Left = 493
    Top = 18
  end
  object FDBMDSWriterReadingSchedule: TFDBatchMoveDataSetWriter
    DataSet = tblWriteReadingSchedule
    Left = 493
    Top = 146
  end
  object ReadingScheduleBatchMove: TFDBatchMove
    Reader = FDBMDSReaderReadingSchedule
    Writer = FDBMDSWriterReadingSchedule
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'billmonth'
        DestinationFieldName = 'billmonth'
      end
      item
        SourceFieldName = 'routecode'
        DestinationFieldName = 'routecode'
      end
      item
        SourceFieldName = 'routeaddress'
        DestinationFieldName = 'routeaddress'
      end
      item
        SourceFieldName = 'totalconsumer'
        DestinationFieldName = 'totalconsumer'
      end
      item
        SourceFieldName = 'readingstartdate'
        DestinationFieldName = 'readingstartdate'
      end
      item
        SourceFieldName = 'duration'
        DestinationFieldName = 'duration'
      end
      item
        SourceFieldName = 'scheduleid'
        DestinationFieldName = 'scheduleid'
      end
      item
        SourceFieldName = 'meterreaderid'
        DestinationFieldName = 'meterreaderid'
      end
      item
        SourceFieldName = 'posted'
        DestinationFieldName = 'posted'
      end>
    LogFileName = 'Data.log'
    Left = 493
    Top = 82
  end
  object tblReadingScheduleAll: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'readingschedule'
    TableName = 'readingschedule'
    Left = 453
    Top = 202
    object tblReadingScheduleAllid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblReadingScheduleAllbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object tblReadingScheduleAllroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object tblReadingScheduleAllrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object tblReadingScheduleAlltotalconsumer: TIntegerField
      FieldName = 'totalconsumer'
      Origin = 'totalconsumer'
    end
    object tblReadingScheduleAllreadingstartdate: TWideMemoField
      FieldName = 'readingstartdate'
      Origin = 'readingstartdate'
      Required = True
      BlobType = ftWideMemo
    end
    object tblReadingScheduleAllduration: TIntegerField
      FieldName = 'duration'
      Origin = 'duration'
    end
    object tblReadingScheduleAllscheduleid: TIntegerField
      FieldName = 'scheduleid'
      Origin = 'scheduleid'
      Required = True
    end
    object tblReadingScheduleAllmeterreaderid: TIntegerField
      FieldName = 'meterreaderid'
      Origin = 'meterreaderid'
    end
    object tblReadingScheduleAllposted: TIntegerField
      FieldName = 'posted'
      Origin = 'posted'
      Required = True
    end
  end
  object FDBMDS: TFDBatchMoveDataSetReader
    Left = 560
    Top = 345
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    Left = 560
    Top = 473
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBMDSReaderRoute
    Writer = FDBMDSWriterRoute
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 560
    Top = 409
  end
  object FDTable1: TFDTable
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'readingschedule'
    TableName = 'readingschedule'
    Left = 560
    Top = 529
  end
  object tblRoute: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'routes'
    TableName = 'routes'
    Left = 638
    Top = 202
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
  object FDBMDSWriterRoute: TFDBatchMoveDataSetWriter
    DataSet = tblWriteRoute
    Left = 638
    Top = 146
  end
  object FDBMDSReaderRoute: TFDBatchMoveDataSetReader
    DataSet = tblRoute
    Left = 638
    Top = 18
  end
  object vtConsumerAccount: TVirtualTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'accountno'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'accountname'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'routesequence'
        Attributes = [faRequired]
        DataType = ftInteger
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
        Name = 'ratecode'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'connectiontype'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'connectionstatus'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'newconnectionstatus'
        DataType = ftWideMemo
      end
      item
        Name = 'isseniorcitizen'
        DataType = ftInteger
      end
      item
        Name = 'mobilenumber'
        DataType = ftWideMemo
      end
      item
        Name = 'meterbrand'
        DataType = ftWideMemo
      end
      item
        Name = 'meterserialno'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'billmonth'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'billnumber'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'previousreading'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'previousreadingdate'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'presentreading'
        DataType = ftFloat
      end
      item
        Name = 'presentreadingdate'
        DataType = ftWideMemo
      end
      item
        Name = 'averageconsumption'
        DataType = ftFloat
      end
      item
        Name = 'currentconsumption'
        DataType = ftFloat
      end
      item
        Name = 'totalconsumption'
        DataType = ftFloat
      end
      item
        Name = 'oldmeterconsumption'
        DataType = ftFloat
      end
      item
        Name = 'meterfindings'
        DataType = ftWideMemo
      end
      item
        Name = 'readingremarks'
        DataType = ftWideMemo
      end
      item
        Name = 'currentamountdue'
        DataType = ftFloat
      end
      item
        Name = 'totalamountdue'
        DataType = ftFloat
      end
      item
        Name = 'totalamountafterduedate'
        DataType = ftFloat
      end
      item
        Name = 'discountamount'
        DataType = ftFloat
      end
      item
        Name = 'penaltyamount'
        DataType = ftFloat
      end
      item
        Name = 'totalbillarrears'
        DataType = ftFloat
      end
      item
        Name = 'totalotherfees'
        DataType = ftFloat
      end
      item
        Name = 'paymentduedate'
        DataType = ftWideMemo
      end
      item
        Name = 'paymentdateafterdue'
        DataType = ftWideMemo
      end
      item
        Name = 'disconnectiondate'
        DataType = ftWideMemo
      end
      item
        Name = 'readingtime'
        DataType = ftWideMemo
      end
      item
        Name = 'meterreadername'
        DataType = ftWideMemo
      end
      item
        Name = 'numberofreadingretry'
        DataType = ftInteger
      end
      item
        Name = 'numberofbillprinted'
        DataType = ftInteger
      end
      item
        Name = 'numberofsmssent'
        DataType = ftInteger
      end
      item
        Name = 'dateuploaded'
        DataType = ftWideMemo
      end>
    Left = 88
    Top = 240
    Data = {
      03002A00020069640E0000000000000009006163636F756E746E6F2700000000
      0000000B006163636F756E746E616D6527000000000000000D00726F75746573
      657175656E636503000000000000000900726F757465636F6465030000000000
      00000C00726F757465616464726573732700000000000000080072617465636F
      646503000000000000000E00636F6E6E656374696F6E74797065270000000000
      00001000636F6E6E656374696F6E737461747573270000000000000013006E65
      77636F6E6E656374696F6E73746174757327000000000000000F00697373656E
      696F72636974697A656E03000000000000000C006D6F62696C656E756D626572
      27000000000000000A006D657465726272616E6427000000000000000D006D65
      74657273657269616C6E6F2700000000000000090062696C6C6D6F6E74682700
      0000000000000A0062696C6C6E756D62657203000000000000000F0070726576
      696F757372656164696E670600000000000000130070726576696F7573726561
      64696E676461746527000000000000000E0070726573656E7472656164696E67
      0600000000000000120070726573656E7472656164696E676461746527000000
      00000000120061766572616765636F6E73756D7074696F6E0600000000000000
      120063757272656E74636F6E73756D7074696F6E06000000000000001000746F
      74616C636F6E73756D7074696F6E060000000000000013006F6C646D65746572
      636F6E73756D7074696F6E06000000000000000D006D6574657266696E64696E
      677327000000000000000E0072656164696E6772656D61726B73270000000000
      0000100063757272656E74616D6F756E7464756506000000000000000E00746F
      74616C616D6F756E7464756506000000000000001700746F74616C616D6F756E
      7461667465726475656461746506000000000000000E00646973636F756E7461
      6D6F756E7406000000000000000D0070656E616C7479616D6F756E7406000000
      000000001000746F74616C62696C6C6172726561727306000000000000000E00
      746F74616C6F746865726665657306000000000000000E007061796D656E7464
      756564617465270000000000000013007061796D656E74646174656166746572
      64756527000000000000001100646973636F6E6E656374696F6E646174652700
      0000000000000B0072656164696E6774696D6527000000000000000F006D6574
      65727265616465726E616D65270000000000000014006E756D6265726F667265
      6164696E677265747279030000000000000013006E756D6265726F6662696C6C
      7072696E74656403000000000000000F006E756D6265726F66736D7373656E74
      03000000000000000C006461746575706C6F6164656427000000000000000000
      00000000}
    object vtConsumerAccountid: TAutoIncField
      FieldName = 'id'
    end
    object vtConsumerAccountaccountno: TWideMemoField
      FieldName = 'accountno'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountaccountname: TWideMemoField
      FieldName = 'accountname'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
    end
    object vtConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
    end
    object vtConsumerAccountrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
    end
    object vtConsumerAccountconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountnewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
    end
    object vtConsumerAccountmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountbillmonth: TWideMemoField
      FieldName = 'billmonth'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountbillnumber: TIntegerField
      FieldName = 'billnumber'
    end
    object vtConsumerAccountpreviousreading: TFloatField
      FieldName = 'previousreading'
    end
    object vtConsumerAccountpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountpresentreading: TFloatField
      FieldName = 'presentreading'
    end
    object vtConsumerAccountpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
    end
    object vtConsumerAccountcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
    end
    object vtConsumerAccounttotalconsumption: TFloatField
      FieldName = 'totalconsumption'
    end
    object vtConsumerAccountoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
    end
    object vtConsumerAccountmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountcurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
    end
    object vtConsumerAccounttotalamountdue: TFloatField
      FieldName = 'totalamountdue'
    end
    object vtConsumerAccounttotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
    end
    object vtConsumerAccountdiscountamount: TFloatField
      FieldName = 'discountamount'
    end
    object vtConsumerAccountpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
    end
    object vtConsumerAccounttotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
    end
    object vtConsumerAccounttotalotherfees: TFloatField
      FieldName = 'totalotherfees'
    end
    object vtConsumerAccountpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountreadingtime: TWideMemoField
      FieldName = 'readingtime'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
    end
    object vtConsumerAccountnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
    end
    object vtConsumerAccountnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
    end
    object vtConsumerAccountdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
  object tblWriteConsumerAccount: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSMobileConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'consumeraccount'
    TableName = 'consumeraccount'
    Left = 40
    Top = 264
    object tblWriteConsumerAccountid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblWriteConsumerAccountaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object tblWriteConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object tblWriteConsumerAccountrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object tblWriteConsumerAccountconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountnewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object tblWriteConsumerAccountmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object tblWriteConsumerAccountpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object tblWriteConsumerAccountpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object tblWriteConsumerAccountpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object tblWriteConsumerAccountcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object tblWriteConsumerAccounttotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object tblWriteConsumerAccountoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object tblWriteConsumerAccountmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountcurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
      Origin = 'currentamountdue'
    end
    object tblWriteConsumerAccounttotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object tblWriteConsumerAccounttotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object tblWriteConsumerAccountdiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object tblWriteConsumerAccountpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object tblWriteConsumerAccounttotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object tblWriteConsumerAccounttotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object tblWriteConsumerAccountpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountreadingtime: TWideMemoField
      FieldName = 'readingtime'
      Origin = 'readingtime'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      BlobType = ftWideMemo
    end
    object tblWriteConsumerAccountnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object tblWriteConsumerAccountnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object tblWriteConsumerAccountnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object tblWriteConsumerAccountdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
  object qrySelectSchedule: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      
        'SELECT GROUP_CONCAT(RouteCode) FROM READINGSCHEDULE WHERE BILLMO' +
        'NTH = :ABillMonth and '
      'MeterReaderID=:AMeterReaderID GROUP BY MeterReaderID')
    Left = 640
    Top = 400
    ParamData = <
      item
        Name = 'ABILLMONTH'
        DataType = ftString
        ParamType = ptInput
        Value = '072021'
      end
      item
        Name = 'AMETERREADERID'
        ParamType = ptInput
      end>
  end
  object qrySelectSchedule1: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      
        'SELECT GROUP_CONCAT(RouteCode) FROM READINGSCHEDULE WHERE BILLMO' +
        'NTH = :ABillMonth GROUP BY MeterReaderID')
    Left = 640
    Top = 456
    ParamData = <
      item
        Name = 'ABILLMONTH'
        DataType = ftString
        ParamType = ptInput
        Value = '072021'
      end>
  end
  object tblWriteFieldFindings: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSMobileConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'fieldfindings'
    TableName = 'fieldfindings'
    Left = 184
    Top = 264
  end
  object tblConsumerAccount: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      
        'select * from consumeraccount Where RouteAddress like :ARouteAdd' +
        'ress')
    Left = 40
    Top = 208
    ParamData = <
      item
        Name = 'AROUTEADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%Bulan%'
      end>
    object tblConsumerAccountid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblConsumerAccountaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object tblConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
    end
    object tblConsumerAccountrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object tblConsumerAccountconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountnewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object tblConsumerAccountmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object tblConsumerAccountpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object tblConsumerAccountpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object tblConsumerAccountpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object tblConsumerAccountcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object tblConsumerAccounttotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object tblConsumerAccountoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object tblConsumerAccountmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountcurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
      Origin = 'currentamountdue'
    end
    object tblConsumerAccounttotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object tblConsumerAccounttotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object tblConsumerAccountdiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object tblConsumerAccountpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object tblConsumerAccounttotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object tblConsumerAccounttotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object tblConsumerAccountpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountreadingtime: TWideMemoField
      FieldName = 'readingtime'
      Origin = 'readingtime'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object tblConsumerAccountnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object tblConsumerAccountnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object tblConsumerAccountdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
  object tblWriteMeterReader: TFDTable
    IndexFieldNames = 'id'
    ConstraintsEnabled = True
    Connection = MainDataModule.SQLiteJWSMobileConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'meterreader'
    TableName = 'meterreader'
    Left = 336
    Top = 264
  end
  object tblWriteReadingSchedule: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSMobileConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'readingschedule'
    TableName = 'readingschedule'
    Left = 496
    Top = 256
    object tblWriteReadingScheduleid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object tblWriteReadingSchedulebillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteReadingScheduleroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object tblWriteReadingSchedulerouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteReadingScheduletotalconsumer: TIntegerField
      FieldName = 'totalconsumer'
      Origin = 'totalconsumer'
    end
    object tblWriteReadingSchedulereadingstartdate: TWideMemoField
      FieldName = 'readingstartdate'
      Origin = 'readingstartdate'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteReadingScheduleduration: TIntegerField
      FieldName = 'duration'
      Origin = 'duration'
    end
    object tblWriteReadingSchedulescheduleid: TIntegerField
      FieldName = 'scheduleid'
      Origin = 'scheduleid'
      Required = True
    end
    object tblWriteReadingSchedulemeterreaderid: TIntegerField
      FieldName = 'meterreaderid'
      Origin = 'meterreaderid'
    end
    object tblWriteReadingScheduleposted: TIntegerField
      FieldName = 'posted'
      Origin = 'posted'
      Required = True
    end
  end
  object tblMeterReader: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    FetchOptions.AssignedValues = [evMode, evItems, evRowsetSize, evCache, evUnidirectional]
    FetchOptions.Unidirectional = True
    FetchOptions.RowsetSize = 100
    FetchOptions.Items = [fiBlobs, fiDetails]
    FetchOptions.Cache = []
    SQL.Strings = (
      'SELECT * from MeterReader')
    Left = 336
    Top = 208
  end
  object tblReadingSchedule: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    FetchOptions.AssignedValues = [evMode, evItems, evRowsetSize, evCache, evUnidirectional]
    FetchOptions.Unidirectional = True
    FetchOptions.RowsetSize = 100
    FetchOptions.Items = [fiBlobs, fiDetails]
    FetchOptions.Cache = []
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  readingschedule '
      'where '
      '  MeterReaderId = :AMeterReaderID '
      'and '
      '  BillMonth = :ABillMonth')
    Left = 560
    Top = 202
    ParamData = <
      item
        Name = 'AMETERREADERID'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'ABILLMONTH'
        DataType = ftWideString
        ParamType = ptInput
        Value = '072021'
      end>
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
    object tblReadingSchedulescheduleid: TIntegerField
      FieldName = 'scheduleid'
      Origin = 'scheduleid'
      Required = True
    end
    object tblReadingSchedulemeterreaderid: TIntegerField
      FieldName = 'meterreaderid'
      Origin = 'meterreaderid'
    end
    object tblReadingScheduleposted: TIntegerField
      FieldName = 'posted'
      Origin = 'posted'
      Required = True
    end
  end
  object tblWriteSettings: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSMobileConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'settings'
    TableName = 'settings'
    Left = 40
    Top = 592
    object tblWriteSettingsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblWriteSettingssettingsname: TWideMemoField
      FieldName = 'settingsname'
      Origin = 'settingsname'
      Required = True
      BlobType = ftWideMemo
    end
    object tblWriteSettingssettingsvalue: TWideMemoField
      FieldName = 'settingsvalue'
      Origin = 'settingsvalue'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object tblWriteWaterRate: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSMobileConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'waterrate'
    TableName = 'waterrate'
    Left = 184
    Top = 592
  end
  object tblWriteRoute: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSMobileConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'routes'
    TableName = 'routes'
    Left = 640
    Top = 264
    object tblWriteRouteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      IdentityInsert = True
    end
    object tblWriteRouteroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object tblWriteRouterouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object RouteBatchMove: TFDBatchMove
    Reader = FDBMDSReaderRoute
    Writer = FDBMDSWriterRoute
    Mode = dmAppendUpdate
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'routecode'
        DestinationFieldName = 'routecode'
      end
      item
        SourceFieldName = 'routeaddress'
        DestinationFieldName = 'routeaddress'
      end>
    LogFileName = 'Data.log'
    Left = 637
    Top = 82
  end
  object qeyDeleteRec: TFDQuery
    Connection = MainDataModule.SQLiteJWSMobileConn
    SQL.Strings = (
      'DELETE FROM sqlite_sequence')
    Left = 648
    Top = 520
  end
  object MeterReaderBatchMove: TFDBatchMove
    Reader = FDBMDSReaderMeterReader
    Writer = FDBMDSWriterMeterReader
    Mode = dmAppendUpdate
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'name'
        DestinationFieldName = 'name'
      end>
    LogFileName = 'Data.log'
    Left = 325
    Top = 82
  end
  object qryGetTotalConsumer: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      
        'SELECT COUNT(ACCOUNTNO) as Count_value FROM CONSUMERACCOUNT WHER' +
        'E ROUTEADDRESS = :ARouteAddress')
    Left = 656
    Top = 576
    ParamData = <
      item
        Name = 'AROUTEADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qryGetTotalConsumerCount_value: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'Count_value'
      Origin = 'Count_value'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDBMSBillExempt: TFDBatchMoveDataSetReader
    DataSet = tblBillExempt
    Left = 312
    Top = 353
  end
  object FDBMDSWriterBillExempt: TFDBatchMoveDataSetWriter
    DataSet = tblWriteBillExempt
    Left = 312
    Top = 481
  end
  object BillExemptBatchMove: TFDBatchMove
    Reader = FDBMSBillExempt
    Writer = FDBMDSWriterBillExempt
    Mode = dmAppendUpdate
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'exemptname'
        DestinationFieldName = 'exemptname'
      end
      item
        SourceFieldName = 'description'
        DestinationFieldName = 'description'
      end
      item
        SourceFieldName = 'status'
        DestinationFieldName = 'status'
      end>
    LogFileName = 'Data.log'
    Left = 312
    Top = 417
  end
  object tblBillExempt: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'billexempttype'
    TableName = 'billexempttype'
    Left = 312
    Top = 537
  end
  object tblWriteBillExempt: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSMobileConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'billexempttype'
    TableName = 'billexempttype'
    Left = 312
    Top = 593
  end
  object tblWriteConsumerExempt: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSMobileConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'consumeraccountwithbillexempt'
    TableName = 'consumeraccountwithbillexempt'
    Left = 456
    Top = 585
  end
  object tblConsumerExempt: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'consumeraccountwithbillexempt'
    TableName = 'consumeraccountwithbillexempt'
    Left = 456
    Top = 529
  end
  object FDBMSWriterConsumerExempt: TFDBatchMoveDataSetWriter
    DataSet = tblWriteConsumerExempt
    Left = 456
    Top = 473
  end
  object FDBMSConsumerExempt: TFDBatchMoveDataSetReader
    DataSet = tblConsumerExempt
    Left = 456
    Top = 345
  end
  object ConsumerExemptBatchMove: TFDBatchMove
    Reader = FDBMSConsumerExempt
    Writer = FDBMSWriterConsumerExempt
    Mode = dmAppendUpdate
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'accountno'
        DestinationFieldName = 'accountno'
      end
      item
        SourceFieldName = 'accountname'
        DestinationFieldName = 'accountname'
      end
      item
        SourceFieldName = 'routecode'
        DestinationFieldName = 'routecode'
      end
      item
        SourceFieldName = 'billexempt'
        DestinationFieldName = 'billexempt'
      end>
    LogFileName = 'Data.log'
    Left = 456
    Top = 417
  end
end
