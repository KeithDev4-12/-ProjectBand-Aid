unit OthersFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,System.StrUtils;

type
  TOthersForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Shape1: TShape;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    RadioGroup1: TRadioGroup;
    qryProfile: TFDQuery;
    DataSource1: TDataSource;
    qryProfileid: TFDAutoIncField;
    qryProfileAccountNumber: TStringField;
    qryProfileAccountName: TStringField;
    qryProfileAddress: TStringField;
    qryProfileDateApplied: TStringField;
    qryProfileSerialNo: TStringField;
    qryProfileSize: TStringField;
    qryProfileORNO: TStringField;
    qryProfileOrDate: TStringField;
    qryProfileTypeConnection: TStringField;
    qryProfileApproval: TStringField;
    qryProfileDateInstalled: TStringField;
    qryProfileModePayment: TStringField;
    qryProfileBarangay: TStringField;
    qryProfileBrand: TStringField;
    qryProfileTypeInspection: TStringField;
    qryProfilePlumber: TStringField;
    qryProfileInitialReading: TStringField;
    qryProfileInspector: TStringField;
    qryProfileMeterNo: TStringField;
    qryProfileBirthdate: TStringField;
    qryProfileIsSenior: TStringField;
    qryProfileisPwd: TStringField;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    qryRoute: TFDQuery;
    qryRouteid: TFDAutoIncField;
    qryRouteRouteCode: TWideStringField;
    qryRouteRouteAddress: TWideStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Memo1: TMemo;
    qryPostMe: TFDQuery;
    Panel1: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Edit2: TEdit;
    BitBtn7: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Shape3: TShape;
    Edit3: TEdit;
    BitBtn8: TBitBtn;
    Label4: TLabel;
    Shape4: TShape;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label6: TLabel;
    Shape5: TShape;
    Edit5: TEdit;
    BitBtn9: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    qryGetBillNumber: TFDQuery;
    qryGetBillNumberid: TIntegerField;
    qryGetBillNumberaccountno: TWideMemoField;
    qryGetBillNumberaccountname: TWideMemoField;
    qryGetBillNumberroutesequence: TIntegerField;
    qryGetBillNumberroutecode: TIntegerField;
    qryGetBillNumberrouteaddress: TWideMemoField;
    qryGetBillNumberratecode: TIntegerField;
    qryGetBillNumberconnectiontype: TWideMemoField;
    qryGetBillNumberconnectionstatus: TWideMemoField;
    qryGetBillNumbernewconnectionstatus: TWideMemoField;
    qryGetBillNumberisseniorcitizen: TIntegerField;
    qryGetBillNumbermobilenumber: TWideMemoField;
    qryGetBillNumbermeterbrand: TWideMemoField;
    qryGetBillNumbermeterserialno: TWideMemoField;
    qryGetBillNumberbillmonth: TWideMemoField;
    qryGetBillNumberbillnumber: TIntegerField;
    qryGetBillNumberpreviousreading: TFloatField;
    qryGetBillNumberpreviousreadingdate: TWideMemoField;
    qryGetBillNumberpresentreading: TFloatField;
    qryGetBillNumberpresentreadingdate: TWideMemoField;
    qryGetBillNumberaverageconsumption: TFloatField;
    qryGetBillNumbercurrentconsumption: TFloatField;
    qryGetBillNumbertotalconsumption: TFloatField;
    qryGetBillNumberoldmeterconsumption: TFloatField;
    qryGetBillNumbermeterfindings: TWideMemoField;
    qryGetBillNumberreadingremarks: TWideMemoField;
    qryGetBillNumbercurrentamountdue: TFloatField;
    qryGetBillNumbertotalamountdue: TFloatField;
    qryGetBillNumbertotalamountafterduedate: TFloatField;
    qryGetBillNumberdiscountamount: TFloatField;
    qryGetBillNumberpenaltyamount: TFloatField;
    qryGetBillNumbertotalbillarrears: TFloatField;
    qryGetBillNumbertotalotherfees: TFloatField;
    qryGetBillNumberpaymentduedate: TWideMemoField;
    qryGetBillNumberpaymentdateafterdue: TWideMemoField;
    qryGetBillNumberdisconnectiondate: TWideMemoField;
    qryGetBillNumberreadingtime: TWideMemoField;
    qryGetBillNumbermeterreadername: TWideMemoField;
    qryGetBillNumbernumberofreadingretry: TIntegerField;
    qryGetBillNumbernumberofbillprinted: TIntegerField;
    qryGetBillNumbernumberofsmssent: TIntegerField;
    qryGetBillNumberdateuploaded: TWideMemoField;
    Panel10: TPanel;
    Label7: TLabel;
    Shape6: TShape;
    BitBtn10: TBitBtn;
    Panel11: TPanel;
    Panel12: TPanel;
    CheckBox1: TCheckBox;
    Shape7: TShape;
    CheckBox2: TCheckBox;
    RadioGroup2: TRadioGroup;
    tblProfile: TFDTable;
    tblProfileid: TFDAutoIncField;
    tblProfileacct_no: TMemoField;
    tblProfileapplicant: TMemoField;
    tblProfileaddress_st: TMemoField;
    tblProfiledate_applied: TMemoField;
    tblProfileserial_no: TMemoField;
    tblProfilesize: TMemoField;
    tblProfileor_no: TMemoField;
    tblProfileor_date: TMemoField;
    tblProfiletype_connection: TMemoField;
    tblProfileapproval: TMemoField;
    tblProfiledate_installed: TMemoField;
    tblProfilemode_payment: TStringField;
    tblProfileaddress_brgy: TMemoField;
    tblProfilebrand: TMemoField;
    tblProfiletype_inspct: TMemoField;
    tblProfileplumber: TMemoField;
    tblProfileinitial_reading: TMemoField;
    tblProfileinspector: TMemoField;
    tblProfilemeterno: TMemoField;
    tblProfileBDATE: TMemoField;
    tblProfileisSenior: TMemoField;
    tblProfileisPwds: TMemoField;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function GetMYSQLRouteAddress(ListAddress:String):String ;
    function GetMYSQLRouteAddressReverse(ListAddress:String):String ;
    procedure BitBtn1Click(Sender: TObject);
    function GetBillNumber(AAccountNumber: String):Boolean;
    function ConsToLedAcc(AccountNo: String): String;
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OthersForm: TOthersForm;
  TDBAddress : array[1..9] of string = ('brgy_2_2','brgy_4_3','brgy_4_2','brgy_5','brgy_4_1','brgy_2_1','brgy_3','brgy_2_3','brgy_1');
  TListAddress : array[1..9] of String = ('Binanuahan','Biriran','Catanagan','Cogon','Embarcadero','North Poblacion','South Poblacion','Taboc','Tughan');
  LedAcc :String;

