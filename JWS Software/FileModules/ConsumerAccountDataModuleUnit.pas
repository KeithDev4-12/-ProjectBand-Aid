unit ConsumerAccountDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TConsumerAccountDataModule = class(TDataModule)
    qryMasterRecord: TFDQuery;
    qryMasterRecordid: TFDAutoIncField;
    qryMasterRecordroutesequence: TIntegerField;
    qryMasterRecordratecode: TIntegerField;
    qryMasterRecordisseniorcitizen: TIntegerField;
    qryMasterRecordbillnumber: TIntegerField;
    qryMasterRecordnumberofreadingretry: TIntegerField;
    qryMasterRecordnumberofbillprinted: TIntegerField;
    qryMasterRecordnumberofsmssent: TIntegerField;
    qryMasterRecordpreviousreading: TFloatField;
    qryMasterRecordpresentreading: TFloatField;
    qryMasterRecordaverageconsumption: TFloatField;
    qryMasterRecordcurrentconsumption: TFloatField;
    qryMasterRecordtotalconsumption: TFloatField;
    qryMasterRecordoldmeterconsumption: TFloatField;
    qryMasterRecordtotalamountdue: TFloatField;
    qryMasterRecordtotalamountafterduedate: TFloatField;
    qryMasterRecorddiscountamount: TFloatField;
    qryMasterRecordpenaltyamount: TFloatField;
    qryMasterRecordtotalbillarrears: TFloatField;
    qryMasterRecordtotalotherfees: TFloatField;
    qryMasterRecordaccountno: TWideStringField;
    qryMasterRecordaccountname: TWideStringField;
    qryMasterRecordrouteaddress: TWideStringField;
    qryMasterRecordconnectiontype: TWideStringField;
    qryMasterRecordconnectionstatus: TWideStringField;
    qryMasterRecordnewconnectionstatus: TWideStringField;
    qryMasterRecordmobilenumber: TWideStringField;
    qryMasterRecordmeterbrand: TWideStringField;
    qryMasterRecordmeterserialno: TWideStringField;
    qryMasterRecordbillmonth: TWideStringField;
    qryMasterRecordpreviousreadingdate: TWideStringField;
    qryMasterRecordpresentreadingdate: TWideStringField;
    qryMasterRecordmeterfindings: TWideStringField;
    qryMasterRecordreadingremarks: TWideStringField;
    qryMasterRecordpaymentduedate: TWideStringField;
    qryMasterRecordpaymentdateafterdue: TWideStringField;
    qryMasterRecorddisconnectiondate: TWideStringField;
    qryMasterRecordreadingtime: TWideStringField;
    qryMasterRecordmeterreadername: TWideStringField;
    qryMasterRecorddateuploaded: TWideStringField;
    qrySearchRecord: TFDQuery;
    qrySearchRecordid: TFDAutoIncField;
    qrySearchRecordroutesequence: TIntegerField;
    qrySearchRecordratecode: TIntegerField;
    qrySearchRecordisseniorcitizen: TIntegerField;
    qrySearchRecordbillnumber: TIntegerField;
    qrySearchRecordnumberofreadingretry: TIntegerField;
    qrySearchRecordnumberofbillprinted: TIntegerField;
    qrySearchRecordnumberofsmssent: TIntegerField;
    qrySearchRecordpreviousreading: TFloatField;
    qrySearchRecordpresentreading: TFloatField;
    qrySearchRecordaverageconsumption: TFloatField;
    qrySearchRecordcurrentconsumption: TFloatField;
    qrySearchRecordtotalconsumption: TFloatField;
    qrySearchRecordoldmeterconsumption: TFloatField;
    qrySearchRecordtotalamountdue: TFloatField;
    qrySearchRecordtotalamountafterduedate: TFloatField;
    qrySearchRecorddiscountamount: TFloatField;
    qrySearchRecordpenaltyamount: TFloatField;
    qrySearchRecordtotalbillarrears: TFloatField;
    qrySearchRecordtotalotherfees: TFloatField;
    qrySearchRecordaccountno: TWideStringField;
    qrySearchRecordaccountname: TWideStringField;
    qrySearchRecordrouteaddress: TWideStringField;
    qrySearchRecordconnectiontype: TWideStringField;
    qrySearchRecordconnectionstatus: TWideStringField;
    qrySearchRecordnewconnectionstatus: TWideStringField;
    qrySearchRecordmobilenumber: TWideStringField;
    qrySearchRecordmeterbrand: TWideStringField;
    qrySearchRecordmeterserialno: TWideStringField;
    qrySearchRecordbillmonth: TWideStringField;
    qrySearchRecordpreviousreadingdate: TWideStringField;
    qrySearchRecordpresentreadingdate: TWideStringField;
    qrySearchRecordmeterfindings: TWideStringField;
    qrySearchRecordreadingremarks: TWideStringField;
    qrySearchRecordpaymentduedate: TWideStringField;
    qrySearchRecordpaymentdateafterdue: TWideStringField;
    qrySearchRecorddisconnectiondate: TWideStringField;
    qrySearchRecordreadingtime: TWideStringField;
    qrySearchRecordmeterreadername: TWideStringField;
    qrySearchRecorddateuploaded: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsumerAccountDataModule: TConsumerAccountDataModule;

implementation

Uses MainDataModuleUnit;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
