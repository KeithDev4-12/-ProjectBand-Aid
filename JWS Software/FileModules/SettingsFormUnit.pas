unit SettingsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.WinXCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Buttons, Vcl.Samples.Spin, Data.DB, Vcl.Menus, Vcl.Mask, RzEdit,
  RzSpnEdt;

type
  TSettingsForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Image2: TImage;
    Edit1: TEdit;
    Shape2: TShape;
    Image3: TImage;
    Edit2: TEdit;
    Shape3: TShape;
    Image4: TImage;
    Edit3: TEdit;
    Shape4: TShape;
    Image5: TImage;
    Edit4: TEdit;
    Shape5: TShape;
    Image6: TImage;
    Edit5: TEdit;
    Shape6: TShape;
    Image7: TImage;
    Edit6: TEdit;
    Shape1: TShape;
    Image8: TImage;
    Edit7: TEdit;
    Shape8: TShape;
    Image9: TImage;
    Edit8: TEdit;
    Shape9: TShape;
    Image10: TImage;
    Edit9: TEdit;
    Shape10: TShape;
    Edit10: TEdit;
    Image11: TImage;
    Shape11: TShape;
    Edit11: TEdit;
    Image12: TImage;
    Shape12: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit12: TEdit;
    Image13: TImage;
    Edit13: TEdit;
    Image14: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Edit14: TEdit;
    Image15: TImage;
    Label8: TLabel;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    Edit15: TEdit;
    Image16: TImage;
    Edit16: TEdit;
    Image17: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Edit17: TEdit;
    Image18: TImage;
    Label12: TLabel;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    BitBtn1: TBitBtn;
    Shape20: TShape;
    ComboBox1: TComboBox;
    Panel10: TPanel;
    Panel11: TPanel;
    SpinButton1: TSpinButton;
    BitBtn4: TBitBtn;
    Shape21: TShape;
    BitBtn6: TBitBtn;
    Shape22: TShape;
    BitBtn3: TBitBtn;
    Shape23: TShape;
    dsFieldFindings: TDataSource;
    SpinButton2: TSpinButton;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    N1: TMenuItem;
    Update1: TMenuItem;
    SpinButton3: TSpinButton;
    SpinButton4: TSpinButton;
    SpinButton5: TSpinButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape24: TShape;
    Image19: TImage;
    Label13: TLabel;
    Edit18: TEdit;
    Shape25: TShape;
    BitBtn2: TBitBtn;
    FileOpenDialog1: TFileOpenDialog;
    Image20: TImage;
    Label14: TLabel;
    Edit19: TEdit;
    BitBtn5: TBitBtn;
    Shape26: TShape;
    TabSheet5: TTabSheet;
    Image21: TImage;
    Label15: TLabel;
    Edit20: TEdit;
    Shape27: TShape;
    Image22: TImage;
    Edit21: TEdit;
    Shape28: TShape;
    Image1: TImage;
    Edit22: TEdit;
    Shape7: TShape;
    Image23: TImage;
    Image24: TImage;
    Label16: TLabel;
    Label17: TLabel;
    Image25: TImage;
    Label18: TLabel;
    Image26: TImage;
    Label19: TLabel;
    Image27: TImage;
    Label20: TLabel;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Image28: TImage;
    Label21: TLabel;
    Edit28: TEdit;
    Shape29: TShape;
    BitBtn9: TBitBtn;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    procedure FormShow(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure BitBtn3Enter(Sender: TObject);
    procedure DateTimePicker3Click(Sender: TObject);
    procedure Edit10Enter(Sender: TObject);
    procedure BitBtn4Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpinButton2UpClick(Sender: TObject);
    procedure SpinButton2DownClick(Sender: TObject);
    procedure SpinButton2Enter(Sender: TObject);
    procedure BitBtn6Enter(Sender: TObject);
    procedure Edit16Enter(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Update1Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1SelectionChanged(Sender: TObject);
    procedure SpinButton3DownClick(Sender: TObject);
    Function IFFReturn(valueString:String):String;
    procedure SpinButton4DownClick(Sender: TObject);
    procedure SpinButton5DownClick(Sender: TObject);
    procedure SpinButton3UpClick(Sender: TObject);
    procedure SpinButton4UpClick(Sender: TObject);
    procedure SpinButton5UpClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit18KeyPress(Sender: TObject; var Key: Char);
    procedure Edit19KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Edit24Enter(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit23Change(Sender: TObject);
    procedure Edit24Change(Sender: TObject);
    procedure Edit25Change(Sender: TObject);
    procedure Edit28Change(Sender: TObject);
    procedure Edit26Change(Sender: TObject);
    procedure Edit27Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingsForm: TSettingsForm;
  SpinnerValue : Integer;

implementation

{$R *.dfm}

uses SettingsDataModuleUnit,MainDataModuleUnit;

procedure TSettingsForm.BitBtn1Click(Sender: TObject);
begin
  With SettingsDataModule do begin
    if tblFieldFindings.State = dsInsert then begin
      tblFieldFindingsfieldfindingstype.AsString :=Trim(Combobox1.Items[COmbobox1.ItemIndex]);
      tblFieldFindingsfieldfindingsvalue.AsString := Trim(Edit16.Text);
      tblFieldFindingsprintbillflag.AsInteger := SpinnerValue;
      tblFieldFindings.Post;
      qryFieldFindings.Cancel;
    end;
    if tblFieldFindings.State = dsEdit then begin
      tblFieldFindingsfieldfindingstype.AsString :=Trim(Combobox1.Items[COmbobox1.ItemIndex]);
      tblFieldFindingsfieldfindingsvalue.AsString := Trim(Edit16.Text);
      tblFieldFindingsprintbillflag.AsInteger := SpinnerValue;
      tblFieldFindings.Post;
      qryFieldFindings.Cancel;
    end;
      tblFieldFindings.Close;
      tblFieldFindings.Open;
      tblFieldFindings.First;
      qryFieldFindings.Close;
      qryFieldFindings.Open;
      qryFieldFindings.First;
  end;
end;

procedure TSettingsForm.BitBtn2Click(Sender: TObject);
var
  selectedFile,FolderName,FileName: string;

begin
  selectedFile := '';
  FolderName:= 'JWS_DataBase';
  FileName := 'JWS_';
    try
      FileOpenDialog1.Title := 'Select Directory';
      FileOpenDialog1.Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem]; // YMMV
      FileOpenDialog1.OkButtonLabel := 'Select';
      FileOpenDialog1.DefaultFolder := ExtractFileDir(Application.ExeName);
      FileOpenDialog1.FileName := ExtractFileDir(Application.ExeName);
      if FileOpenDialog1.Execute(Handle) then
        selectedFile := FileOpenDialog1.Filename;
    finally

    end;

    Edit18.Text := selectedFile;
end;

procedure TSettingsForm.BitBtn3Click(Sender: TObject);
begin
  with SettingsDataModule do begin
    qrySettings.First;
    while not qrySettings.Eof do begin

      if qrySettingssettingsname.AsString = 'company_name' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit1.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'company_address' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit2.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'company_contactinfo' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit3.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'company_email' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit4.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'company_tin' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit5.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'company_otherinfo' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit6.Text;
         qrySettings.Post;
      end;
      qrySettings.Next;
    end;
  end;
end;

procedure TSettingsForm.BitBtn3Enter(Sender: TObject);
begin
  Shape2.Pen.Color := cl3DDkShadow;
  Shape1.Pen.Color := cl3DDkShadow;
  Shape3.Pen.Color := cl3DDkShadow;
  Shape4.Pen.Color := cl3DDkShadow;
  Shape5.Pen.Color := cl3DDkShadow;
  Shape6.Pen.Color := cl3DDkShadow;
  Edit1.Font.Color := cl3DDkShadow;
  Edit2.Font.Color := cl3DDkShadow;
  Edit3.Font.Color := cl3DDkShadow;
  Edit4.Font.Color := cl3DDkShadow;
  Edit5.Font.Color := cl3DDkShadow;
  Edit6.Font.Color := cl3DDkShadow;
end;

procedure TSettingsForm.BitBtn4Click(Sender: TObject);
begin
  with SettingsDataModule do begin
    qrySettings.First;
    while not qrySettings.Eof do begin

      if qrySettingssettingsname.AsString = 'billingpolicy_payment_duedate_period' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit7.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'billingpolicy_after_payment_duedate_period' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit8.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'billingpolicy_disconnection_duedate_period' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit9.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'billingpolicy_penalty_percent' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit10.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'billingpolicy_senior_citizen_percent_discount' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit11.Text;
         qrySettings.Post;
      end;
      qrySettings.Next;
    end;
  end;
end;

procedure TSettingsForm.BitBtn4Enter(Sender: TObject);
begin
  Shape8.Pen.Color := cl3DDkShadow;
  Shape9.Pen.Color := cl3DDkShadow;
  Shape10.Pen.Color := cl3DDkShadow;
  Shape11.Pen.Color := cl3DDkShadow;
  Shape12.Pen.Color := cl3DDkShadow;
end;

procedure TSettingsForm.BitBtn5Click(Sender: TObject);
var
  selectedFile,FolderName,FileName: string;

begin
  selectedFile := '';
  FileName := 'JWS_';
    try
      FileOpenDialog1.Title := 'Select Directory';
      FileOpenDialog1.Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem]; // YMMV
      FileOpenDialog1.OkButtonLabel := 'Select';
      FileOpenDialog1.DefaultFolder := ExtractFileDir(Application.ExeName);
      FileOpenDialog1.FileName := ExtractFileDir(Application.ExeName);
      if FileOpenDialog1.Execute(Handle) then
        selectedFile := FileOpenDialog1.Filename;
    finally

    end;

    Edit19.Text := selectedFile;
end;

procedure TSettingsForm.BitBtn6Click(Sender: TObject);
begin
  with SettingsDataModule do begin
    qrySettings.First;
    while not qrySettings.Eof do begin

      if qrySettingssettingsname.AsString = 'read_and_bill_settings_reading_start_day' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit12.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'read_and_bill_settings_billing_month' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit13.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'read_and_bill_settings_billing_year' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit14.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'read_and_bill_settings_meter_max_range' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit20.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'default_location_path_sqlite_to' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit18.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'default_location_path_sqlite_from' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit19.Text;
         qrySettings.Post;
      end;
      qrySettings.Next;
    end;
  end;
end;

procedure TSettingsForm.BitBtn6Enter(Sender: TObject);
begin
  Shape13.Pen.Color := cl3DDkShadow;
  Shape14.Pen.Color := cl3DDkShadow;
  Shape15.Pen.Color := cl3DDkShadow;
end;

procedure TSettingsForm.BitBtn9Click(Sender: TObject);
begin
  with SettingsDataModule do begin
    qrySettings.First;
    while not qrySettings.Eof do begin

      if qrySettingssettingsname.AsString = 'bill_receipt_info_1' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit23.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_info_2' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit24.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_info_3' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit25.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_info_4' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit28.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_overdue_info' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit26.Text;
         qrySettings.Post;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_disregard_overdue_info' then begin
         qrySettings.Edit;
         qrySettingssettingsvalue.AsString := Edit27.Text;
         qrySettings.Post;
      end;
      qrySettings.Next;
    end;
  end;
end;

procedure TSettingsForm.ComboBox1Change(Sender: TObject);
begin
  Edit15.Text := ComboBox1.Items[Combobox1.ItemIndex];
end;

procedure TSettingsForm.ComboBox1Click(Sender: TObject);
begin
  if ComboBox1.Focused then begin
    Shape17.Pen.Color := clBlue;
    Shape18.Pen.Color := cl3DDkShadow;
    Shape19.Pen.Color := cl3DDkShadow;

    Edit15.Font.Color := clBlack;
    Edit16.Font.Color := cl3DDkShadow;
    edit17.Font.Color := cl3DDkShadow;
  end else if Edit16.Focused then begin
    Shape17.Pen.Color := cl3DDkShadow;
    Shape18.Pen.Color := clBlue;
    Shape19.Pen.Color := cl3DDkShadow;
    Edit15.Font.Color := cl3DDkShadow;
    Edit16.Font.Color := clBlack;
    edit17.Font.Color := cl3DDkShadow;
  end else begin
    Shape17.Pen.Color := cl3DDkShadow;
    Shape18.Pen.Color := cl3DDkShadow;
    Shape19.Pen.Color := cl3DDkShadow;
    Edit15.Font.Color := cl3DDkShadow;
    Edit16.Font.Color := cl3DDkShadow;
    edit17.Font.Color := cl3DDkShadow;
  end;
end;

procedure TSettingsForm.DateTimePicker3Click(Sender: TObject);
begin
if SpinButton3.Focused then begin
    Shape8.Pen.Color := clBlue;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := clBlack;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := cl3DDkShadow;
  end else if SpinButton4.Focused then begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := clBlue;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := clBlack;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := cl3DDkShadow;
  end else if SpinButton5.Focused then begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := clBlue;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := clBlack;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := cl3DDkShadow;
  end else if Edit10.Focused then begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := clBlue;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := clBlack;
    Edit11.Font.Color := cl3DDkShadow;
  end else if Edit11.Focused then begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := clBlue;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := clBlack;
  end else begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := cl3DDkShadow;
  end;
end;

procedure TSettingsForm.DBGridEh1CellClick(Column: TColumnEh);
begin
  with SettingsDataModule do begin
    if tblFieldFindings.Locate('id',qryFieldFindingsid.AsInteger,[]) then begin
      Combobox1.Text := tblFieldFindingsfieldfindingstype.AsString;
      Edit15.Text := tblFieldFindingsfieldfindingstype.AsString;
      Edit16.Text := tblFieldFindingsfieldfindingsvalue.AsString;
      if StrToInt(tblFieldFindingsprintbillflag.AsString) = 1 then begin
        Edit17.Text := 'Printable Bill';
        SpinnerValue := 1;
      end else begin
        Edit17.Text := 'Not Printable Bill';
        SpinnerValue := 0;
      end;
    end;
  end;
end;

procedure TSettingsForm.DBGridEh1SelectionChanged(Sender: TObject);
begin
  with SettingsDataModule do begin
    if tblFieldFindings.Locate('id',qryFieldFindingsid.AsInteger,[]) then begin
      Combobox1.Text := tblFieldFindingsfieldfindingstype.AsString;
      Edit15.Text := tblFieldFindingsfieldfindingstype.AsString;
      Edit16.Text := tblFieldFindingsfieldfindingsvalue.AsString;
      if StrToInt(tblFieldFindingsprintbillflag.AsString) = 1 then begin
        Edit17.Text := 'Printable Bill';
        SpinnerValue := 1;
      end else begin
        Edit17.Text := 'Not Printable Bill';
        SpinnerValue := 0;
      end;
    end;
  end;
end;

procedure TSettingsForm.Edit10Enter(Sender: TObject);
begin
  if SpinButton3.Focused then begin
    Shape8.Pen.Color := clBlue;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := clBlack;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := cl3DDkShadow;
  end else if SpinButton4.Focused then begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := clBlue;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := clBlack;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := cl3DDkShadow;
  end else if SpinButton5.Focused then begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := clBlue;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := clBlack;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := cl3DDkShadow;
  end else if Edit10.Focused then begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := clBlue;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := clBlack;
    Edit11.Font.Color := cl3DDkShadow;
  end else if Edit11.Focused then begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := clBlue;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := clBlack;
  end else begin
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Edit7.Font.Color := cl3DDkShadow;
    Edit8.Font.Color := cl3DDkShadow;
    Edit9.Font.Color := cl3DDkShadow;
    Edit10.Font.Color := cl3DDkShadow;
    Edit11.Font.Color := cl3DDkShadow;
  end;
end;

procedure TSettingsForm.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key IN ['0'..'9',#8,#9,#13,#27,#127]) then Key := #0;
end;

procedure TSettingsForm.Edit16Enter(Sender: TObject);
begin
   if ComboBox1.Focused then begin
    Shape17.Pen.Color := clBlue;
    Shape18.Pen.Color := cl3DDkShadow;
    Shape19.Pen.Color := cl3DDkShadow;
    Edit15.Font.Color := clBlack;
    Edit16.Font.Color := cl3DDkShadow;
    edit17.Font.Color := cl3DDkShadow; 
  end else if Edit16.Focused then begin
    Shape17.Pen.Color := cl3DDkShadow;
    Shape18.Pen.Color := clBlue;
    Shape19.Pen.Color := cl3DDkShadow;
    Edit15.Font.Color := cl3DDkShadow;
    Edit16.Font.Color := clBlack;
    edit17.Font.Color := cl3DDkShadow; 
  end else if SpinButton1.Focused then begin
    Shape17.Pen.Color := cl3DDkShadow;
    Shape18.Pen.Color := cl3DDkShadow;
    Shape19.Pen.Color := clBlue;
    Edit15.Font.Color := cl3DDkShadow;
    Edit16.Font.Color := cl3DDkShadow;
    edit17.Font.Color := clBlack; 
  end else begin
    Shape17.Pen.Color := cl3DDkShadow;
    Shape18.Pen.Color := cl3DDkShadow;
    Shape19.Pen.Color := cl3DDkShadow;
    Edit15.Font.Color := cl3DDkShadow;
    Edit16.Font.Color := cl3DDkShadow;
    edit17.Font.Color := cl3DDkShadow; 
  end;
end;

procedure TSettingsForm.Edit18KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TSettingsForm.Edit19KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TSettingsForm.Edit1Click(Sender: TObject);
begin
  if Edit1.Focused then begin
    Shape2.Pen.Color := clBlue;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := clBlack;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
    Shape28.Pen.Color := cl3DDkShadow;
    Edit21.Font.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
    Edit22.Font.Color := cl3DDkShadow;
  end else if Edit2.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := clBlue;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := clBlack;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
    Shape28.Pen.Color := cl3DDkShadow;
    Edit21.Font.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
    Edit22.Font.Color := cl3DDkShadow;
  end else if Edit3.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := clBlue;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := clBlack;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
    Shape28.Pen.Color := cl3DDkShadow;
    Edit21.Font.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
    Edit22.Font.Color := cl3DDkShadow;
  end else if Edit4.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := clBlue;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := clBlack;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
    Shape28.Pen.Color := cl3DDkShadow;
    Edit21.Font.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
    Edit22.Font.Color := cl3DDkShadow;
  end else if Edit5.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := clBlue;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := clBlack;
    Edit6.Font.Color := cl3DDkShadow;
    Shape28.Pen.Color := cl3DDkShadow;
    Edit21.Font.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
    Edit22.Font.Color := cl3DDkShadow;
  end else if Edit6.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := clBlue;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := clBlack;
    Shape28.Pen.Color := cl3DDkShadow;
    Edit21.Font.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
    Edit22.Font.Color := cl3DDkShadow;
  end else if Edit21.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;

    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
    Shape28.Pen.Color := clBlue;
    Edit21.Font.Color := clBlack;
    Shape7.Pen.Color := cl3DDkShadow;
    Edit22.Font.Color := cl3DDkShadow;
  end else if Edit22.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
    Shape28.Pen.Color := cl3DDkShadow;
    Edit21.Font.Color := cl3DDkShadow;
    Shape7.Pen.Color := clBlue;
    Edit22.Font.Color := clBlack;
  end else begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
    Shape28.Pen.Color := cl3DDkShadow;
    Edit21.Font.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
    Edit22.Font.Color := cl3DDkShadow;
  end;

end;

procedure TSettingsForm.Edit1Enter(Sender: TObject);
begin
   if Edit1.Focused then begin
    Shape2.Pen.Color := clBlue;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := clBlack;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
  end else if Edit2.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := clBlue;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := clBlack;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
  end else if Edit3.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := clBlue;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := clBlack;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
  end else if Edit4.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := clBlue;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := clBlack;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
  end else if Edit5.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := clBlue;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := clBlack;
    Edit6.Font.Color := cl3DDkShadow;
  end else if Edit6.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := clBlue;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := clBlack;
  end else begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape1.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
    Edit1.Font.Color := cl3DDkShadow;
    Edit2.Font.Color := cl3DDkShadow;
    Edit3.Font.Color := cl3DDkShadow;
    Edit4.Font.Color := cl3DDkShadow;
    Edit5.Font.Color := cl3DDkShadow;
    Edit6.Font.Color := cl3DDkShadow;
  end;
end;

procedure TSettingsForm.Edit20KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key IN ['0'..'9',#8,#9,#13,#27,#127]) then Key := #0;
end;

procedure TSettingsForm.Edit23Change(Sender: TObject);
begin
  with Edit23 do begin
    if (Length(Text)>27) AND (Length(text)<32) then begin
      Font.Size := 10;
    end else IF (Length(Text)>=33) then begin
      Font.Size := 9;
    end else begin
      Font.Size := 11;
    end;
  end;
end;

procedure TSettingsForm.Edit24Change(Sender: TObject);
begin
  with Edit24 do begin
    if (Length(Text)>27) AND (Length(text)<32) then begin
      Font.Size := 10;
    end else IF (Length(Text)>=33) then begin
      Font.Size := 9;
    end else begin
      Font.Size := 11;
    end;
  end;
end;

procedure TSettingsForm.Edit24Enter(Sender: TObject);
begin
  if Edit23.Focused then begin
    Shape30.Pen.Color := clBlue;
    Shape31.Pen.Color := cl3DDkShadow;
    Shape32.Pen.Color := cl3DDkShadow;
    Shape33.Pen.Color := cl3DDkShadow;
    Shape34.Pen.Color := cl3DDkShadow;
    Shape35.Pen.Color := cl3DDkShadow;
    Edit23.Font.Color := clBlack;
    Edit24.Font.Color := cl3DDkShadow;
    Edit25.Font.Color := cl3DDkShadow;
    Edit28.Font.Color := cl3DDkShadow;
    Edit26.Font.Color := cl3DDkShadow;
    Edit27.Font.Color := cl3DDkShadow;
  end else if Edit24.Focused then begin
    Shape30.Pen.Color := cl3DDkShadow;
    Shape31.Pen.Color := clBlue;
    Shape32.Pen.Color := cl3DDkShadow;
    Shape33.Pen.Color := cl3DDkShadow;
    Shape34.Pen.Color := cl3DDkShadow;
    Shape35.Pen.Color := cl3DDkShadow;
    Edit23.Font.Color := cl3DDkShadow;
    Edit24.Font.Color := clBlack;
    Edit25.Font.Color := cl3DDkShadow;
    Edit28.Font.Color := cl3DDkShadow;
    Edit26.Font.Color := cl3DDkShadow;
    Edit27.Font.Color := cl3DDkShadow;
  end else if Edit25.Focused then begin
    Shape30.Pen.Color := cl3DDkShadow;
    Shape31.Pen.Color := cl3DDkShadow;
    Shape32.Pen.Color := clBlue;
    Shape33.Pen.Color := cl3DDkShadow;
    Shape34.Pen.Color := cl3DDkShadow;
    Shape35.Pen.Color := cl3DDkShadow;
    Edit23.Font.Color := cl3DDkShadow;
    Edit24.Font.Color := cl3DDkShadow;
    Edit25.Font.Color := clBlack;
    Edit28.Font.Color := cl3DDkShadow;
    Edit26.Font.Color := cl3DDkShadow;
    Edit27.Font.Color := cl3DDkShadow;
  end else if Edit28.Focused then begin
    Shape30.Pen.Color := cl3DDkShadow;
    Shape31.Pen.Color := cl3DDkShadow;
    Shape32.Pen.Color := cl3DDkShadow;
    Shape33.Pen.Color := clBlue;
    Shape34.Pen.Color := cl3DDkShadow;
    Shape35.Pen.Color := cl3DDkShadow;
    Edit23.Font.Color := cl3DDkShadow;
    Edit24.Font.Color := cl3DDkShadow;
    Edit25.Font.Color := cl3DDkShadow;
    Edit28.Font.Color := clBlack;
    Edit26.Font.Color := cl3DDkShadow;
    Edit27.Font.Color := cl3DDkShadow;
  end else if Edit26.Focused then begin
    Shape30.Pen.Color := cl3DDkShadow;
    Shape31.Pen.Color := cl3DDkShadow;
    Shape32.Pen.Color := cl3DDkShadow;
    Shape33.Pen.Color := cl3DDkShadow;
    Shape34.Pen.Color := clBlue;
    Shape35.Pen.Color := cl3DDkShadow;
    Edit23.Font.Color := cl3DDkShadow;
    Edit24.Font.Color := cl3DDkShadow;
    Edit25.Font.Color := cl3DDkShadow;
    Edit28.Font.Color := cl3DDkShadow;
    Edit26.Font.Color := clBlack;
    Edit27.Font.Color := cl3DDkShadow;
  end else if Edit27.Focused then begin
    Shape30.Pen.Color := cl3DDkShadow;
    Shape31.Pen.Color := cl3DDkShadow;
    Shape32.Pen.Color := cl3DDkShadow;
    Shape33.Pen.Color := cl3DDkShadow;
    Shape34.Pen.Color := cl3DDkShadow;
    Shape35.Pen.Color := clBlue;
    Edit23.Font.Color := cl3DDkShadow;
    Edit24.Font.Color := cl3DDkShadow;
    Edit25.Font.Color := cl3DDkShadow;
    Edit28.Font.Color := cl3DDkShadow;
    Edit26.Font.Color := cl3DDkShadow;
    Edit27.Font.Color := clBlack;
  end else begin
    Shape30.Pen.Color := cl3DDkShadow;
    Shape31.Pen.Color := cl3DDkShadow;
    Shape32.Pen.Color := cl3DDkShadow;
    Shape33.Pen.Color := cl3DDkShadow;
    Shape34.Pen.Color := cl3DDkShadow;
    Shape35.Pen.Color := cl3DDkShadow;
    Edit23.Font.Color := cl3DDkShadow;
    Edit24.Font.Color := cl3DDkShadow;
    Edit25.Font.Color := cl3DDkShadow;
    Edit28.Font.Color := cl3DDkShadow;
    Edit26.Font.Color := cl3DDkShadow;
    Edit27.Font.Color := cl3DDkShadow;
  end;





end;

procedure TSettingsForm.Edit25Change(Sender: TObject);
begin
  with Edit25 do begin
    if (Length(Text)>27) AND (Length(text)<32) then begin
      Font.Size := 10;
    end else IF (Length(Text)>=33) then begin
      Font.Size := 9;
    end else begin
      Font.Size := 11;
    end;
  end;
end;

procedure TSettingsForm.Edit26Change(Sender: TObject);
begin
  with Edit26 do begin
    if (Length(Text)>27) AND (Length(text)<32) then begin
      Font.Size := 10;
    end else IF (Length(Text)>=33) then begin
      Font.Size := 9;
    end else begin
      Font.Size := 11;
    end;
  end;
end;

procedure TSettingsForm.Edit27Change(Sender: TObject);
begin
  with Edit27 do begin
    if (Length(Text)>27) AND (Length(text)<32) then begin
      Font.Size := 10;
    end else IF (Length(Text)>=33) then begin
      Font.Size := 9;
    end else begin
      Font.Size := 11;
    end;
  end;
end;

procedure TSettingsForm.Edit28Change(Sender: TObject);
begin
  with Edit28 do begin
    if (Length(Text)>27) AND (Length(text)<32) then begin
      Font.Size := 10;
    end else IF (Length(Text)>=33) then begin
      Font.Size := 9;
    end else begin
      Font.Size := 11;
    end;
  end;
end;

procedure TSettingsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDataModule.SqlDesktopConnect(False);
end;

procedure TSettingsForm.FormShow(Sender: TObject);
begin
  MainDataModule.SqlDesktopConnect(True);
  PageControl1.ActivePageIndex := 0;
  SpinnerValue := 0;
  with SettingsDataModule do begin
    qrySettings.Close;
    qrySettings.Open();
    qrySettings.First;
    qryFieldFindings.Close();
    qryFieldFindings.Open();
    qryFieldFindings.First();
    tblFieldFindings.Close();
    tblFieldFindings.Open();
    tblFieldFindings.First();
    while not qrySettings.EOF do begin
      // COMPANY INFORMATION
      if qrySettingssettingsname.AsString = 'company_name' then begin
         Edit1.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'company_address' then begin
         Edit2.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'company_contactinfo' then begin
         Edit3.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'company_email' then begin
         Edit4.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'company_tin' then begin
         Edit5.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'company_otherinfo' then begin
         Edit6.Text := qrySettingssettingsvalue.AsString;
      end;
       if qrySettingssettingsname.AsString = 'company_municipality' then begin
         Edit21.Text := qrySettingssettingsvalue.AsString;
      end;
       if qrySettingssettingsname.AsString = 'company_republic' then begin
         Edit22.Text := qrySettingssettingsvalue.AsString;
      end;
      // BILLING POLICY
      if qrySettingssettingsname.AsString = 'billingpolicy_payment_duedate_period' then begin
         Edit7.Text := IFFReturn(qrySettingssettingsvalue.AsString);
      end;
      if qrySettingssettingsname.AsString = 'billingpolicy_after_payment_duedate_period' then begin
         Edit8.Text := IFFReturn(qrySettingssettingsvalue.AsString);
      end;
      if qrySettingssettingsname.AsString = 'billingpolicy_disconnection_duedate_period' then begin
         Edit9.Text := IFFReturn(qrySettingssettingsvalue.AsString);
      end;
      if qrySettingssettingsname.AsString = 'billingpolicy_penalty_percent' then begin
         Edit10.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'billingpolicy_senior_citizen_percent_discount' then begin
         Edit11.Text := qrySettingssettingsvalue.AsString;
      end;
      //READ AND BILL SETTINGS
      if qrySettingssettingsname.AsString = 'read_and_bill_settings_reading_start_day' then begin
         Edit12.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'read_and_bill_settings_billing_month' then begin
         Edit13.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'read_and_bill_settings_billing_year' then begin
         Edit14.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'read_and_bill_settings_meter_max_range' then begin
         Edit20.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'default_location_path_sqlite_to' then begin
         Edit18.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'default_location_path_sqlite_from' then begin
         Edit19.Text := qrySettingssettingsvalue.AsString;
      end;
      //BILLING INFORMATION
       if qrySettingssettingsname.AsString = 'bill_receipt_info_1' then begin
         Edit23.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_info_2' then begin
         Edit24.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_info_3' then begin
         Edit25.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_info_4' then begin
         Edit28.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_overdue_info' then begin
         Edit26.Text := qrySettingssettingsvalue.AsString;
      end;
      if qrySettingssettingsname.AsString = 'bill_receipt_disregard_overdue_info' then begin
         Edit27.Text := qrySettingssettingsvalue.AsString;
      end;
      //OTHER TAB SETTINGS
//       if qrySettingssettingsname.AsString = 'bluetooth_disconnect_delay' then begin
//         Edit12.Text := qrySettingssettingsvalue.AsString;
//      end;
//      if qrySettingssettingsname.AsString = 'ftp_server_host' then begin
//         Edit13.Text := qrySettingssettingsvalue.AsString;
//      end;
//      if qrySettingssettingsname.AsString = 'ftp_server_user' then begin
//         Edit14.Text := qrySettingssettingsvalue.AsString;
//      end;
//      if qrySettingssettingsname.AsString = 'ftp_server_pass' then begin
//         Edit20.Text := qrySettingssettingsvalue.AsString;
//      end;
//      if qrySettingssettingsname.AsString = 'ftp_server_base_download_dir' then begin
//         Edit18.Text := qrySettingssettingsvalue.AsString;
//      end;
//      if qrySettingssettingsname.AsString = 'ftp_server_base_upload_dir' then begin
//         Edit19.Text := qrySettingssettingsvalue.AsString;
//      end;
//      if qrySettingssettingsname.AsString = 'ftp_server_port' then begin
//         Edit18.Text := qrySettingssettingsvalue.AsString;
//      end;
      qrySettings.Next;
    end;


  end;

end;

function TSettingsForm.IFFReturn(valueString: String): String;
begin
  IF(Length(valueString) > 0) then begin
    Result := valueString;
  end else begin
    Result := '0';
  end;
end;

procedure TSettingsForm.Insert1Click(Sender: TObject);
begin
  With SettingsDataModule do begin
    if tblFieldFindings.State = dsBrowse then begin
      tblFieldFindings.Append;
      qryFieldFindings.Append;
    end;
  end;
end;

procedure TSettingsForm.SpinButton1DownClick(Sender: TObject);
begin
  if SpinnerValue = 1 then begin
    Edit17.Text := 'Not Printable Bill';
    SpinnerValue := 0;
    Shape17.Pen.Color := cl3DDkShadow;
    Shape18.Pen.Color := cl3DDkShadow;
    Shape19.Pen.Color := clBlue;
  end;


end;

procedure TSettingsForm.SpinButton1UpClick(Sender: TObject);
begin
  if SpinnerValue = 0 then begin
    Edit17.Text := 'Printable Bill';
    SpinnerValue := 1;
    Shape17.Pen.Color := cl3DDkShadow;
    Shape18.Pen.Color := cl3DDkShadow;
    Shape19.Pen.Color := clBlue;
  end;
end;

procedure TSettingsForm.SpinButton2DownClick(Sender: TObject);
Var IntDown:Integer;
begin
  IntDown := StrToInt(Edit12.Text);
  if (IntDown <= 31) and (IntDown > 1) then begin
    Edit12.Text := IntToStr(IntDown-1);
    Shape13.Pen.Color := clBlue;
    Shape14.Pen.Color := cl3DDkShadow;
    Shape15.Pen.Color := cl3DDkShadow;
  end;

end;

procedure TSettingsForm.SpinButton2Enter(Sender: TObject);
begin
  if SpinButton2.Focused then begin
    Shape13.Pen.Color := clBlue;
    Shape14.Pen.Color := cl3DDkShadow;
    Shape15.Pen.Color := cl3DDkShadow;
    Shape25.Pen.Color := cl3DDkShadow;
    Shape26.Pen.Color := cl3DDkShadow;
    Shape27.Pen.Color := cl3DDkShadow;
    Edit12.Font.Color := ClBlack;
    Edit13.Font.Color := cl3DDkShadow;
    Edit14.Font.Color := cl3DDkShadow;
    Edit20.Font.Color := cl3DDkShadow;
    Edit18.Font.Color := cl3DDkShadow;
    Edit19.Font.Color := cl3DDkShadow;
  end else if Edit13.Focused then begin
    Shape13.Pen.Color := cl3DDkShadow;
    Shape14.Pen.Color := clBlue;
    Shape15.Pen.Color := cl3DDkShadow;
    Shape25.Pen.Color := cl3DDkShadow;
    Shape26.Pen.Color := cl3DDkShadow;
    Shape27.Pen.Color := cl3DDkShadow;
    Edit12.Font.Color := cl3DDkShadow;
    Edit13.Font.Color := ClBlack;
    Edit14.Font.Color := cl3DDkShadow;
    Edit20.Font.Color := cl3DDkShadow;
    Edit18.Font.Color := cl3DDkShadow;
    Edit19.Font.Color := cl3DDkShadow;
  end else if Edit14.Focused then begin
    Shape13.Pen.Color := cl3DDkShadow;
    Shape14.Pen.Color := cl3DDkShadow;
    Shape15.Pen.Color := clBlue;
    Shape25.Pen.Color := cl3DDkShadow;
    Shape26.Pen.Color := cl3DDkShadow;
    Shape27.Pen.Color := cl3DDkShadow;
    Edit12.Font.Color := cl3DDkShadow;
    Edit13.Font.Color := cl3DDkShadow;
    Edit14.Font.Color := clBlack;
    Edit20.Font.Color := cl3DDkShadow;
    Edit18.Font.Color := cl3DDkShadow;
    Edit19.Font.Color := cl3DDkShadow;
  end else if Edit18.Focused then begin
    Shape13.Pen.Color := cl3DDkShadow;
    Shape14.Pen.Color := cl3DDkShadow;
    Shape15.Pen.Color := cl3DDkShadow;
    Shape25.Pen.Color := clBlue;
    Shape26.Pen.Color := cl3DDkShadow;
    Shape27.Pen.Color := cl3DDkShadow;
    Edit12.Font.Color := cl3DDkShadow;
    Edit13.Font.Color := cl3DDkShadow;
    Edit14.Font.Color := cl3DDkShadow;
    Edit20.Font.Color := cl3DDkShadow;
    Edit18.Font.Color := clBlack;
    Edit19.Font.Color := cl3DDkShadow;
  end else if Edit19.Focused then begin
    Shape13.Pen.Color := cl3DDkShadow;
    Shape14.Pen.Color := cl3DDkShadow;
    Shape15.Pen.Color := cl3DDkShadow;
    Shape25.Pen.Color := cl3DDkShadow;
    Shape27.Pen.Color := cl3DDkShadow;
    Shape26.Pen.Color := clBlue;
    Edit12.Font.Color := cl3DDkShadow;
    Edit13.Font.Color := cl3DDkShadow;
    Edit14.Font.Color := cl3DDkShadow;
    Edit20.Font.Color := cl3DDkShadow;
    Edit18.Font.Color := cl3DDkShadow;
    Edit19.Font.Color := clBlack;
  end else if Edit20.Focused then begin
    Shape13.Pen.Color := cl3DDkShadow;
    Shape14.Pen.Color := cl3DDkShadow;
    Shape15.Pen.Color := cl3DDkShadow;
    Shape25.Pen.Color := cl3DDkShadow;
    Shape26.Pen.Color := cl3DDkShadow;
    Shape27.Pen.Color := clBlue;
    Edit12.Font.Color := cl3DDkShadow;
    Edit13.Font.Color := cl3DDkShadow;
    Edit14.Font.Color := cl3DDkShadow;
    Edit20.Font.Color := clBlack;
    Edit18.Font.Color := cl3DDkShadow;
    Edit19.Font.Color := cl3DDkShadow;
  end else begin
    Shape13.Pen.Color := cl3DDkShadow;
    Shape14.Pen.Color := cl3DDkShadow;
    Shape15.Pen.Color := cl3DDkShadow;
    Shape25.Pen.Color := cl3DDkShadow;
    Shape26.Pen.Color := cl3DDkShadow;
    Shape27.Pen.Color := cl3DDkShadow;
    Edit12.Font.Color := cl3DDkShadow;
    Edit13.Font.Color := cl3DDkShadow;
    Edit14.Font.Color := cl3DDkShadow;
    Edit20.Font.Color := cl3DDkShadow;
    Edit18.Font.Color := cl3DDkShadow;
    Edit19.Font.Color := cl3DDkShadow;
  end;
end;

procedure TSettingsForm.SpinButton2UpClick(Sender: TObject);
Var IntUp:Integer;
begin
  IntUp := StrToInt(Edit12.Text);
  if (IntUp <= 30 ) and (IntUp >= 0) then begin
    Edit12.Text := IntToStr(IntUp+1);
    Shape13.Pen.Color := clBlue;
    Shape14.Pen.Color := cl3DDkShadow;
    Shape15.Pen.Color := cl3DDkShadow;
  end;

end;

procedure TSettingsForm.SpinButton3DownClick(Sender: TObject);
Var IntDown:Integer;
begin
  IntDown := StrToInt(Edit7.Text);
  if (IntDown <= 31) and (IntDown > 1) then begin
    Edit7.Text := IntToStr(IntDown-1);
    Shape8.Pen.Color := clBlue;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;

  end;

end;



procedure TSettingsForm.SpinButton3UpClick(Sender: TObject);
Var IntUp:Integer;
begin
  IntUp := StrToInt(Edit7.Text);
  if (IntUp <= 30 ) and (IntUp >= 0) then begin
    Edit7.Text := IntToStr(IntUp+1);
    Shape8.Pen.Color := clBlue;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;

    
  end;

end;

procedure TSettingsForm.SpinButton4DownClick(Sender: TObject);
Var IntDown:Integer;
begin
  IntDown := StrToInt(Edit8.Text);
  if (IntDown <= 31) and (IntDown > 1) then begin
    Edit8.Text := IntToStr(IntDown-1);
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := clBlue;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;

  end;

end;

procedure TSettingsForm.SpinButton4UpClick(Sender: TObject);
Var IntUp:Integer;
begin
  IntUp := StrToInt(Edit8.Text);
  if (IntUp <= 30 ) and (IntUp >= 0) then begin
    Edit8.Text := IntToStr(IntUp+1);
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := clBlue;
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;

  end;

end;

procedure TSettingsForm.SpinButton5DownClick(Sender: TObject);
Var IntDown:Integer;
begin
  IntDown := StrToInt(Edit9.Text);
  if (IntDown <= 31) and (IntDown > 1) then begin
    Edit9.Text := IntToStr(IntDown-1);
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := clBlue;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;

  end;

end;

procedure TSettingsForm.SpinButton5UpClick(Sender: TObject);
Var IntUp:Integer;
begin
  IntUp := StrToInt(Edit9.Text);
  if (IntUp <= 30 ) and (IntUp >= 0) then begin
    Edit9.Text := IntToStr(IntUp+1);
    Shape8.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape10.Pen.Color := clBlue;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;

  end;

end;

procedure TSettingsForm.Update1Click(Sender: TObject);
begin
  With SettingsDataModule do begin
    if tblFieldFindings.State = dsBrowse then begin
      if tblFieldFindings.Locate('id',qryFieldFindingsid.AsInteger,[]) then begin
        tblFieldFindings.Edit;
        qryFieldFindings.Edit;
        ComboBox1.SetFocus;
      end;
    end;
  end;
end;

end.
