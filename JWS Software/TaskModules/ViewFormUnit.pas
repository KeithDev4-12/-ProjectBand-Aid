unit ViewFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Samples.Gauges, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TViewForm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Shape3: TShape;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    DBGridEh1: TDBGridEh;
    qryConsumerAccount: TFDQuery;
    DSConsumerAccount: TDataSource;
    qryRouteAddress: TFDQuery;
    qryRouteAddressid: TFDAutoIncField;
    qryRouteAddressroutecode: TIntegerField;
    qryRouteAddressROUTEADDRESS: TWideStringField;
    qryConsumerAccountid: TFDAutoIncField;
    qryConsumerAccountAccountNo: TWideStringField;
    qryConsumerAccountAccountName: TWideStringField;
    qryConsumerAccountroutesequence: TIntegerField;
    qryConsumerAccountroutecode: TIntegerField;
    qryConsumerAccountROUTEADDRESS: TWideStringField;
    qryConsumerAccountratecode: TIntegerField;
    qryConsumerAccountConnectionType: TWideStringField;
    qryConsumerAccountConnectionStatus: TWideStringField;
    qryConsumerAccountBillMonth: TWideStringField;
    qryConsumerAccountPreviousReadingDate: TWideStringField;
    qryConsumerAccountPreviousReading: TWideStringField;
    qryConsumerAccountPresentReadingDate: TWideStringField;
    qryConsumerAccountPresentReading: TWideStringField;
    qryConsumerAccountcurrentconsumption: TFloatField;
    qryConsumerAccounttotalconsumption: TFloatField;
    qryConsumerAccountMeterFindings: TWideStringField;
    qryConsumerAccountReadingRemarks: TWideStringField;
    qryConsumerAccountcurrentamountdue: TFloatField;
    qryConsumerAccounttotalamountdue: TFloatField;
    qryConsumerAccounttotalamountafterduedate: TFloatField;
    qryConsumerAccountDisconnectionDate: TWideStringField;
    qryConsumerAccountReadingTime: TWideStringField;
    qryConsumerAccountMeterReaderName: TWideStringField;
    qryConsumerAccountDateUploaded: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure LoadRoute();
    function GetRouteCode(Val:String):String;
    procedure Panel9Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewForm: TViewForm;
  ARouteCode:String;

implementation
Uses MainDataModuleUnit;

{$R *.dfm}

procedure TViewForm.BitBtn1Click(Sender: TObject);
begin
  if Length(Edit1.Text) <= 0 then begin
    MessageDlg('Please Select Valid BillMonth!',mtInformation,[mbClose],0);
    Exit;
  end;
  //'RouteCode = '1' AND MeterFindings <> 'NONE'  OR RouteCode = '1' AND ReadingRemarks <> 'NONE'
  //qryConsumerAccount.Close;
  qryConsumerAccount.Close;
  qryConsumerAccount.Open();
  qryConsumerAccount.Filtered := False;
  qryConsumerAccount.Filter :='BillMonth = ' + QuotedStr(Edit1.Text) + 'AND MeterFindings <> '+ QuotedStr('NONE') +' OR  BillMonth = ' + QuotedStr(Edit1.Text) +  ' AND ReadingRemarks <> '+ QuotedStr('NONE');
  qryConsumerAccount.Filtered := True;
  qryConsumerAccount.First;
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := qryConsumerAccount.RecordCount;
  Gauge1.Progress := 0;
  while Not qryConsumerAccount.EOF do begin
    Gauge1.AddProgress(1);
    qryConsumerAccount.Next;
  end;
  Gauge1.Progress := 0;
  //qryConsumerAccount.ParamByName('ABillMonth').AsString := Edit1.Text;
  //qryConsumerAccount.Open();
end;

procedure TViewForm.LoadRoute;
begin
   qryRouteAddress.Close;
   qryRouteAddress.Open;
   qryRouteAddress.First;
   ComboBox2.Items.Clear;
   while not qryRouteAddress.EOF do begin
     ComboBox2.Items.Add(qryRouteAddressROUTEADDRESS.AsString);
     qryRouteAddress.Next;
   end;
end;

procedure TViewForm.ComboBox2Change(Sender: TObject);
begin
  Edit2.Text := ComboBox2.Text;
  ARouteCode := GetRouteCode(ComboBox2.Text);
end;

procedure TViewForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    BitBtn1Click(Sender);
  end;
end;

procedure TViewForm.FormShow(Sender: TObject);
begin
  ARouteCode := '';
  //qryConsumerAccount.Close;
  //qryConsumerAccount.Open();
  //qryConsumerAccount.First;
  LoadRoute();
end;

function TViewForm.GetRouteCode(Val: String): String;
Var
  AResult : String;
begin
  if qryRouteAddress.Locate('RouteAddress',Val,[]) then begin
   AResult := qryRouteAddressroutecode.AsString;
  end else begin
   AResult := '';
  end;

  Result := AResult;
end;

procedure TViewForm.Panel8Click(Sender: TObject);
begin
  qryConsumerAccount.Filtered := False;
  //qryConsumerAccount.Filter :='BillMonth = ' + QuotedStr(Edit1.Text) + 'AND MeterFindings <> '+ QuotedStr('NONE') +' OR  BillMonth = ' + QuotedStr(Edit1.Text) +  ' AND ReadingRemarks <> '+ QuotedStr('NONE');

  qryConsumerAccount.Filter := 'BILLMONTH = ' + QuotedStr(Edit1.Text) + ' AND RouteCode = '+QuotedStr(ARouteCode)+' AND MeterFindings <> '+ QuotedStr('NONE') +' OR BillMonth = ' + QuotedStr(Edit1.Text) + 'AND RouteCode = '+QuotedStr(ARouteCode)+' AND ReadingRemarks <> '+ QuotedStr('NONE');
  qryConsumerAccount.Filtered := True;
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := qryConsumerAccount.RecordCount;
  Gauge1.Progress := 0;
  while Not qryConsumerAccount.EOF do begin
    Gauge1.AddProgress(1);
    qryConsumerAccount.Next;
  end;
  Gauge1.Progress := 0;
end;

procedure TViewForm.Panel9Click(Sender: TObject);
begin
  BitBtn1Click(Sender);
end;

end.