implementation

Uses MainDataModuleUnit;

{$R *.dfm}


function TOthersForm.GetMYSQLRouteAddress(ListAddress: String): String;
Var i :Integer;
  ValResult : String;
begin
  ValResult:='';
  for I := 1 to Length(TDBAddress) do begin
    if ListAddress.Contains(TListAddress[I]) then begin
      ValResult := TDBAddress[I];
      Break;
    end else begin
      ValResult := '';
    end;
  end;
  Result := ValResult;
end;

function TOthersForm.GetMYSQLRouteAddressReverse(ListAddress: String): String;
Var i :Integer;
  ValResult : String;
begin
  ValResult:='';
  for I := 1 to Length(TListAddress) do begin
    if ListAddress.Contains(TDBAddress[I]) then begin
      ValResult := TListAddress[I];
      Break;
    end else begin
      ValResult := '';
    end;
  end;
  Result := ValResult;
end;

procedure TOthersForm.BitBtn10Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 0 then begin
    tblProfile.Edit;
    if CheckBox1.Checked then begin
      tblProfileisSenior.AsString := '0';
    end;
    if CheckBox1.Checked then begin
      tblProfileisPwds.AsString := '0';
    end;
    tblProfile.Post;
    MessageDlg('Successfully Removed Discounts',mtInformation,[mbClose],0);
  end else begin
    tblProfile.Edit;
    if CheckBox1.Checked then begin
      tblProfileisSenior.AsString := '1';
    end;
    if CheckBox1.Checked then begin
      tblProfileisPwds.AsString := '1';
    end;
    tblProfile.Post;
    MessageDlg('Successfully Inserted Discounts',mtInformation,[mbClose],0);
  end;


  Panel10.Visible := False;
  qryProfile.Refresh;
