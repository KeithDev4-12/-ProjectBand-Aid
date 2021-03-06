unit UserFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.WinXCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  Data.DB,System.Hash, Vcl.Menus;

type
  TUserForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Shape1: TShape;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Shape2: TShape;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    Shape3: TShape;
    Edit2: TEdit;
    Shape4: TShape;
    Edit1: TEdit;
    Shape5: TShape;
    Shape6: TShape;
    Label5: TLabel;
    DSUser: TDataSource;
    Label6: TLabel;
    Shape7: TShape;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    popUserForm: TPopupMenu;
    Delete1: TMenuItem;
    Refresh1: TMenuItem;
    N1: TMenuItem;
    dsTblUser: TDataSource;
    Edit4: TEdit;
    Shape8: TShape;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    function  GetStrHashMD5(Str: String): String;
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Refresh1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserForm: TUserForm;

implementation

Uses UserDataModuleUnit,MainDataModuleUnit,MainFormUnit,SystemLogDataModuleUnit;

{$R *.dfm}

procedure TUserForm.BitBtn1Click(Sender: TObject);
Var PassWordValue :String;
   VarStatus : String;
begin
  With UserDataModule do begin
    if tblUser.State IN [dsEdit,dsInsert] then begin
      if tblUser.State IN [dsEdit] then
        VarStatus := 'User Has Update Record'
      else begin
        VarStatus := 'User Has Inserted New Record'
      end;
      if (Edit4.text <> EmptyStr) AND (Edit1.text <> EmptyStr) AND (Edit2.Text <> EmptyStr) AND (Edit3.Text <> EmptyStr)  then begin
        if Edit2.Text = Edit1.Text then begin
          PassWordValue := GetStrHashMD5(Trim(Edit2.Text));
        end else begin
          MessageDlg('Password are not the Same',mtError,[mbClose],0);
          Exit;
        end;

        tblUserpassword.AsString := PassWordValue;
        tblUserrole.AsString := Edit3.text;
        tblUserusername.AsString :=  Edit4.text;
        tblUser.Post;
        tblUser.First;
        qryUser.Cancel;
        qryUser.Close;
        qryUser.Open;
        qryUser.First;
        SystemLogDataModule.SystemLogReport(MainForm.StatusBar1.Panels[1].Text,VarStatus + '(' + Edit4.Text + ')',DateToStr(Now())) ;
        MessageDlg('Successfully Inserted / Updated.!',mtInformation,mbOKCancel,0);
      end else begin
        tblUser.Cancel;
        qryUser.Cancel;
      end;
        BitBtn1.Enabled := False;
        BitBtn2.Enabled := True;
        BitBtn3.Enabled := True;
        Label5.Caption := 'Browsing';
        Edit2.text := tblUserpassword.AsString;
        Edit1.text := tblUserpassword.AsString;
        Edit3.text := tblUserRole.AsString;
        Edit4.text := tblUserusername.AsString;
    end;
  end;
end;


function TUserForm.GetStrHashMD5(Str: String): String;
var
  HashMD5: THashMD5;
  HashSHA2: THashSHA2;
begin
    HashMD5 := THashMD5.Create;
    HashMD5.GetHashString(Str);
    result := HashMD5.GetHashString(Str);
end;

procedure TUserForm.Refresh1Click(Sender: TObject);
begin
  UserDataModule.tblUser.Cancel;
  UserDataModule.qryUser.Cancel;
  BitBtn1.Enabled := False;
  BitBtn2.Enabled := True;
  BitBtn3.Enabled := True;
  Label5.Caption := 'Browsing';
  Edit2.text := UserDataModule.tblUserpassword.AsString;
  Edit1.text := UserDataModule.tblUserpassword.AsString;
  Edit3.text := UserDataModule.tblUserRole.AsString;
  Edit4.text := UserDataModule.tblUserusername.AsString;
end;

procedure TUserForm.BitBtn2Click(Sender: TObject);
begin
  With UserDataModule do begin
    if tblUser.State = dsBrowse then begin
      tblUser.Append;
      qryUser.Append;
      Edit2.Text := '';
      Edit1.Text := '';
      Edit3.Text := Combobox1.Text;
      Edit4.Text := '';
    end;
    if tblUser.State = dsEdit then begin
      tblUser.Cancel;
      tblUser.Append;
      qryUser.Cancel;
      qryUser.Append;
      Edit2.Text := tblUserPassword.AsString;
      Edit1.Text := tblUserPassword.AsString;
      Edit3.Text := tblUserRole.AsString;
      Edit4.text := tblUserusername.AsString;
    end;

    BitBtn1.Enabled := True;
    BitBtn2.Enabled := False;
    BitBtn3.Enabled := False;
    Label5.caption := 'Insert on Going';
    Edit4.SetFocus;
    Shape3.Pen.Color := clBlue;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
  end;
