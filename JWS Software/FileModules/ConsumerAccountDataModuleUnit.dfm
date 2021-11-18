object ConsumerAccountDataModule: TConsumerAccountDataModule
  OldCreateOrder = False
  Height = 232
  Width = 290
  object qryMasterRecord: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT '
      '  id,'#9
      '  routesequence,'#9
      '  ratecode,'#9
      '  isseniorcitizen,'#9
      '  billnumber,'#9
      '  numberofreadingretry,'#9
      '  numberofbillprinted,'#9
      '  numberofsmssent,'#9
      '  previousreading,'#9
      '  presentreading,'#9
      '  averageconsumption,'#9
      '  currentconsumption,'#9
      '  totalconsumption,'#9
      '  oldmeterconsumption,'#9
      '  totalamountdue,'#9
      '  totalamountafterduedate,'#9
      '  discountamount,'#9
      '  penaltyamount,'#9
      '  totalbillarrears,'#9
      '  totalotherfees,'
      '  CAST(accountno as CHAR (10)) as accountno,'
      '  CAST(accountname as CHAR (200)) as accountname,'
      '  CAST(routeaddress as CHAR (200)) as routeaddress,'
      '  CAST(connectiontype as CHAR (15)) as connectiontype,'
      '  CAST(connectionstatus as CHAR (15)) as connectionstatus,'
      '  CAST(newconnectionstatus as CHAR (15)) as newconnectionstatus,'
      '  CAST(mobilenumber as CHAR (15)) as mobilenumber,'
      '  CAST(meterbrand as CHAR (30)) as meterbrand,'
      '  CAST(meterserialno as CHAR (30)) as meterserialno,'
      '  CAST(billmonth as CHAR (10)) as billmonth,'
      '  CAST(previousreadingdate as CHAR (20)) as previousreadingdate,'
      '  CAST(presentreadingdate as CHAR (20)) as presentreadingdate,'
      '  CAST(meterfindings as CHAR (30)) as meterfindings,'
      '  CAST(readingremarks as CHAR (30)) as readingremarks,'
      '  CAST(paymentduedate as CHAR (20)) as paymentduedate,'
      '  CAST(paymentdateafterdue as CHAR (20)) as paymentdateafterdue,'
      '  CAST(disconnectiondate as CHAR (20)) as disconnectiondate,'
      '  CAST(readingtime as CHAR (20)) as readingtime,'
      '  CAST(meterreadername as CHAR (200)) as meterreadername,'
      '  CAST(dateuploaded as CHAR (20)) as dateuploaded'
      'FROM CONSUMERACCOUNT'
      '')
    Left = 24
    Top = 40
    object qryMasterRecordid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryMasterRecordroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object qryMasterRecordratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object qryMasterRecordisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object qryMasterRecordbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object qryMasterRecordnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object qryMasterRecordnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object qryMasterRecordnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object qryMasterRecordpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object qryMasterRecordpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object qryMasterRecordaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object qryMasterRecordcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object qryMasterRecordtotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object qryMasterRecordoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object qryMasterRecordtotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object qryMasterRecordtotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object qryMasterRecorddiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object qryMasterRecordpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object qryMasterRecordtotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object qryMasterRecordtotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object qryMasterRecordaccountno: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'accountno'
      Origin = 'accountno'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordaccountname: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'accountname'
      Origin = 'accountname'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordrouteaddress: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordconnectiontype: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordconnectionstatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordnewconnectionstatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordmobilenumber: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordmeterbrand: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordmeterserialno: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordbillmonth: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'billmonth'
      Origin = 'billmonth'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordpreviousreadingdate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordpresentreadingdate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordmeterfindings: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordreadingremarks: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordpaymentduedate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordpaymentdateafterdue: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecorddisconnectiondate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordreadingtime: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'readingtime'
      Origin = 'readingtime'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecordmeterreadername: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryMasterRecorddateuploaded: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object qrySearchRecord: TFDQuery
    Connection = MainDataModule.SQLiteJWSMainDatabaseConn
    SQL.Strings = (
      'SELECT '
      '  id,'#9
      '  routesequence,'#9
      '  ratecode,'#9
      '  isseniorcitizen,'#9
      '  billnumber,'#9
      '  numberofreadingretry,'#9
      '  numberofbillprinted,'#9
      '  numberofsmssent,'#9
      '  previousreading,'#9
      '  presentreading,'#9
      '  averageconsumption,'#9
      '  currentconsumption,'#9
      '  totalconsumption,'#9
      '  oldmeterconsumption,'#9
      '  totalamountdue,'#9
      '  totalamountafterduedate,'#9
      '  discountamount,'#9
      '  penaltyamount,'#9
      '  totalbillarrears,'#9
      '  totalotherfees,'
      '  CAST(accountno as CHAR (10)) as accountno,'
      '  CAST(accountname as CHAR (200)) as accountname,'
      '  CAST(routeaddress as CHAR (200)) as routeaddress,'
      '  CAST(connectiontype as CHAR (15)) as connectiontype,'
      '  CAST(connectionstatus as CHAR (15)) as connectionstatus,'
      '  CAST(newconnectionstatus as CHAR (15)) as newconnectionstatus,'
      '  CAST(mobilenumber as CHAR (15)) as mobilenumber,'
      '  CAST(meterbrand as CHAR (30)) as meterbrand,'
      '  CAST(meterserialno as CHAR (30)) as meterserialno,'
      '  CAST(billmonth as CHAR (10)) as billmonth,'
      '  CAST(previousreadingdate as CHAR (20)) as previousreadingdate,'
      '  CAST(presentreadingdate as CHAR (20)) as presentreadingdate,'
      '  CAST(meterfindings as CHAR (30)) as meterfindings,'
      '  CAST(readingremarks as CHAR (30)) as readingremarks,'
      '  CAST(paymentduedate as CHAR (20)) as paymentduedate,'
      '  CAST(paymentdateafterdue as CHAR (20)) as paymentdateafterdue,'
      '  CAST(disconnectiondate as CHAR (20)) as disconnectiondate,'
      '  CAST(readingtime as CHAR (20)) as readingtime,'
      '  CAST(meterreadername as CHAR (200)) as meterreadername,'
      '  CAST(dateuploaded as CHAR (20)) as dateuploaded'
      'FROM CONSUMERACCOUNT'
      'Where accountno Like :AAccountNumber'
      '')
    Left = 24
    Top = 96
    ParamData = <
      item
        Name = 'AACCOUNTNUMBER'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qrySearchRecordid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrySearchRecordroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object qrySearchRecordratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object qrySearchRecordisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object qrySearchRecordbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object qrySearchRecordnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object qrySearchRecordnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object qrySearchRecordnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object qrySearchRecordpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object qrySearchRecordpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object qrySearchRecordaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object qrySearchRecordcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object qrySearchRecordtotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object qrySearchRecordoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object qrySearchRecordtotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object qrySearchRecordtotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object qrySearchRecorddiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object qrySearchRecordpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object qrySearchRecordtotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object qrySearchRecordtotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object qrySearchRecordaccountno: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'accountno'
      Origin = 'accountno'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordaccountname: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'accountname'
      Origin = 'accountname'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordrouteaddress: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordconnectiontype: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordconnectionstatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordnewconnectionstatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordmobilenumber: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordmeterbrand: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordmeterserialno: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordbillmonth: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'billmonth'
      Origin = 'billmonth'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordpreviousreadingdate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordpresentreadingdate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordmeterfindings: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordreadingremarks: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordpaymentduedate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordpaymentdateafterdue: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecorddisconnectiondate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordreadingtime: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'readingtime'
      Origin = 'readingtime'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecordmeterreadername: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySearchRecorddateuploaded: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
end
