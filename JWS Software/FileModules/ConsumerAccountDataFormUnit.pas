unit ConsumerAccountDataFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.ComCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB;

type
  TConsumerAccountDataForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Shape1: TShape;
    DBGridEh1: TDBGridEh;
    StatusBar1: TStatusBar;
    Shape2: TShape;
    dsConsumer: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsumerAccountDataForm: TConsumerAccountDataForm;

implementation

uses ConsumerAccountDataModuleUnit,MainDataModuleUnit;

{$R *.dfm}

procedure TConsumerAccountDataForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainDataModule.SqlDesktopConnect(False);
end;

procedure TConsumerAccountDataForm.FormShow(Sender: TObject);
begin
  MainDataModule.SqlDesktopConnect(True);
end;

end.