end;

procedure TOthersForm.BitBtn1Click(Sender: TObject);
Var LedgerQuery:String;
begin

    LedAcc := 'ldg_'+ConsToLedAcc(qryProfileAccountNumber.AsString);
    LedgerQuery := ReplaceStr('Select * from :ALA ORDER BY reading_date Desc Limit 1',':ALA',LedAcc);
    qryPostMe.Open(LedgerQuery);
    if not qryPostMe.IsEmpty then begin
      qryPostMe.Edit;
      qryPostMe.FieldByName('Remarks').AsString := 'TPL';
      qryPostMe.Post;
      messageDlg('Successfully Pod lock : AccountNumber : '+ qryProfileAccountNumber.AsString ,mtInformation,[mbClose],0);
    end else begin
      messageDlg('No Information is Available to Temporary Pod Lock!',mtInformation,[mbClose],0);
    end;

end;

function TOthersForm.ConsToLedAcc(AccountNo: String): String;
begin
  Result := Replacestr(AccountNo,'-','_');
end;

function TOthersForm.GetBillNumber(AAccountNumber: String):Boolean;
Var
  AResult:Boolean;
begin
 qryGetBillNumber.Close;
 qryGetBillNumber.ParamByName('AAccountNumber').AsString := AAccountNumber;
 qryGetBillNumber.Open();
 if not qryGetBillNumber.IsEmpty then begin
   AResult := True;
 end else begin
   AResult := False;
 end;
 Result := AResult;
end;

procedure TOthersForm.BitBtn2Click(Sender: TObject);
Var LedgerQuery:String;

begin
  LedAcc := 'ldg_'+ConsToLedAcc(qryProfileAccountNumber.AsString);
    LedgerQuery := ReplaceStr('Select * from :ALA ORDER BY reading_date Desc Limit 1',':ALA',LedAcc);
    qryPostMe.Open(LedgerQuery);
    if not qryPostMe.IsEmpty then begin
      qryPostMe.Edit;
      qryPostMe.FieldByName('Remarks').AsString := 'PL';
      qryPostMe.Post;
      messageDlg('Successfully Pod lock : AccountNumber : '+ qryProfileAccountNumber.AsString ,mtInformation,[mbClose],0);
    end else begin
      messageDlg('No Information is Available to Temporary Pod Lock!',mtInformation,[mbClose],0);
    end;
end;

procedure TOthersForm.BitBtn3Click(Sender: TObject);
begin
  Panel2.Visible := False;
  Panel6.Visible := False;
  Panel10.Visible := False;
  if Panel1.Visible then begin
    Panel1.Left := 72;
    Panel1.Top := 312;
    Panel1.Visible := False;
  end else begin
    Panel1.Left := 72;
    Panel1.Top := 312;
    Panel1.Visible := True;
  end;
end;

procedure TOthersForm.BitBtn4Click(Sender: TObject);
begin
  Panel1.Visible := False;
  Panel6.Visible := False;
  Panel10.Visible := False;
  if Panel2.Visible then begin
    Panel2.Left := 72;
    Panel2.Top := 292;
    Panel2.Visible := False;
  end else begin
    Panel2.Left := 72;
    Panel2.Top := 292;
    Edit3.Text := GetMYSQLRouteAddressReverse(qryProfileBarangay.text);
    Panel2.Visible := True;
  end;
