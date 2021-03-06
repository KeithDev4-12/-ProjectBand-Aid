unit CreateScheduleDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, MemDS, VirtualTable;

type
  TCreateScheduleDataModule = class(TDataModule)
    qryRouteAssigned: TFDQuery;
    tblInsertScheduleName: TFDTable;
    dsScheduleName: TDataSource;
    tblInsertScheduleNameid: TFDAutoIncField;
    tblInsertScheduleNameScheduleName: TWideMemoField;
    qryInsertScheduleName: TFDQuery;
    qryInsertScheduleNameid: TFDAutoIncField;
    qryInsertScheduleNameSCHEDULENAME: TWideStringField;
    qryRouteAssignedroutecode: TIntegerField;
    qryRouteAssignedROUTEADDRESS: TWideStringField;
    dsRouteAssigned: TDataSource;
    tblReadingSchedule: TFDTable;
    qryRoute: TFDQuery;
    qryRouteid: TFDAutoIncField;
    qryRouteroutecode: TIntegerField;
    qryRouteROUTEADDRESS: TWideStringField;
    qryRouteAssignedscheduleid: TIntegerField;
    qryRouteAssignedREADINGSTARTDATE: TWideStringField;
    qryRouteAssignedduration: TIntegerField;
    qryCheckBillMonth: TFDQuery;
    qryBillMonth: TFDQuery;
    qryBillMonthBillMonth: TWideStringField;
    vtReadingSchedule: TVirtualTable;
    vtReadingScheduleid: TAutoIncField;
    vtReadingSchedulebillmonth: TWideMemoField;
    vtReadingScheduleroutecode: TIntegerField;
    vtReadingSchedulerouteaddress: TWideMemoField;
    vtReadingScheduletotalconsumer: TIntegerField;
    vtReadingSchedulereadingstartdate: TWideMemoField;
    vtReadingScheduleduration: TIntegerField;
    vtReadingSchedulescheduleid: TIntegerField;
    vtReadingSchedulemeterreaderid: TIntegerField;
    qryCheckReadingSchedule: TFDQuery;
    qryCheckReadingScheduleBILLMONTH: TWideStringField;
    qryCheckReadingScheduleroutecode: TIntegerField;
    qryCheckReadingScheduleROUTEADDRESS: TWideStringField;
    qryCheckReadingScheduletotalconsumer: TIntegerField;
    qryCheckReadingScheduleREADINGSTARTDATE: TWideStringField;
    qryCheckReadingScheduleduration: TIntegerField;
    qryCheckReadingSchedulescheduleid: TIntegerField;
    qryCheckReadingSchedulemeterreaderid: TIntegerField;
    qryCheckScheduleName: TFDQuery;
    qryMeterReader: TFDQuery;
    qryMeterReaderid: TFDAutoIncField;
    qryMeterReaderNAME: TWideStringField;
    qryMeterReaderAssigned: TFDQuery;
    dsMeterReaderAssigned: TDataSource;
    qryMeterReaderAssignedid: TFDAutoIncField;
    qryMeterReaderAssignedBILLMONTH: TWideStringField;
    qryMeterReaderAssignedroutecode: TIntegerField;
    qryMeterReaderAssignedROUTEADDRESS: TWideStringField;
    qryMeterReaderAssignedtotalconsumer: TIntegerField;
    qryMeterReaderAssignedREADINGSTARTDATE: TWideStringField;
    qryMeterReaderAssignedduration: TIntegerField;
    qryMeterReaderAssignedscheduleid: TIntegerField;
    qryMeterReaderAssignedmeterreaderid: TIntegerField;
    qryMeterReaderAssignedid_1: TFDAutoIncField;
    qryMeterReaderAssignedNAME: TWideStringField;
    qryMeterReaderAssignedSCHEDULENAME: TWideStringField;
    qryScheduleRepresentation: TFDQuery;
    qryScheduleRepresentationid: TFDAutoIncField;
    qryScheduleRepresentationSCHEDULENAME: TWideStringField;
    qryPostAllRecord: TFDQuery;
    qryPosted: TFDQuery;
    qryPostAllRecordid: TFDAutoIncField;
    qryPostAllRecordbillmonth: TWideMemoField;
    qryPostAllRecordroutecode: TIntegerField;
    qryPostAllRecordrouteaddress: TWideMemoField;
    qryPostAllRecordtotalconsumer: TIntegerField;
    qryPostAllRecordreadingstartdate: TWideMemoField;
    qryPostAllRecordduration: TIntegerField;
    qryPostedid: TFDAutoIncField;
    qryPostedbillmonth: TWideMemoField;
    qryPostedroutecode: TIntegerField;
    qryPostedrouteaddress: TWideMemoField;
    qryPostedtotalconsumer: TIntegerField;
    qryPostedreadingstartdate: TWideMemoField;
    qryPostedduration: TIntegerField;
    qryPostedscheduleid: TIntegerField;
    qryPostedmeterreaderid: TIntegerField;
    qryPostedposted: TIntegerField;
    qryPostAllRecordscheduleid: TIntegerField;
    qryPostAllRecordmeterreaderid: TIntegerField;
    qryPostAllRecordposted: TIntegerField;
    qryCountConsumer: TFDQuery;
    qryBillMonth2: TFDQuery;
    WideStringField2: TWideStringField;
    tblSettings: TFDTable;
    tblSettingsid: TFDAutoIncField;
    tblSettingssettingsname: TWideMemoField;
    tblSettingssettingsvalue: TWideMemoField;
    qryConsumerAccountCheck: TFDQuery;
    qryConsumerAccountCheckid: TFDAutoIncField;
    qryConsumerAccountCheckaccountno: TWideMemoField;
    qryConsumerAccountCheckaccountname: TWideMemoField;
    qryConsumerAccountCheckroutesequence: TIntegerField;
    qryConsumerAccountCheckroutecode: TIntegerField;
    qryConsumerAccountCheckrouteaddress: TWideMemoField;
    qryConsumerAccountCheckratecode: TIntegerField;
    qryConsumerAccountCheckconnectiontype: TWideMemoField;
    qryConsumerAccountCheckconnectionstatus: TWideMemoField;
    qryConsumerAccountChecknewconnectionstatus: TWideMemoField;
    qryConsumerAccountCheckisseniorcitizen: TIntegerField;
    qryConsumerAccountCheckmobilenumber: TWideMemoField;
    qryConsumerAccountCheckmeterbrand: TWideMemoField;
    qryConsumerAccountCheckmeterserialno: TWideMemoField;
    qryConsumerAccountCheckbillmonth: TWideMemoField;
    qryConsumerAccountCheckbillnumber: TIntegerField;
    qryConsumerAccountCheckpreviousreading: TFloatField;
    qryConsumerAccountCheckpreviousreadingdate: TWideMemoField;
    qryConsumerAccountCheckpresentreading: TFloatField;
    qryConsumerAccountCheckpresentreadingdate: TWideMemoField;
    qryConsumerAccountCheckaverageconsumption: TFloatField;
    qryConsumerAccountCheckcurrentconsumption: TFloatField;
    qryConsumerAccountChecktotalconsumption: TFloatField;
    qryConsumerAccountCheckoldmeterconsumption: TFloatField;
    qryConsumerAccountCheckmeterfindings: TWideMemoField;
    qryConsumerAccountCheckreadingremarks: TWideMemoField;
    qryConsumerAccountCheckcurrentamountdue: TFloatField;
    qryConsumerAccountChecktotalamountdue: TFloatField;
    qryConsumerAccountChecktotalamountafterduedate: TFloatField;
    qryConsumerAccountCheckdiscountamount: TFloatField;
    qryConsumerAccountCheckpenaltyamount: TFloatField;
    qryConsumerAccountChecktotalbillarrears: TFloatField;
    qryConsumerAccountChecktotalotherfees: TFloatField;
    qryConsumerAccountCheckpaymentduedate: TWideMemoField;
    qryConsumerAccountCheckpaymentdateafterdue: TWideMemoField;
    qryConsumerAccountCheckdisconnectiondate: TWideMemoField;
    qryConsumerAccountCheckreadingtime: TWideMemoField;
    qryConsumerAccountCheckmeterreadername: TWideMemoField;
    qryConsumerAccountChecknumberofreadingretry: TIntegerField;
    qryConsumerAccountChecknumberofbillprinted: TIntegerField;
    qryConsumerAccountChecknumberofsmssent: TIntegerField;
    qryConsumerAccountCheckdateuploaded: TWideMemoField;
    qryCountConsumerCountConsumer: TLargeintField;
    tblReadingScheduleid: TFDAutoIncField;
    tblReadingSchedulebillmonth: TWideMemoField;
    tblReadingScheduleroutecode: TIntegerField;
    tblReadingSchedulerouteaddress: TWideMemoField;
    tblReadingScheduletotalconsumer: TIntegerField;
    tblReadingSchedulereadingstartdate: TWideMemoField;
    tblReadingScheduleduration: TIntegerField;
    tblReadingScheduletotalfinished: TIntegerField;
    tblReadingScheduletotaluploaded: TIntegerField;
    tblReadingSchedulescheduleid: TIntegerField;
    tblReadingScheduleposted: TIntegerField;
    tblReadingSchedulemeterreaderid: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CreateScheduleDataModule: TCreateScheduleDataModule;

implementation
Uses MainDataModuleUnit;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
