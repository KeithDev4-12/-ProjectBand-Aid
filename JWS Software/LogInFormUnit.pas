unit LogInFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, System.Hash,
  Vcl.Imaging.pngimage,Vcl.Imaging.GIFImg;

type
  TLogInForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Shape2: TShape;
    Edit2: TEdit;
    Shape1: TShape;
    Label2: TLabel;
    Panel3: TPanel;
    Image1: TImage;
    Shape3: TShape;
    Shape4: TShape;
    Panel4: TPanel;
    Shape5: TShape;
    procedure Panel3Click(Sender: TObject);
    function GetStrHashMD5(Str: String): String;
    procedure Panel4Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dragForm(X,Y:Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel3MouseEnter(Sender: TObject);
    procedure Panel3MouseLeave(Sender: TObject);
    procedure Panel4MouseLeave(Sender: TObject);
    procedure Panel4MouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogInForm: TLogInForm;
  drag:Boolean;
  mousex:Integer;
  mousey:Integer;
  MPos:TPoint;

implementation

{$R *.dfm}
USes MainFormUnit,MainDataModuleUnit, ForgotPasswordFormUnit,SystemLogDataModuleUnit;

procedure TLogInForm.dragForm(X,Y:Integer);
begin
      If drag=true then begin
            {Self.Top := Y - mousey ; Self.Left := X - mousex ;}
            Self.Left := Self.Left - (MPos.X-X);
            Self.Top := Self.Top - (MPos.Y-Y);
      end;
end;

procedure TLogInForm.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Shape2.Pen.Color := cl3DDkShadow;
  Shape1.Pen.Color := cl3DDkShadow;
  drag:= True;
  MPos.X:=X;
  MPos.Y:=Y;
end;

procedure TLogInForm.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  dragForm(X,Y);
end;

procedure TLogInForm.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  drag:=false;
end;

procedure TLogInForm.Panel2Click(Sender: TObject);
begin
  Shape2.Pen.Color := cl3DDkShadow;
  Shape1.Pen.Color := cl3DDkShadow;
end;

procedure TLogInForm.Panel3Click(Sender: TObject);
Var PasswordValue :String ;
begin
  with MainDataModule do begin
    Panel3.Color := $00FA9969;
    qryLogin.Close;
    PasswordValue := GetStrHashMD5(Edit2.Text);
    qryLogin.ParamByName('AUserName').AsString := Trim(Edit1.text);
    qryLogin.ParamByName('APassWord').AsString := Trim(PasswordValue);
    qryLogin.Open;
    qryLogin.First;
    if qryLoginCount_id.AsInteger <> 0  then begin
      if (UpperCase(qryLoginRole.AsString) = 'ADMINISTRATOR') OR (UpperCase(qryLoginRole.AsString) = 'ADMIN') OR (UpperCase(qryLoginRole.AsString) = 'BILLING') then begin
        MainForm.USERROLE := 'Administrator';
        MainForm.StatusBar1.Panels.Items[1].Text := Trim(Edit1.text);
      end else begin
        MainForm.USERROLE := qryLoginRole.AsString;
        MainForm.StatusBar1.Panels.Items[1].Text := Trim(Edit1.text);
      end;
      SystemLogDataModule.SystemLogReport(Edit1.text,'Signing In User as ' + MainForm.USERROLE,DateToStr(Now())) ;
      Self.Close;
      MainForm.Enabled := True;
      MainForm.FormStyle := fsStayOnTop;
    end else begin
      MessageDlg('Wrong UserName and Password'+#13#10+'Please put Correct Credentials.',mtInformation,mbOKCancel,0);
    end;
  end;
end;

procedure TLogInForm.Panel3MouseEnter(Sender: TObject);
begin
  Panel3.Color := $00FFE0AC;
end;

procedure TLogInForm.Panel3MouseLeave(Sender: TObject);
begin
  Panel3.Color := clWhite;
end;

procedure TLogInForm.Panel4Click(Sender: TObject);
begin
  Panel4.Color := $00FA9969;
  Application.Terminate;
end;

procedure TLogInForm.Panel4MouseEnter(Sender: TObject);
begin
  Panel4.Color := $00FFE0AC;
end;

procedure TLogInForm.Panel4MouseLeave(Sender: TObject);
begin
  Panel4.Color := clWhite;
end;

procedure TLogInForm.Shape3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Shape2.Pen.Color := cl3DDkShadow;
  Shape1.Pen.Color := cl3DDkShadow;
end;

procedure TLogInForm.Shape4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Shape2.Pen.Color := cl3DDkShadow;
  Shape1.Pen.Color := cl3DDkShadow;
end;

procedure TLogInForm.Edit1Click(Sender: TObject);
begin
  if Edit1.Focused = True then begin
   Shape2.Pen.Color := clBlue;
   Shape1.Pen.Color := cl3DDkShadow;
   Edit1.Font.Color := clBlack;
   Edit2.Font.Color := cl3DDkShadow;
  end else if Edit2.Focused = True then begin
   Shape2.Pen.Color := cl3DDkShadow;
   Shape1.Pen.Color := clBlue;
   Edit1.Font.Color := cl3DDkShadow;
   Edit2.Font.Color := clBlack;
  end;
end;

procedure TLogInForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Edit2.SetFocus;
  end;
end;

procedure TLogInForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Panel3Click(Sender);
  end;
end;

procedure TLogInForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDataModule.SqlDesktopConnect(False);
end;

procedure TLogInForm.FormCreate(Sender: TObject);
begin
  (Image1.Picture.Graphic as TGIFImage).Animate := True;
  (Image1.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
   DoubleBuffered := True;// stops flickering
end;

procedure TLogInForm.FormShow(Sender: TObject);
begin
  with MainDataModule do begin
   SqlDesktopConnect(True);
  end;
  Edit1.SetFocus;
end;

function TLogInForm.GetStrHashMD5(Str: String): String;
var
  HashMD5: THashMD5;
begin
    HashMD5 := THashMD5.Create;
    HashMD5.GetHashString(Str);
    result := HashMD5.GetHashString(Str);
end;



procedure TLogInForm.Image1Click(Sender: TObject);
begin
  Shape2.Pen.Color := cl3DDkShadow;
  Shape1.Pen.Color := cl3DDkShadow;
end;

procedure TLogInForm.Label2Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TForgotPasswordForm.Create(Nil);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

end.
