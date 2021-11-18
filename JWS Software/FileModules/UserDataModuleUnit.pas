unit UserDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TUserDataModule = class(TDataModule)
    tblUser: TFDTable;
    qryUser: TFDQuery;
    qryUserid: TFDAutoIncField;
    qryUserUSERNAME: TWideStringField;
    qryUserPASSWORD: TWideStringField;
    qryUserROLE: TWideStringField;
    tblUserid: TFDAutoIncField;
    tblUserusername: TWideMemoField;
    tblUserpassword: TWideMemoField;
    tblUserrole: TWideMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserDataModule: TUserDataModule;

implementation

Uses MainDataModuleUnit,SystemLogDataModuleUnit;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
