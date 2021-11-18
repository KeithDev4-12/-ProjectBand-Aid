unit SystemLogDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSystemLogDataModule = class(TDataModule)
    qrySettings: TFDTable;
    FDQuery1: TFDQuery;
    fdSystemLog: TFDTable;
    fdSystemLogid: TFDAutoIncField;
    fdSystemLogusername: TWideMemoField;
    fdSystemLogtaskperformed: TWideMemoField;
    fdSystemLoglogdatetime: TWideMemoField;
    Function SystemLogReport(StrUserName:String;StrTaskPerformed:String;DateLogDateTime:String):String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SystemLogDataModule: TSystemLogDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses MainDataModuleUnit;

{ TSystemLogDataModule }

function TSystemLogDataModule.SystemLogReport(StrUserName, StrTaskPerformed,
  DateLogDateTime: String): String;
begin
  fdSystemLog.Close;
  fdSystemLog.Open();
  fdSystemLog.Append;
  fdSystemLogusername.AsString := StrUserName;
  fdSystemLogtaskperformed.AsString := StrTaskPerformed;
  fdSystemLoglogdatetime.AsString := DateLogDateTime;
  fdSystemLog.Post();
end;

end.
