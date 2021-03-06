unit ConsumerAccountFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB;

type
  TConsumerAccountForm = class(TForm)
    Panel1: TPanel;
    SearchBox1: TSearchBox;
    Label1: TLabel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    DBGridEh1: TDBGridEh;
    DSConsumerAccount: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsumerAccountForm: TConsumerAccountForm;

implementation

Uses ConsumerAccountDataModuleUnit;

{$R *.dfm}

end.
