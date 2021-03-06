unit ForgotPasswordFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,System.Hash;

type
  TForgotPasswordForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit4: TEdit;
    Shape6: TShape;
    procedure BitBtn1Click(Sender: TObject);
    Function GetStrHashMD5(Str: String): String;
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ForgotPasswordForm: TForgotPasswordForm;

implementation
Uses MainDataModuleUnit;

{$R *.dfm}

procedure TForgotPasswordForm.BitBtn1Click(Sender: TObject);
var
  Vars : array of string;
  ValueInput:String;
  Value1,
  Value2,NewValuePassword:String;
begin
  SetLength(Vars,2);
  Vars[0] := '';
  Vars[1] := '';
  if InputQuery('Administrative Protocol',
               ['User Name :',#31'Password'],
  Vars,
  function (const Values: array of string): Boolean begin
    Result := (Values[0] > '') and (Values[1] > '');
  end
  )then
  begin
  //InputQuery('Caption',['Input Here','Input Here2'],[Value1,Value2],procedure(const AResult:TModalresult; Const AValues:Array of string)Begin end);
  //ValueInput := InputBox('Information','Please put Administrative Credentials','');
    with MainDataModule do begin
      NewValuePassword := GetStrHashMD5(Vars[1]);
      qryLogIn.Close;
      qryLogIn.ParamByName('AUserName').AsString := Vars[0];
      qryLogIn.ParamByName('APassword').AsString := NewValuePassword;
      qryLogIn.Open;
      qryLogin.First;
      if qryLoginCount_id.AsInteger <> 0  then begin
        if (UpperCase(qryLoginRole.AsString) = 'ADMINISTRATOR') OR (UpperCase(qryLoginRole.AsString) = 'ADMIN') then begin
          if tblLogin.Locate('Username',Edit4.Text,[]) then begin
            if Edit2.Text = Edit1.text then begin
              tblLogin.Edit;
              tblLoginpassword.AsString := GetStrHashMD5(Edit2.Text);
              tblLogin.Post;
              MessageDlg('Account Successfully Change its Password',mtInformation,[mbClose],0);
              Self.Close;
            end else begin
              MessageDlg('Password Are not the same Input in Changing Account',Mterror,[mbClose],0);
              Exit;
            end;
          end else begin
            MessageDlg('You Are trying to Change Password that doesnt Exist in the Database',MtError,[mbClose],0);
            Exit;
          end;
        end else begin
          MessageDlg('Account is not Administrator,'+#13#10+'You Cannot Change Password Using this Privilege.',MtError,[mbClose],0);
          Exit;
        end;
      end else begin
        MessageDlg('Administrative Account entered Are not Available',MtError,[mbClose],0);
        Exit;
      end;
    end;
  end;
end;


procedure TForgotPasswordForm.BitBtn4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TForgotPasswordForm.Edit4Click(Sender: TObject);
begin
  if Edit4.Focused then begin
    Shape2.Pen.Color := clBlue;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
  end else if Edit2.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := clBlue;
    Shape4.Pen.Color := cl3DDkShadow;
  end else if Edit1.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := clBlue;
  end;
end;

procedure TForgotPasswordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainDataModule.SqlDesktopConnect(False);
end;

procedure TForgotPasswordForm.FormShow(Sender: TObject);
begin
 with MainDataModule do begin
   tblLogin.Close;
   tblLogin.Open();
   tblLogin.First;
   qryLogIn.Close;
   qryLogIn.Open();
   qryLogIn.First;

  SqlDesktopConnect(True);
 end;
  Edit4.SetFocus;
end;

function TForgotPasswordForm.GetStrHashMD5(Str: String): String;
var
  HashMD5: THashMD5;
begin
    HashMD5 := THashMD5.Create;
    result := HashMD5.GetHashString(Str);
end;

end.
