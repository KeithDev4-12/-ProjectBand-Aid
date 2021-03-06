unit RouteDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TRouteDataModule = class(TDataModule)
    tblRoute: TFDTable;
    qryRoute: TFDQuery;
    qryRouteid: TFDAutoIncField;
    qryRouteroutecode: TIntegerField;
    qryRouteROUTEADDRESS: TWideStringField;
    tblRouteid: TFDAutoIncField;
    tblRouteroutecode: TIntegerField;
    tblRouterouteaddress: TWideMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RouteDataModule: TRouteDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses MainDataModuleUnit;

end.
