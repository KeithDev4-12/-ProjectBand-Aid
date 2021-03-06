unit GenerateDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.DataSet, MemDS, VirtualTable;

type
  TGenerateDataModule = class(TDataModule)
    FDBMDSReaderSettings: TFDBatchMoveDataSetReader;
    FDBMDSWriterSettings: TFDBatchMoveDataSetWriter;
    SettingsBatchMove: TFDBatchMove;
    tblSettings: TFDTable;
    FDBMDSReaderConsumer: TFDBatchMoveDataSetReader;
    FDBMDSWriterConsumer: TFDBatchMoveDataSetWriter;
    ConsumerBatchMove: TFDBatchMove;
    FDBMDSReaderFieldFindings: TFDBatchMoveDataSetReader;
    FDBMDSWriterFieldFindings: TFDBatchMoveDataSetWriter;
    FieldFindingsBatchMove: TFDBatchMove;
    tblFieldFinding: TFDTable;
    FDBMDSReaderWaterRate: TFDBatchMoveDataSetReader;
    FDBMDSWriterWaterRate: TFDBatchMoveDataSetWriter;
    WaterRateBatchMove: TFDBatchMove;
    tblWaterRate: TFDTable;
    FDBMDSReaderMeterReader: TFDBatchMoveDataSetReader;
    FDBMDSWriterMeterReader: TFDBatchMoveDataSetWriter;
    FDBMDSReaderReadingSchedule: TFDBatchMoveDataSetReader;
    FDBMDSWriterReadingSchedule: TFDBatchMoveDataSetWriter;
    ReadingScheduleBatchMove: TFDBatchMove;
    tblReadingScheduleAll: TFDTable;
    FDBMDS: TFDBatchMoveDataSetReader;
    FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter;
    FDBatchMove1: TFDBatchMove;
    FDTable1: TFDTable;
    tblRoute: TFDTable;
    FDBMDSWriterRoute: TFDBatchMoveDataSetWriter;
    FDBMDSReaderRoute: TFDBatchMoveDataSetReader;
    vtConsumerAccount: TVirtualTable;
    tblWriteConsumerAccount: TFDTable;
    qrySelectSchedule: TFDQuery;
    qrySelectSchedule1: TFDQuery;
    tblWriteFieldFindings: TFDTable;
    tblReadingScheduleAllid: TFDAutoIncField;
    tblReadingScheduleAllbillmonth: TWideMemoField;
    tblReadingScheduleAllroutecode: TIntegerField;
    tblReadingScheduleAllrouteaddress: TWideMemoField;
    tblReadingScheduleAlltotalconsumer: TIntegerField;
    tblReadingScheduleAllreadingstartdate: TWideMemoField;
    tblReadingScheduleAllduration: TIntegerField;
    tblReadingScheduleAllscheduleid: TIntegerField;
    tblReadingScheduleAllmeterreaderid: TIntegerField;
    tblReadingScheduleAllposted: TIntegerField;
    tblConsumerAccount: TFDQuery;
    tblWriteMeterReader: TFDTable;
    tblWriteReadingSchedule: TFDTable;
    tblMeterReader: TFDQuery;
    tblReadingSchedule: TFDQuery;
    tblRouteid: TFDAutoIncField;
    tblRouteroutecode: TIntegerField;
    tblRouterouteaddress: TWideMemoField;
    tblWriteSettings: TFDTable;
    tblWriteWaterRate: TFDTable;
    tblWriteRoute: TFDTable;
    RouteBatchMove: TFDBatchMove;
    tblWriteRouteid: TFDAutoIncField;
    tblWriteRouteroutecode: TIntegerField;
    tblWriteRouterouteaddress: TWideMemoField;
    tblWriteReadingScheduleid: TFDAutoIncField;
    tblWriteReadingSchedulebillmonth: TWideMemoField;
    tblWriteReadingScheduleroutecode: TIntegerField;
    tblWriteReadingSchedulerouteaddress: TWideMemoField;
    tblWriteReadingScheduletotalconsumer: TIntegerField;
    tblWriteReadingSchedulereadingstartdate: TWideMemoField;
    tblWriteReadingScheduleduration: TIntegerField;
    tblWriteReadingSchedulescheduleid: TIntegerField;
    tblWriteReadingSchedulemeterreaderid: TIntegerField;
    tblWriteReadingScheduleposted: TIntegerField;
    tblReadingScheduleid: TFDAutoIncField;
    tblReadingSchedulebillmonth: TWideMemoField;
    tblReadingScheduleroutecode: TIntegerField;
    tblReadingSchedulerouteaddress: TWideMemoField;
    tblReadingScheduletotalconsumer: TIntegerField;
    tblReadingSchedulereadingstartdate: TWideMemoField;
    tblReadingScheduleduration: TIntegerField;
    tblReadingSchedulescheduleid: TIntegerField;
    tblReadingSchedulemeterreaderid: TIntegerField;
    tblReadingScheduleposted: TIntegerField;
    qeyDeleteRec: TFDQuery;
    tblWriteConsumerAccountid: TFDAutoIncField;
    tblWriteConsumerAccountaccountno: TWideMemoField;
    tblWriteConsumerAccountaccountname: TWideMemoField;
    tblWriteConsumerAccountroutesequence: TIntegerField;
    tblWriteConsumerAccountroutecode: TIntegerField;
    tblWriteConsumerAccountrouteaddress: TWideMemoField;
    tblWriteConsumerAccountratecode: TIntegerField;
    tblWriteConsumerAccountconnectiontype: TWideMemoField;
    tblWriteConsumerAccountconnectionstatus: TWideMemoField;
    tblWriteConsumerAccountnewconnectionstatus: TWideMemoField;
    tblWriteConsumerAccountisseniorcitizen: TIntegerField;
    tblWriteConsumerAccountmobilenumber: TWideMemoField;
    tblWriteConsumerAccountmeterbrand: TWideMemoField;
    tblWriteConsumerAccountmeterserialno: TWideMemoField;
    tblWriteConsumerAccountbillmonth: TWideMemoField;
    tblWriteConsumerAccountbillnumber: TIntegerField;
    tblWriteConsumerAccountpreviousreading: TFloatField;
    tblWriteConsumerAccountpreviousreadingdate: TWideMemoField;
    tblWriteConsumerAccountpresentreading: TFloatField;
    tblWriteConsumerAccountpresentreadingdate: TWideMemoField;
    tblWriteConsumerAccountaverageconsumption: TFloatField;
    tblWriteConsumerAccountcurrentconsumption: TFloatField;
    tblWriteConsumerAccounttotalconsumption: TFloatField;
    tblWriteConsumerAccountoldmeterconsumption: TFloatField;
    tblWriteConsumerAccountmeterfindings: TWideMemoField;
    tblWriteConsumerAccountreadingremarks: TWideMemoField;
    tblWriteConsumerAccountcurrentamountdue: TFloatField;
    tblWriteConsumerAccounttotalamountdue: TFloatField;
    tblWriteConsumerAccounttotalamountafterduedate: TFloatField;
    tblWriteConsumerAccountdiscountamount: TFloatField;
    tblWriteConsumerAccountpenaltyamount: TFloatField;
    tblWriteConsumerAccounttotalbillarrears: TFloatField;
    tblWriteConsumerAccounttotalotherfees: TFloatField;
    tblWriteConsumerAccountpaymentduedate: TWideMemoField;
    tblWriteConsumerAccountpaymentdateafterdue: TWideMemoField;
    tblWriteConsumerAccountdisconnectiondate: TWideMemoField;
    tblWriteConsumerAccountreadingtime: TWideMemoField;
    tblWriteConsumerAccountmeterreadername: TWideMemoField;
    tblWriteConsumerAccountnumberofreadingretry: TIntegerField;
    tblWriteConsumerAccountnumberofbillprinted: TIntegerField;
    tblWriteConsumerAccountnumberofsmssent: TIntegerField;
    tblWriteConsumerAccountdateuploaded: TWideMemoField;
    tblConsumerAccountid: TFDAutoIncField;
    tblConsumerAccountaccountno: TWideMemoField;
    tblConsumerAccountaccountname: TWideMemoField;
    tblConsumerAccountroutesequence: TIntegerField;
    tblConsumerAccountroutecode: TIntegerField;
    tblConsumerAccountrouteaddress: TWideMemoField;
    tblConsumerAccountratecode: TIntegerField;
    tblConsumerAccountconnectiontype: TWideMemoField;
    tblConsumerAccountconnectionstatus: TWideMemoField;
    tblConsumerAccountnewconnectionstatus: TWideMemoField;
    tblConsumerAccountisseniorcitizen: TIntegerField;
    tblConsumerAccountmobilenumber: TWideMemoField;
    tblConsumerAccountmeterbrand: TWideMemoField;
    tblConsumerAccountmeterserialno: TWideMemoField;
    tblConsumerAccountbillmonth: TWideMemoField;
    tblConsumerAccountbillnumber: TIntegerField;
    tblConsumerAccountpreviousreading: TFloatField;
    tblConsumerAccountpreviousreadingdate: TWideMemoField;
    tblConsumerAccountpresentreading: TFloatField;
    tblConsumerAccountpresentreadingdate: TWideMemoField;
    tblConsumerAccountaverageconsumption: TFloatField;
    tblConsumerAccountcurrentconsumption: TFloatField;
    tblConsumerAccounttotalconsumption: TFloatField;
    tblConsumerAccountoldmeterconsumption: TFloatField;
    tblConsumerAccountmeterfindings: TWideMemoField;
    tblConsumerAccountreadingremarks: TWideMemoField;
    tblConsumerAccountcurrentamountdue: TFloatField;
    tblConsumerAccounttotalamountdue: TFloatField;
    tblConsumerAccounttotalamountafterduedate: TFloatField;
    tblConsumerAccountdiscountamount: TFloatField;
    tblConsumerAccountpenaltyamount: TFloatField;
    tblConsumerAccounttotalbillarrears: TFloatField;
    tblConsumerAccounttotalotherfees: TFloatField;
    tblConsumerAccountpaymentduedate: TWideMemoField;
    tblConsumerAccountpaymentdateafterdue: TWideMemoField;
    tblConsumerAccountdisconnectiondate: TWideMemoField;
    tblConsumerAccountreadingtime: TWideMemoField;
    tblConsumerAccountmeterreadername: TWideMemoField;
    tblConsumerAccountnumberofreadingretry: TIntegerField;
    tblConsumerAccountnumberofbillprinted: TIntegerField;
    tblConsumerAccountnumberofsmssent: TIntegerField;
    tblConsumerAccountdateuploaded: TWideMemoField;
    MeterReaderBatchMove: TFDBatchMove;
    tblWriteSettingsid: TFDAutoIncField;
    tblWriteSettingssettingsname: TWideMemoField;
    tblWriteSettingssettingsvalue: TWideMemoField;
    qryGetTotalConsumer: TFDQuery;
    qryGetTotalConsumerCount_value: TLargeintField;
    vtConsumerAccountid: TAutoIncField;
    vtConsumerAccountaccountno: TWideMemoField;
    vtConsumerAccountaccountname: TWideMemoField;
    vtConsumerAccountroutesequence: TIntegerField;
    vtConsumerAccountroutecode: TIntegerField;
    vtConsumerAccountrouteaddress: TWideMemoField;
    vtConsumerAccountratecode: TIntegerField;
    vtConsumerAccountconnectiontype: TWideMemoField;
    vtConsumerAccountconnectionstatus: TWideMemoField;
    vtConsumerAccountnewconnectionstatus: TWideMemoField;
    vtConsumerAccountisseniorcitizen: TIntegerField;
    vtConsumerAccountmobilenumber: TWideMemoField;
    vtConsumerAccountmeterbrand: TWideMemoField;
    vtConsumerAccountmeterserialno: TWideMemoField;
    vtConsumerAccountbillmonth: TWideMemoField;
    vtConsumerAccountbillnumber: TIntegerField;
    vtConsumerAccountpreviousreading: TFloatField;
    vtConsumerAccountpreviousreadingdate: TWideMemoField;
    vtConsumerAccountpresentreading: TFloatField;
    vtConsumerAccountpresentreadingdate: TWideMemoField;
    vtConsumerAccountaverageconsumption: TFloatField;
    vtConsumerAccountcurrentconsumption: TFloatField;
    vtConsumerAccounttotalconsumption: TFloatField;
    vtConsumerAccountoldmeterconsumption: TFloatField;
    vtConsumerAccountmeterfindings: TWideMemoField;
    vtConsumerAccountreadingremarks: TWideMemoField;
    vtConsumerAccountcurrentamountdue: TFloatField;
    vtConsumerAccounttotalamountdue: TFloatField;
    vtConsumerAccounttotalamountafterduedate: TFloatField;
    vtConsumerAccountdiscountamount: TFloatField;
    vtConsumerAccountpenaltyamount: TFloatField;
    vtConsumerAccounttotalbillarrears: TFloatField;
    vtConsumerAccounttotalotherfees: TFloatField;
    vtConsumerAccountpaymentduedate: TWideMemoField;
    vtConsumerAccountpaymentdateafterdue: TWideMemoField;
    vtConsumerAccountdisconnectiondate: TWideMemoField;
    vtConsumerAccountreadingtime: TWideMemoField;
    vtConsumerAccountmeterreadername: TWideMemoField;
    vtConsumerAccountnumberofreadingretry: TIntegerField;
    vtConsumerAccountnumberofbillprinted: TIntegerField;
    vtConsumerAccountnumberofsmssent: TIntegerField;
    vtConsumerAccountdateuploaded: TWideMemoField;
    tblSettingsid: TFDAutoIncField;
    tblSettingssettingsname: TWideMemoField;
    tblSettingssettingsvalue: TWideMemoField;
    tblSettingsqq: TStringField;
    FDBMSBillExempt: TFDBatchMoveDataSetReader;
    FDBMDSWriterBillExempt: TFDBatchMoveDataSetWriter;
    BillExemptBatchMove: TFDBatchMove;
    tblBillExempt: TFDTable;
    tblWriteBillExempt: TFDTable;
    tblWriteConsumerExempt: TFDTable;
    tblConsumerExempt: TFDTable;
    FDBMSWriterConsumerExempt: TFDBatchMoveDataSetWriter;
    FDBMSConsumerExempt: TFDBatchMoveDataSetReader;
    ConsumerExemptBatchMove: TFDBatchMove;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExecuteConsumerAccount(VarRouteAddress :String);
    procedure ExecuteReadingSchedule(VarMeterReaderId,VarBillMonth :String);
    procedure ExecuteFieldFindings();
    procedure ExecuteRoute();
    procedure ExecuteSettings();
    procedure ExecuteWaterRate();
    procedure ExecuteBillExempt();
    procedure ExecuteConsumerExempt();
    procedure ExecuteMeterReader(VarMeterReaderId: String);
    var AMonth,AYear:String;
  end;