end;

procedure TOthersForm.BitBtn5Click(Sender: TObject);
begin
  Panel2.Visible := False;
  Panel1.Visible := False;
  Panel10.Visible := False;
  if Panel6.Visible then begin
    Panel6.Left := 309;
    Panel6.Top := 312;
    Panel6.Visible := False;
  end else begin
    Panel6.Left := 309;
    Panel6.Top := 312;
    Panel6.Visible := True;
  end;
end;

procedure TOthersForm.BitBtn6Click(Sender: TObject);
begin
  Panel2.Visible := False;
  Panel1.Visible := False;
  Panel6.Visible := False;
  if Panel10.Visible then begin
    Panel10.Left := 352;
    Panel10.Top := 280;
    Panel10.Visible := False;
  end else begin
    Panel10.Left := 352;
    Panel10.Top := 280;
    Panel10.Visible := True;
  end;
end;

procedure TOthersForm.BitBtn7Click(Sender: TObject);
begin
  if Length(Edit2.Text) <> 0  then begin
    tblProfile.Edit;
    tblProfileapplicant.AsString := Edit2.Text;
    tblProfile.Post;
    MessageDlg('Successfully Change Name. ',mtInformation,[mbClose],0);
    Panel1.Visible := False;
    qryProfile.Refresh;
  end;
end;

procedure TOthersForm.BitBtn8Click(Sender: TObject);
Var
  OriginalRouteToTrans:String;
begin
  OriginalRouteToTrans := GetMYSQLRouteAddress(Edit4.Text);
  if Length(Edit4.Text)<>0 then begin
    tblProfile.Edit;
    tblProfileaddress_brgy.AsString := OriginalRouteToTrans;
    tblProfile.Post;
    MessageDlg('Sucessfully Transfered to : ' + Combobox2.Text,mtInformation,[mbClose],0);
  end else begin
    MessageDlg('Not Transfered ',mtInformation,[mbClose],0)
  end;
  qryProfile.Refresh;
  Panel2.Visible := False;
end;

procedure TOthersForm.BitBtn9Click(Sender: TObject);
begin
   if Length(Edit5.Text) <> 0  then begin
    tblProfile.Edit;
    tblProfileBDATE.AsString := Edit5.Text;
    tblProfile.Post;
    MessageDlg('Successfully Change Name. ',mtInformation,[mbClose],0);
    Panel6.Visible := False;
    qryProfile.Refresh;
  end;
end;

procedure TOthersForm.ComboBox1Change(Sender: TObject);
begin
  if Combobox1.ItemIndex = 0 then begin
    qryProfile.Filtered := False;
    qryProfile.Refresh;
    qryProfile.First;
    if tblProfile.Locate('acct_no',qryProfileAccountNumber.AsString,[]) then begin
      LedAcc := 'ldg_'+ConsToLedAcc(qryProfileAccountNumber.AsString);
    end;
    Exit;
  end;

  qryProfile.Filtered:=False;
  if RadioGroup1.ItemIndex = 0 then begin
    if Combobox1.ItemIndex >= 1 then begin
      qryProfile.Filter := 'Barangay = '+ QuotedStr(GetMYSQLRouteAddress(Combobox1.Text)) +'AND AccountNumber LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end else begin
      qryProfile.Filter := 'AccountNumber LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end;
  end else begin
    if Combobox1.ItemIndex >= 1 then begin
      qryProfile.Filter := 'Barangay = '+ QuotedStr(GetMYSQLRouteAddress(Combobox1.Text)) +'AND AccountName LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end else begin
      qryProfile.Filter := 'AccountName LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end;
  end;
  qryProfile.Filtered:=True;
  qryProfile.Refresh;
  if tblProfile.Locate('acct_no',qryProfileAccountNumber.AsString,[]) then begin
    LedAcc := 'ldg_'+ConsToLedAcc(qryProfileAccountNumber.AsString);
  end;
