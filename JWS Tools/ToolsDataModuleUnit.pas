unit ToolsDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TToolsDataModule = class(TDataModule)
    tblMeterReader: TFDTable;
    tblMeterReaderid: TFDAutoIncField;
    tblMeterReadername: TWideMemoField;
    tblRoutes: TFDTable;
    tblRoutesid: TFDAutoIncField;
    tblRoutesroutecode: TIntegerField;
    tblRoutesrouteaddress: TWideMemoField;
    qryConsumerAccount: TFDQuery;
    tblConsumerAccount: TFDTable;
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
    qryGetConsumerAccount: TFDQuery;
    qryGetConsumerAccountid: TFDAutoIncField;
    qryGetConsumerAccountaccountno: TWideMemoField;
    qryGetConsumerAccountaccountname: TWideMemoField;
    qryGetConsumerAccountroutesequence: TIntegerField;
    qryGetConsumerAccountroutecode: TIntegerField;
    qryGetConsumerAccountrouteaddress: TWideMemoField;
    qryGetConsumerAccountratecode: TIntegerField;
    qryGetConsumerAccountconnectiontype: TWideMemoField;
    qryGetConsumerAccountconnectionstatus: TWideMemoField;
    qryGetConsumerAccountnewconnectionstatus: TWideMemoField;
    qryGetConsumerAccountisseniorcitizen: TIntegerField;
    qryGetConsumerAccountmobilenumber: TWideMemoField;
    qryGetConsumerAccountmeterbrand: TWideMemoField;
    qryGetConsumerAccountmeterserialno: TWideMemoField;
    qryGetConsumerAccountbillmonth: TWideMemoField;
    qryGetConsumerAccountbillnumber: TIntegerField;
    qryGetConsumerAccountpreviousreading: TFloatField;
    qryGetConsumerAccountpreviousreadingdate: TWideMemoField;
    qryGetConsumerAccountpresentreading: TFloatField;
    qryGetConsumerAccountpresentreadingdate: TWideMemoField;
    qryGetConsumerAccountaverageconsumption: TFloatField;
    qryGetConsumerAccountcurrentconsumption: TFloatField;
    qryGetConsumerAccounttotalconsumption: TFloatField;
    qryGetConsumerAccountoldmeterconsumption: TFloatField;
    qryGetConsumerAccountmeterfindings: TWideMemoField;
    qryGetConsumerAccountreadingremarks: TWideMemoField;
    qryGetConsumerAccountcurrentamountdue: TFloatField;
    qryGetConsumerAccounttotalamountdue: TFloatField;
    qryGetConsumerAccounttotalamountafterduedate: TFloatField;
    qryGetConsumerAccountdiscountamount: TFloatField;
    qryGetConsumerAccountpenaltyamount: TFloatField;
    qryGetConsumerAccounttotalbillarrears: TFloatField;
    qryGetConsumerAccounttotalotherfees: TFloatField;
    qryGetConsumerAccountpaymentduedate: TWideMemoField;
    qryGetConsumerAccountpaymentdateafterdue: TWideMemoField;
    qryGetConsumerAccountdisconnectiondate: TWideMemoField;
    qryGetConsumerAccountreadingtime: TWideMemoField;
    qryGetConsumerAccountmeterreadername: TWideMemoField;
    qryGetConsumerAccountnumberofreadingretry: TIntegerField;
    qryGetConsumerAccountnumberofbillprinted: TIntegerField;
    qryGetConsumerAccountnumberofsmssent: TIntegerField;
    qryGetConsumerAccountdateuploaded: TWideMemoField;
    qryLedger: TFDQuery;
    qryProfile: TFDQuery;
    qryProfileid: TFDAutoIncField;
    qryProfileacct_no: TMemoField;
    qryProfileapplicant: TMemoField;
    qryProfileaddress_st: TMemoField;
    qryProfiledate_applied: TMemoField;
    qryProfileserial_no: TMemoField;
    qryProfilesize: TMemoField;
    qryProfileor_no: TMemoField;
    qryProfileor_date: TMemoField;
    qryProfiletype_connection: TMemoField;
    qryProfileapproval: TMemoField;
    qryProfiledate_installed: TMemoField;
    qryProfilemode_payment: TStringField;
    qryProfileaddress_brgy: TMemoField;
    qryProfilebrand: TMemoField;
    qryProfiletype_inspct: TMemoField;
    qryProfileplumber: TMemoField;
    qryProfileinitial_reading: TMemoField;
    qryProfileinspector: TMemoField;
    qryProfilemeterno: TMemoField;
    qryProfileBDATE: TMemoField;
    qryProfileisSenior: TMemoField;
    qryProfileisPwds: TMemoField;
    qryLedgerreading_date: TMemoField;
    qryLedgermeter_reading: TMemoField;
    qryLedgercu_used: TMemoField;
    qryLedgerpen_fee: TMemoField;
    qryLedgerbill_amnt: TMemoField;
    qryLedgerloans_MLP: TMemoField;
    qryLedgerloans_MF: TMemoField;
    qryLedgermisc: TMemoField;
    qryLedgertotal: TMemoField;
    qryLedgerOR_num: TMemoField;
    qryLedgerOR_date: TMemoField;
    qryLedgerremarks: TMemoField;
    qryLedgerOtherFee: TFDQuery;
    qryLedgerOtherFeeinstallmentValue: TFloatField;
    fdqInstallement: TFDQuery;
    qryShowID: TFDQuery;
    qryShowIDField: TStringField;
    qryShowIDType: TMemoField;
    qryShowIDNull: TStringField;
    qryShowIDKey: TStringField;
    qryShowIDDefault: TMemoField;
    qryShowIDExtra: TStringField;
    qryCheckBillMonth: TFDQuery;
    function dsOpenParam(AFdQ: TFDQuery;Astr1,Astr2,Astr3,Astr4,Astr5:String):Currency ;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure OpenDataSet(ADataSet:TDataSet);
    Procedure CloseDataSet(ADataSet:TDataSet);
  end;

var
  ToolsDataModule: TToolsDataModule;

implementation

uses MainDataModuleUnit;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TToolsDataModule }

function TToolsDataModule.dsOpenParam(AFdQ: TFDQuery;Astr1,Astr2,Astr3,Astr4,Astr5:String):Currency;
begin
  AFdQ.Close;
  AFdQ.ParamByName(Astr1).AsString := Astr2;
  AFdQ.ParamByName(Astr3).AsString := Astr4;
  AFdQ.Open;
  AFdQ.First;
  Result := AFdQ.FieldByName(Astr5).AsCurrency;
end;

procedure TToolsDataModule.CloseDataSet(ADataSet: TDataSet);
begin
  ADataSet.Close;
end;

procedure TToolsDataModule.OpenDataSet(ADataSet: TDataSet);
begin
  ADataSet.Close;
  ADataSet.Open;
  ADataSet.First;
end;

end.
