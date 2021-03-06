unit DownloadingNewReadingDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.BatchMove.DataSet,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.Text;

type
  TDownloadingNewReadingDataModule = class(TDataModule)
    tblMeterReader: TFDTable;
    tblMeterReaderid: TFDAutoIncField;
    tblMeterReadername: TWideMemoField;
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
    qryConsumerAccount: TFDQuery;
    qryBillMonth: TFDQuery;
    qryBillMonthBillMonth: TWideStringField;
    tblRoutes: TFDTable;
    tblRoutesid: TFDAutoIncField;
    tblRoutesroutecode: TIntegerField;
    tblRoutesrouteaddress: TWideMemoField;
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

  private
    { Private declarations }

  public
    { Public declarations }
    Procedure OpenDataSet(ADataSet:TDataSet);
    Procedure CloseDataSet(ADataSet:TDataSet);
  end;

var
  DownloadingNewReadingDataModule: TDownloadingNewReadingDataModule;

implementation

uses MainDataModuleUnit;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDownloadingNewReadingDataModule }

procedure TDownloadingNewReadingDataModule.CloseDataSet(ADataSet: TDataSet);
begin
  ADataSet.Close;
end;

procedure TDownloadingNewReadingDataModule.OpenDataSet(ADataSet: TDataSet);
begin
  ADataSet.Close;
  ADataSet.Open;
  ADataSet.First;
end;

end.
