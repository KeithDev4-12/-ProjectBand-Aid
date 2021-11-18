unit WaterDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TWaterDataModule = class(TDataModule)
    tblWaterRate: TFDTable;
    tblWaterRateid: TFDAutoIncField;
    tblWaterRateratecode: TIntegerField;
    tblWaterRateconnectiontype: TWideMemoField;
    tblWaterRateconsumptionfrom: TFloatField;
    tblWaterRateconsumptionto: TFloatField;
    tblWaterRateratebaseamount: TFloatField;
    tblWaterRaterateaddamount: TFloatField;
    qryWaterRate: TFDQuery;
    qryWaterRateid: TFDAutoIncField;
    qryWaterRateratecode: TIntegerField;
    qryWaterRateConnectionType: TWideStringField;
    qryWaterRateconsumptionfrom: TFloatField;
    qryWaterRateconsumptionto: TFloatField;
    qryWaterRateratebaseamount: TFloatField;
    qryWaterRaterateaddamount: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WaterDataModule: TWaterDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses MainDataModuleUnit;

end.