var
  GenerateDataModule: TGenerateDataModule;


implementation

Uses MainDataModuleUnit;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TGenerateDataModule.ExecuteBillExempt;
begin
  BillExemptBatchMove.Execute;
end;

procedure TGenerateDataModule.ExecuteConsumerAccount(VarRouteAddress: String);

begin
  tblConsumerAccount.Close;
  tblConsumerAccount.ParamByName('ARouteAddress').AsString := '%'+VarRouteAddress+'%';
  tblConsumerAccount.Open();
  tblConsumerAccount.First;
  while not tblConsumerAccount.EOF do begin
    vtConsumerAccount.Append;
    vtConsumerAccountaccountno.AsString :=      tblConsumerAccountaccountno.AsString;
    if tblConsumerAccountaccountname.AsString.Contains('??') then begin
      vtConsumerAccountaccountname.AsString :=        StringReplace(tblConsumerAccountaccountname.AsString,'??','?',[rfReplaceAll, rfIgnoreCase]);
    end else begin
      vtConsumerAccountaccountname.AsString :=        tblConsumerAccountaccountname.AsString;
    end;
    vtConsumerAccountroutesequence.AsInteger :=         tblConsumerAccountroutesequence.AsInteger;
    vtConsumerAccountrouteaddress.AsString :=       tblConsumerAccountrouteaddress.AsString;
    vtConsumerAccountroutecode.AsInteger :=      tblConsumerAccountroutecode.AsInteger;
    vtConsumerAccountratecode.AsInteger :=      tblConsumerAccountratecode.AsInteger;
    vtConsumerAccountconnectiontype.AsString :=         tblConsumerAccountconnectiontype.AsString;
    vtConsumerAccountconnectionstatus.AsString :=       tblConsumerAccountconnectionstatus.AsString;
    vtConsumerAccountnewconnectionstatus.AsString :=        tblConsumerAccountnewconnectionstatus.AsString;
    vtConsumerAccountisseniorcitizen.AsInteger :=       tblConsumerAccountisseniorcitizen.AsInteger;
    vtConsumerAccountmobilenumber.AsString :=       tblConsumerAccountmobilenumber.AsString;
    vtConsumerAccountmeterbrand.AsString :=         tblConsumerAccountmeterbrand.AsString;
    vtConsumerAccountmeterserialno.AsString :=      tblConsumerAccountmeterserialno.AsString;
    vtConsumerAccountbillmonth.AsString :=      tblConsumerAccountbillmonth.AsString;
    vtConsumerAccountbillnumber.AsInteger :=        tblConsumerAccountbillnumber.AsInteger;
    vtConsumerAccountpreviousreading.AsCurrency :=      tblConsumerAccountpreviousreading.AsCurrency;
    //vtConsumerAccountpreviousreadingdate.AsString :=       FormatDateTime('MM/DD/YYYY',StrToDateTime(tblConsumerAccountpreviousreadingdate.asString));
    vtConsumerAccountpreviousreadingdate.AsString :=       tblConsumerAccountpreviousreadingdate.asString;
    vtConsumerAccountpresentreading.AsCurrency :=       tblConsumerAccountpresentreading.AsCurrency;
    vtConsumerAccountpresentreadingdate.AsString :=         tblConsumerAccountpresentreadingdate.AsString;
    vtConsumerAccountaverageconsumption.AsCurrency :=       tblConsumerAccountaverageconsumption.AsCurrency;
    vtConsumerAccountcurrentconsumption.AsCurrency :=       tblConsumerAccountcurrentconsumption.AsCurrency;
    vtConsumerAccounttotalconsumption.AsCurrency :=         tblConsumerAccounttotalconsumption.AsCurrency;
    vtConsumerAccountoldmeterconsumption.AsCurrency :=      tblConsumerAccountoldmeterconsumption.AsCurrency;
    vtConsumerAccountmeterfindings.AsString :=      tblConsumerAccountmeterfindings.AsString;
    vtConsumerAccountreadingremarks.AsString :=         tblConsumerAccountreadingremarks.AsString;
    vtConsumerAccounttotalamountdue.AsCurrency :=       tblConsumerAccounttotalamountdue.AsCurrency;
    vtConsumerAccounttotalamountafterduedate.AsCurrency :=      tblConsumerAccounttotalamountafterduedate.AsCurrency;
    vtConsumerAccountdiscountamount.AsCurrency :=       tblConsumerAccountdiscountamount.AsCurrency;
    vtConsumerAccountpenaltyamount.AsCurrency :=        tblConsumerAccountpenaltyamount.AsCurrency;
    vtConsumerAccounttotalbillarrears.AsCurrency :=         tblConsumerAccounttotalbillarrears.AsCurrency;
    vtConsumerAccounttotalotherfees.AsCurrency :=       tblConsumerAccounttotalotherfees.AsCurrency;
    vtConsumerAccountpaymentduedate.AsString :=         tblConsumerAccountpaymentduedate.AsString;
    vtConsumerAccountpaymentdateafterdue.AsString :=        tblConsumerAccountpaymentdateafterdue.AsString;
    vtConsumerAccountdisconnectiondate.AsString :=      tblConsumerAccountdisconnectiondate.AsString;
    vtConsumerAccountreadingtime.AsString :=        tblConsumerAccountreadingtime.AsString;
    vtConsumerAccountmeterreadername.AsString :=        tblConsumerAccountmeterreadername.AsString;
    vtConsumerAccountnumberofreadingretry.AsInteger :=      tblConsumerAccountnumberofreadingretry.AsInteger;
    vtConsumerAccountnumberofbillprinted.AsInteger :=       tblConsumerAccountnumberofbillprinted.AsInteger;
    vtConsumerAccountnumberofsmssent.AsInteger :=       tblConsumerAccountnumberofsmssent.AsInteger;
    vtConsumerAccountdateuploaded.AsString :=       tblConsumerAccountdateuploaded.AsString;
    vtConsumerAccountcurrentamountdue.AsCurrency := tblConsumerAccountcurrentamountdue.AsCurrency;
    vtConsumerAccount.Post;
    tblConsumerAccount.Next;
  end;
