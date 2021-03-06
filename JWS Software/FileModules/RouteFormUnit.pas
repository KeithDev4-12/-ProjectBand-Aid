unit RouteFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.WinXCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Menus;

type
  TRouteForm = class(TForm)
    GroupBox1: TGroupBox;
    Shape1: TShape;
    DBGridEh1: TDBGridEh;
    dstblRoute: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Shape17: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label2: TLabel;
    Shape7: TShape;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dsqryRoute: TDataSource;
    DBEdit3: TEdit;
    BitBtn4: TBitBtn;
    popRouteForm: TPopupMenu;
    DeleteSelectedRow1: TMenuItem;
    Refresh1: TMenuItem;
    N1: TMenuItem;
    Shape4: TShape;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBEdit2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure DeleteSelectedRow1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RouteForm: TRouteForm;

implementation

{$R *.dfm}

uses RouteDataModuleUnit,MainDataModuleUnit;

procedure TRouteForm.BitBtn1Click(Sender: TObject);
begin
  With RouteDataModule do begin
    if tblRoute.State = dsBrowse then begin
      tblRoute.Append;
      qryRoute.Append;
      DBEdit3.Text := '';
    end;
    if tblRoute.State = dsEdit then begin
      tblRoute.Cancel;
      tblRoute.Append;
      qryRoute.Cancel;
      qryRoute.Append;
      DBEdit3.Text := tblRouterouteaddress.AsString;
    end;

    BitBtn1.Enabled := False;
    BitBtn2.Enabled := False;
    BitBtn3.Enabled := True;
    Label2.caption := 'Insert on Going';
  end;
end;

procedure TRouteForm.BitBtn2Click(Sender: TObject);
begin
  if not RouteDataModule.tblRoute.IsEmpty then begin
    With RouteDataModule do begin
      if tblRoute.State = dsBrowse then begin
        tblRoute.Edit;
        qryRoute.Edit;
        DBEdit3.Text := tblRouterouteaddress.AsString;
      end;
      if tblRoute.State = dsInsert then begin
        tblRoute.Cancel;
        tblRoute.Edit;
        qryRoute.Cancel;
        qryRoute.Edit;
        DBEdit3.Text := tblRouterouteaddress.AsString;
      end;

      BitBtn1.Enabled := False;
      BitBtn2.Enabled := False;
      BitBtn3.Enabled := True;
      Label2.Caption := 'Update on Going';
    end;
  end else begin
    MessageDlg('Nothing to Update! Empty Record',mtWarning,mbOKCancel,0);
  end;
end;

procedure TRouteForm.BitBtn3Click(Sender: TObject);
begin
  With RouteDataModule do begin
    if tblRoute.State IN [dsEdit,dsInsert] then begin
      tblRouterouteaddress.AsString := DBEdit3.Text;
      if tblRouterouteaddress.AsString <> EmptyStr then begin
        tblRoute.Post;
        tblRoute.First;
        qryRoute.Cancel;
        qryRoute.Close;
        qryRoute.Open;
        qryRoute.First;
        MessageDlg('Successfully Inserted / Updated.!',mtInformation,mbOKCancel,0);
      end else begin
        tblRoute.Cancel;
        qryRoute.Cancel;
      end;
      BitBtn1.Enabled := True;
        BitBtn2.Enabled := True;
        BitBtn3.Enabled := False;
        Label2.Caption := 'Browsing';
        DBEdit3.Text := tblRouterouteaddress.AsString
    end;
  end;

end;

procedure TRouteForm.BitBtn4Click(Sender: TObject);
begin
  RouteDataModule.tblRoute.Cancel;
  RouteDataModule.qryRoute.Cancel;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := True;
  BitBtn3.Enabled := False;
  Label2.Caption := 'Browsing';
  DBEdit3.Text := RouteDataModule.tblRouterouteaddress.AsString
end;

procedure TRouteForm.DBEdit2Click(Sender: TObject);
begin
  if DBEdit2.Focused then begin
    Shape17.Pen.Color := clBlue;
    Shape2.Pen.Color := cl3DDkShadow;
    DBEdit3.Text := RouteDataModule.tblRouterouteaddress.AsString
  end else if DBEdit3.Focused then begin
    Shape17.Pen.Color := cl3DDkShadow;
    Shape2.Pen.Color := clBlue;
  end;
end;

procedure TRouteForm.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not BitBtn3.Enabled then begin
    Key := #0;
  end;
end;

procedure TRouteForm.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not BitBtn3.Enabled then begin
    Key := #0;
  end;
end;

procedure TRouteForm.DBGridEh1CellClick(Column: TColumnEh);
begin
  if not RouteDataModule.tblRoute.IsEmpty then begin
    RouteDataModule.tblRoute.Cancel;
    RouteDataModule.qryRoute.Cancel;
    BitBtn1.Enabled := True;
    BitBtn2.Enabled := True;
    BitBtn3.Enabled := False;
    if RouteDataModule.tblRoute.Locate('id',RouteDataModule.qryRouteid.AsString,[]) then begin
      DBEdit3.Text := RouteDataModule.qryRouteROUTEADDRESS.AsString;
    end;
  end;
end;

procedure TRouteForm.DeleteSelectedRow1Click(Sender: TObject);
begin
  With RouteDataModule do begin
    tblRoute.Delete;
    qryRoute.Close;
    qryRoute.Open();
    tblRoute.Close;
    tblRoute.Open();
    tblRoute.First;
    qryRoute.First;
  end;
end;

procedure TRouteForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDataModule.SqlDesktopConnect(False);
end;

procedure TRouteForm.FormShow(Sender: TObject);
begin
  MainDataModule.SqlDesktopConnect(True);
  With RouteDataModule do begin
    tblRoute.Close;
    tblRoute.Open;
    tblRoute.First;
    qryRoute.Close;
    qryRoute.Open;
    qryRoute.First;
    Label2.Caption := 'Browsing Routes';
  end;
end;

procedure TRouteForm.Refresh1Click(Sender: TObject);
begin
  RouteDataModule.tblRoute.Cancel;
  RouteDataModule.qryRoute.Cancel;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := True;
  BitBtn3.Enabled := False;
  Label2.Caption := 'Browsing';
  DBEdit3.Text := RouteDataModule.tblRouterouteaddress.AsString
end;

end.