end;

procedure TUserForm.BitBtn3Click(Sender: TObject);
begin

  With UserDataModule do begin
    if tblUser.State = dsBrowse then begin
      tblUser.Append;
      qryUser.Append;
      Edit2.Text := '';
    end;
    if tblUser.State = dsInsert then begin
      tblUser.Cancel;
      tblUser.Append;
      qryUser.Cancel;
      qryUser.Append;
      Edit2.Text := tblUserPassword.AsString;
      Edit1.Text := tblUserPassword.AsString;
      Edit3.Text := tblUserRole.AsString;
      Edit4.text := tblUserusername.AsString;
    end;

    BitBtn1.Enabled := True;
    BitBtn2.Enabled := False;
    BitBtn3.Enabled := False;
    Label5.caption := 'Update on Going';
  end;
end;

procedure TUserForm.BitBtn5Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TUserForm.ComboBox1Change(Sender: TObject);
begin
 if UserDataModule.tblUser.State <> dsBrowse then begin
   Edit3.Text := Combobox1.Text;
 end;
end;

procedure TUserForm.DBGridEh1CellClick(Column: TColumnEh);
begin
  if not UserDataModule.tblUser.IsEmpty then begin
    UserDataModule.tblUser.Cancel;
    UserDataModule.qryuser.Cancel;
    BitBtn1.Enabled := False;
    BitBtn2.Enabled := True;
    BitBtn3.Enabled := True;
    if UserDataModule.tblUser.Locate('id',UserDataModule.qryUserid.AsString,[]) then begin
      Edit2.text := UserDataModule.tblUserpassword.AsString;
      Edit1.text := UserDataModule.tblUserpassword.AsString;
      Edit3.text := UserDataModule.tblUserRole.AsString;
      Edit4.text := UserDataModule.tblUserusername.AsString;
    end;
  end;
end;

procedure TUserForm.Delete1Click(Sender: TObject);
begin
  With UserDataModule do begin
    tblUser.Delete;
    qryUser.Close;
    qryUser.Open();
    tblUser.Close;
    tblUser.Open();
    tblUser.First;
    qryUser.First;
    BitBtn1.Enabled := False;
    BitBtn2.Enabled := True;
    BitBtn3.Enabled := True;
    Label5.Caption := 'Browsing';
    Edit2.text := UserDataModule.tblUserpassword.AsString;
    Edit1.text := UserDataModule.tblUserpassword.AsString;
    Edit3.text := UserDataModule.tblUserRole.AsString;
    Edit4.text := UserDataModule.tblUserusername.AsString;
  end;
end;

procedure TUserForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if UserDataModule.tblUser.State = dsBrowse then begin
     Key:=#0;
  end;
end;

procedure TUserForm.Edit4Click(Sender: TObject);
begin
  if Edit4.Focused then begin
    Shape3.Pen.Color := clBlue;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
  end else if Edit2.Focused then begin
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := clBlue;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape7.Pen.Color := cl3DDkShadow;
  end else if Edit1.Focused then begin
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := clBlue;
    Shape7.Pen.Color := cl3DDkShadow;
  end else if Combobox1.Focused then begin
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape7.Pen.Color := clBlue;
  end;
end;

procedure TUserForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDataModule.SqlDesktopConnect(False);
end;

procedure TUserForm.FormShow(Sender: TObject);
begin
  MainDataModule.SqlDesktopConnect(True);
  with UserDataModule do begin
    tblUser.Close;
    tblUser.Open;
    tblUser.First;
    qryUser.Close;
    qryUser.Open;
    qryUser.First;
    if not tblUser.IsEmpty then begin
      tblUser.Cancel;
      qryuser.Cancel;
      BitBtn1.Enabled := False;
      BitBtn2.Enabled := True;
      BitBtn3.Enabled := True;
      if tblUser.Locate('id',qryUserid.AsString,[]) then begin
        Edit2.text := tblUserpassword.AsString;
        Edit1.text := tblUserpassword.AsString;
        Edit3.text := tblUserRole.AsString;
        Edit4.text := tblUserusername.AsString;
      end;
    end;
  end;
end;

end.