end;

procedure TGenerateDataModule.ExecuteConsumerExempt;
begin
  ConsumerExemptBatchMove.Execute();
end;

procedure TGenerateDataModule.ExecuteFieldFindings;
begin
  tblFieldFinding.Close;
  tblFieldFinding.Open;
  FieldFindingsBatchMove.Execute;
end;

procedure TGenerateDataModule.ExecuteMeterReader(VarMeterReaderId: String);
begin
  //tblMeterReader.Close;
  //tblMeterReader.ParamByName('AMeterReaderId').AsString := VarMeterReaderId;
  //tblMeterReader.Open();
  MeterReaderBatchMove.Execute;
end;

procedure TGenerateDataModule.ExecuteReadingSchedule(VarMeterReaderId,VarBillMonth: String);
begin
  //if VarALL = 'ALL' then begin
  //  FDBMDSReaderReadingSchedule.DataSet := tblReadingScheduleAll;
  //end else begin
  tblReadingSchedule.Close;
  tblReadingSchedule.ParamByName('AMeterReaderId').AsString := VarMeterReaderId;
  tblReadingSchedule.ParamByName('ABillMonth').AsString := VarBillMonth;
  tblReadingSchedule.Open();
  //FDBMDSReaderReadingSchedule.DataSet := tblReadingSchedule;
  //end;
  ReadingScheduleBatchMove.Execute;
end;

procedure TGenerateDataModule.ExecuteRoute;
begin
  RouteBatchMove.Execute;
end;

procedure TGenerateDataModule.ExecuteSettings;
begin
  SettingsBatchMove.Execute;
end;

procedure TGenerateDataModule.ExecuteWaterRate;
begin
  WaterRateBatchMove.Execute;
end;

end.