end;

procedure TOthersForm.ComboBox2Change(Sender: TObject);
begin
  Edit4.Text := Combobox2.Text;
end;

procedure TOthersForm.DateTimePicker1Change(Sender: TObject);
begin
  //Edit5.Text := DateToStr(DateTimePicker1.Date);
  Edit5.Text := FormatDateTime('yyyy-dd-mm',DateTimePicker1.DateTime);
end;

procedure TOthersForm.DBGridEh1CellClick(Column: TColumnEh);
begin
  if tblProfile.Locate('acct_no',qryProfileAccountNumber.AsString,[]) then begin
    LedAcc := 'ldg_'+ConsToLedAcc(qryProfileAccountNumber.AsString);
  end;

end;

procedure TOthersForm.Edit1Change(Sender: TObject);
begin
  if Length(ComboBox1.Text) = 0 then Exit;

  qryProfile.Filtered:=False;
  if RadioGroup1.ItemIndex = 0 then begin
    if Combobox1.ItemIndex >= 1 then begin
      qryProfile.Filter := 'Barangay = '+ QuotedStr(GetMYSQLRouteAddress(Combobox1.Text)) +'AND AccountNumber LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end else begin
      qryProfile.Filter := 'AccountNumber LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end;
  end else begin
    if Combobox1.ItemIndex >= 1 then begin
      qryProfile.Filter := 'Barangay = '+ QuotedStr(GetMYSQLRouteAddress(Combobox1.Text)) +'AND AccountName LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end else begin
      qryProfile.Filter := 'AccountName LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end;
  end;
  qryProfile.Filtered:=True;
  if tblProfile.Locate('acct_no',qryProfileAccountNumber.AsString,[]) then begin
    LedAcc := 'ldg_'+ConsToLedAcc(qryProfileAccountNumber.AsString);
  end;
end;

procedure TOthersForm.FormShow(Sender: TObject);
begin
  qryRoute.Close;
  qryRoute.Open;
  qryRoute.First;
  qryProfile.Close;
  qryProfile.Open;
  qryProfile.First;
  tblProfile.Close;
  tblProfile.Open;
  tblProfile.First;

  ComboBox1.Items.Clear;
  ComboBox2.Items.Clear;
  Combobox1.Items.Add('All');;
  while NOt qryRoute.EOF do begin
    ComboBox1.Items.Add(qryRouteRouteAddress.AsString);
    ComboBox2.Items.Add(qryRouteRouteAddress.AsString);
    qryRoute.Next;
  end;
  Combobox1.ItemIndex := 0;
  
end;

procedure TOthersForm.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then begin
    Label1.Caption := 'Account Number :';
    Edit1.Hint := 'Account Number';
  end else begin
    Label1.Caption := 'Account Name :';
    Edit1.Hint := 'Account Name';
  end;

  if Length(Edit1.Text) = 0 then Exit;
 
  qryProfile.Filtered:=False;
  if RadioGroup1.ItemIndex = 0 then begin
    if Combobox1.ItemIndex >= 1 then begin
      qryProfile.Filter := 'Barangay = '+ QuotedStr(GetMYSQLRouteAddress(Combobox1.Text)) +'AND AccountNumber LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end else begin
      qryProfile.Filter := 'AccountNumber LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end;
  end else begin
    if Combobox1.ItemIndex >= 1 then begin
      qryProfile.Filter := 'Barangay = '+ QuotedStr(GetMYSQLRouteAddress(Combobox1.Text)) +'AND AccountName LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end else begin
      qryProfile.Filter := 'AccountName LIKE '+ QuotedStr('%'+Edit1.Text+'%');
    end;
  end;
  qryProfile.Filtered:=True;

end;

end.
