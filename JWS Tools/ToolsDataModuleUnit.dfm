object ToolsDataModule: TToolsDataModule
  OldCreateOrder = False
  Height = 507
  Width = 549
  object tblMeterReader: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'meterreader'
    TableName = 'meterreader'
    Left = 48
    Top = 40
    object tblMeterReaderid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblMeterReadername: TWideMemoField
      FieldName = 'name'
      Origin = 'name'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object tblRoutes: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'routes'
    TableName = 'routes'
    Left = 112
    Top = 56
    object tblRoutesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblRoutesroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object tblRoutesrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object qryConsumerAccount: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'update consumeraccount '
      'set'
      'accountno  =  :Aaccountno,'
      'newconnectionstatus  =  :Anewconnectionstatus,'
      'presentreading  =  :Apresentreading,'
      'presentreadingdate  =  :Apresentreadingdate,'
      'currentconsumption  =  :Acurrentconsumption,'
      'totalconsumption  =  :Atotalconsumption,'
      'meterfindings  =  :Ameterfindings,'
      'readingremarks  =  :Areadingremarks,'
      'currentamountdue  =  :Acurrentamountdue,'
      'totalamountdue  =  :Atotalamountdue,'
      'totalamountafterduedate  =  :Atotalamountafterduedate,'
      'discountamount  =  :Adiscountamount,'
      'penaltyamount  =  :Apenaltyamount,'
      'paymentduedate  =  :Apaymentduedate,'
      'paymentdateafterdue  =  :Apaymentdateafterdue,'
      'disconnectiondate  =  :Adisconnectiondate,'
      'readingtime  =  :Areadingtime,'
      'meterreadername  =  :Ameterreadername,'
      'numberofreadingretry  =  :Anumberofreadingretry,'
      'numberofbillprinted  =  :Anumberofbillprinted,'
      'numberofsmssent  =  :Anumberofsmssent,'
      'dateuploaded = :Adateuploaded'
      'where'
      'id = :AId')
    Left = 64
    Top = 144
    ParamData = <
      item
        Name = 'AACCOUNTNO'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ANEWCONNECTIONSTATUS'
        ParamType = ptInput
      end
      item
        Name = 'APRESENTREADING'
        ParamType = ptInput
      end
      item
        Name = 'APRESENTREADINGDATE'
        ParamType = ptInput
      end
      item
        Name = 'ACURRENTCONSUMPTION'
        ParamType = ptInput
      end
      item
        Name = 'ATOTALCONSUMPTION'
        ParamType = ptInput
      end
      item
        Name = 'AMETERFINDINGS'
        ParamType = ptInput
      end
      item
        Name = 'AREADINGREMARKS'
        ParamType = ptInput
      end
      item
        Name = 'ACURRENTAMOUNTDUE'
        ParamType = ptInput
      end
      item
        Name = 'ATOTALAMOUNTDUE'
        ParamType = ptInput
      end
      item
        Name = 'ATOTALAMOUNTAFTERDUEDATE'
        ParamType = ptInput
      end
      item
        Name = 'ADISCOUNTAMOUNT'
        ParamType = ptInput
      end
      item
        Name = 'APENALTYAMOUNT'
        ParamType = ptInput
      end
      item
        Name = 'APAYMENTDUEDATE'
        ParamType = ptInput
      end
      item
        Name = 'APAYMENTDATEAFTERDUE'
        ParamType = ptInput
      end
      item
        Name = 'ADISCONNECTIONDATE'
        ParamType = ptInput
      end
      item
        Name = 'AREADINGTIME'
        ParamType = ptInput
      end
      item
        Name = 'AMETERREADERNAME'
        ParamType = ptInput
      end
      item
        Name = 'ANUMBEROFREADINGRETRY'
        ParamType = ptInput
      end
      item
        Name = 'ANUMBEROFBILLPRINTED'
        ParamType = ptInput
      end
      item
        Name = 'ANUMBEROFSMSSENT'
        ParamType = ptInput
      end
      item
        Name = 'ADATEUPLOADED'
        ParamType = ptInput
      end
      item
        Name = 'AID'
        ParamType = ptInput
      end>
  end
  object tblConsumerAccount: TFDTable
    IndexFieldNames = 'id'
    Aggregates = <
      item
      end>
    ConstraintsEnabled = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
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
    Left = 304
    Top = 56
    object tblConsumerAccountid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      IdentityInsert = True
    end
    object tblConsumerAccountaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
    end
    object tblConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
    end
    object tblConsumerAccountrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
    end
    object tblConsumerAccountconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
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
      BlobType = ftWideMemo
    end
    object tblConsumerAccountmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
    end
    object tblConsumerAccountpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
    end
    object tblConsumerAccountpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
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
  object qryGetConsumerAccount: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT * FROM CONSUMERACCOUNT '
      '-- WHERE'
      
        '-- RouteCode = '#39'1'#39' AND MeterFindings <> '#39'NONE'#39' OR RouteCode = '#39'1' +
        #39' AND ReadingRemarks <> '#39'NONE'#39)
    Left = 376
    Top = 224
    object qryGetConsumerAccountid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryGetConsumerAccountaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object qryGetConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
    end
    object qryGetConsumerAccountrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object qryGetConsumerAccountconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountnewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object qryGetConsumerAccountmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object qryGetConsumerAccountpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object qryGetConsumerAccountpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object qryGetConsumerAccountpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object qryGetConsumerAccountcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object qryGetConsumerAccounttotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object qryGetConsumerAccountoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object qryGetConsumerAccountmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountcurrentamountdue: TFloatField
      DisplayWidth = 20
      FieldName = 'currentamountdue'
      Origin = 'currentamountdue'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object qryGetConsumerAccounttotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
      currency = True
    end
    object qryGetConsumerAccounttotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
      currency = True
    end
    object qryGetConsumerAccountdiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
      currency = True
    end
    object qryGetConsumerAccountpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
      currency = True
    end
    object qryGetConsumerAccounttotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
      currency = True
    end
    object qryGetConsumerAccounttotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
      currency = True
    end
    object qryGetConsumerAccountpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountreadingtime: TWideMemoField
      FieldName = 'readingtime'
      Origin = 'readingtime'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      BlobType = ftWideMemo
    end
    object qryGetConsumerAccountnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object qryGetConsumerAccountnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object qryGetConsumerAccountnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object qryGetConsumerAccountdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
  object qryLedger: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    Left = 56
    Top = 360
    object qryLedgerreading_date: TMemoField
      FieldName = 'reading_date'
      Origin = 'reading_date'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgermeter_reading: TMemoField
      FieldName = 'meter_reading'
      Origin = 'meter_reading'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgercu_used: TMemoField
      FieldName = 'cu_used'
      Origin = 'cu_used'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgerpen_fee: TMemoField
      FieldName = 'pen_fee'
      Origin = 'pen_fee'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgerbill_amnt: TMemoField
      FieldName = 'bill_amnt'
      Origin = 'bill_amnt'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgerloans_MLP: TMemoField
      FieldName = 'loans_MLP'
      Origin = 'loans_MLP'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgerloans_MF: TMemoField
      FieldName = 'loans_MF'
      Origin = 'loans_MF'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgermisc: TMemoField
      FieldName = 'misc'
      Origin = 'misc'
      BlobType = ftMemo
    end
    object qryLedgertotal: TMemoField
      FieldName = 'total'
      Origin = 'total'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgerOR_num: TMemoField
      FieldName = 'OR_num'
      Origin = 'OR_num'
      BlobType = ftMemo
    end
    object qryLedgerOR_date: TMemoField
      FieldName = 'OR_date'
      Origin = 'OR_date'
      BlobType = ftMemo
    end
    object qryLedgerremarks: TMemoField
      FieldName = 'remarks'
      Origin = 'remarks'
      BlobType = ftMemo
    end
  end
  object qryProfile: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    SQL.Strings = (
      'Select * from Profile')
    Left = 192
    Top = 264
    object qryProfileid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryProfileacct_no: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'acct_no'
      Origin = 'acct_no'
      BlobType = ftMemo
    end
    object qryProfileapplicant: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'applicant'
      Origin = 'applicant'
      BlobType = ftMemo
    end
    object qryProfileaddress_st: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'address_st'
      Origin = 'address_st'
      BlobType = ftMemo
    end
    object qryProfiledate_applied: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'date_applied'
      Origin = 'date_applied'
      BlobType = ftMemo
    end
    object qryProfileserial_no: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'serial_no'
      Origin = 'serial_no'
      BlobType = ftMemo
    end
    object qryProfilesize: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'size'
      Origin = 'size'
      BlobType = ftMemo
    end
    object qryProfileor_no: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'or_no'
      Origin = 'or_no'
      BlobType = ftMemo
    end
    object qryProfileor_date: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'or_date'
      Origin = 'or_date'
      BlobType = ftMemo
    end
    object qryProfiletype_connection: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'type_connection'
      Origin = 'type_connection'
      BlobType = ftMemo
    end
    object qryProfileapproval: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'approval'
      Origin = 'approval'
      BlobType = ftMemo
    end
    object qryProfiledate_installed: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'date_installed'
      Origin = 'date_installed'
      BlobType = ftMemo
    end
    object qryProfilemode_payment: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mode_payment'
      Origin = 'mode_payment'
      Size = 45
    end
    object qryProfileaddress_brgy: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'address_brgy'
      Origin = 'address_brgy'
      BlobType = ftMemo
    end
    object qryProfilebrand: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'brand'
      Origin = 'brand'
      BlobType = ftMemo
    end
    object qryProfiletype_inspct: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'type_inspct'
      Origin = 'type_inspct'
      BlobType = ftMemo
    end
    object qryProfileplumber: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'plumber'
      Origin = 'plumber'
      BlobType = ftMemo
    end
    object qryProfileinitial_reading: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'initial_reading'
      Origin = 'initial_reading'
      BlobType = ftMemo
    end
    object qryProfileinspector: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'inspector'
      Origin = 'inspector'
      BlobType = ftMemo
    end
    object qryProfilemeterno: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'meterno'
      Origin = 'meterno'
      BlobType = ftMemo
    end
    object qryProfileBDATE: TMemoField
      FieldName = 'BDATE'
      Origin = 'BDATE'
      Required = True
      BlobType = ftMemo
    end
    object qryProfileisSenior: TMemoField
      FieldName = 'isSenior'
      Origin = 'isSenior'
      Required = True
      BlobType = ftMemo
    end
    object qryProfileisPwds: TMemoField
      FieldName = 'isPwds'
      Origin = 'isPwds'
      Required = True
      BlobType = ftMemo
    end
  end
  object qryLedgerOtherFee: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    SQL.Strings = (
      
        'select sum(installment_value) as installmentValue from installme' +
        'nt where'
      ' acc_no = :AAccountNumber'
      'and not Billed_date <> '#39#39' and addons_type = :AAddOns'
      'Order by Acc_no,Addons_type')
    Left = 461
    Top = 40
    ParamData = <
      item
        Name = 'AACCOUNTNUMBER'
        DataType = ftWideString
        ParamType = ptInput
        Value = '2013-02-1394'
      end
      item
        Name = 'AADDONS'
        ParamType = ptInput
      end>
    object qryLedgerOtherFeeinstallmentValue: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'installmentValue'
      Origin = 'installmentValue'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object fdqInstallement: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    SQL.Strings = (
      'update '
      '  installment '
      'set '
      '  Billed_date=:ABilledDate'
      'where '
      '  Addons_type = :AAddons '
      'and '
      '  acc_no = :AAccountNumber'
      'and'
      '  installment_value = :AInsVal')
    Left = 344
    Top = 312
    ParamData = <
      item
        Name = 'ABILLEDDATE'
        ParamType = ptInput
      end
      item
        Name = 'AADDONS'
        ParamType = ptInput
      end
      item
        Name = 'AACCOUNTNUMBER'
        ParamType = ptInput
      end
      item
        Name = 'AINSVAL'
        ParamType = ptInput
      end>
  end
  object qryShowID: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    SQL.Strings = (
      'SHOW COLUMNS FROM ldg_2005_10_0403 LIKE '#39'id'#39)
    Left = 464
    Top = 184
    object qryShowIDField: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Field'
      Origin = 'Field'
      Size = 64
    end
    object qryShowIDType: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Type'
      Origin = 'Type'
      BlobType = ftMemo
    end
    object qryShowIDNull: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Null'
      Origin = '`Null`'
      Size = 3
    end
    object qryShowIDKey: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Key'
      Origin = '`Key`'
      Size = 3
    end
    object qryShowIDDefault: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Default'
      Origin = '`Default`'
      BlobType = ftMemo
    end
    object qryShowIDExtra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Extra'
      Origin = 'Extra'
      Size = 27
    end
  end
  object qryCheckBillMonth: TFDQuery
    Left = 360
    Top = 440
  end
end
