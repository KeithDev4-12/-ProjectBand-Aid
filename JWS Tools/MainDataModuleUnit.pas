unit MainDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TMainDataModule = class(TDataModule)
    SQLiteJWSDesktopConn: TFDConnection;
    SQLiteJWSMainDatabaseConn: TFDConnection;
    SQLiteJWSMobileConn: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryLogIn: TFDQuery;
    qryLogInCount_id: TLargeintField;
    qryLogInROLE: TWideStringField;
    tblLogin: TFDTable;
    tblLoginid: TFDAutoIncField;
    tblLoginusername: TWideMemoField;
    tblLoginpassword: TWideMemoField;
    tblLoginrole: TWideMemoField;
    MYSQLDatabase: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    function SqlDesktopConnect(const ABoolean:Boolean):Boolean;
  end;

var
  MainDataModule: TMainDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TMainDataModule }

function TMainDataModule.SqlDesktopConnect(const ABoolean: Boolean): Boolean;
Var
 AResult : Boolean;
begin
 SQLiteJWSDesktopConn.Connected:=ABoolean;
 AResult := ABoolean;

 Result := AResult;
end;

end.
