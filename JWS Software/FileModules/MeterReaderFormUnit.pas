unit MeterReaderFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  Vcl.Buttons, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.WinXCtrls,
  Data.DB, Vcl.Menus;

type
  TMeterReaderForm = class(TForm)
    Shape1: TShape;
    GroupBox1: TGroupBox;
    Shape2: TShape;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    Shape3: TShape;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DSTblMeterReader: TDataSource;
    DSQryMeterReader: TDataSource;
    Shape4: TShape;
    Label3: TLabel;
    DBEdit1: TEdit;
    popMeterReader: TPopupMenu;
    Refresh1: TMenuItem;
    N1: TMenuItem;
    DeleteSelectedRow1: TMenuItem;
    Shape5: TShape;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure DeleteSelectedRow1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeterReaderForm: TMeterReaderForm;

implementation
Uses MeterReaderDataModuleUnit,strUtils,MainDataModuleUnit;

{$R *.dfm}

procedure TMeterReaderForm.BitBtn1Click(Sender: TObject);
begin
  With MeterReaderDataModule do begin
    if tblMeterReader.State = dsBrowse then begin
      tblMeterReader.Append;
      qryMeterReader.Append;
      DBEdit1.Text := '';
    end;
    if tblMeterReader.State = dsEdit then begin
      tblMeterReader.Cancel;
      tblMeterReader.Append;
      qryMeterReader.Cancel;
      qryMeterReader.Append;
      DBEdit1.Text := tblMeterReadername.AsString;
    end;

    BitBtn1.Enabled := False;
    BitBtn2.Enabled := False;
    BitBtn3.Enabled := True;
    Label3.caption := 'Insert on Going';
  end;
end;

procedure TMeterReaderForm.BitBtn2Click(Sender: TObject);
begin
  if not MeterReaderDataModule.tblMeterReader.IsEmpty then begin
    With MeterReaderDataModule do begin
      if tblMeterReader.State = dsBrowse then begin
        tblMeterReader.Edit;
        qryMeterReader.Edit;
        DBEdit1.Text := tblMeterReadername.AsString;
      end;
      if tblMeterReader.State = dsInsert then begin
        tblMeterReader.Cancel;
        tblMeterReader.Edit;
        qryMeterReader.Cancel;
        qryMeterReader.Edit;
        DBEdit1.Text := tblMeterReadername.AsString;
      end;

      BitBtn1.Enabled := False;
      BitBtn2.Enabled := True;
      BitBtn3.Enabled := True;
      Label3.Caption := 'Update on Going';
    end;
  end else begin
    MessageDlg('Nothing to Update! Empty Record',mtWarning,mbOKCancel,0);
  end;
end;

procedure TMeterReaderForm.BitBtn3Click(Sender: TObject);
begin
  With MeterReaderDataModule do begin


    if tblMeterReader.State IN [dsEdit,dsInsert] then begin
      if not ContainsStr(DBEdit1.Text,'.') then begin
        MessageDlg('Cannot be Save If Meter Reader is Not Contains "." (dot,Point)..',mtInformation,mbOKCancel,0);
        Exit;
      end;
      tblMeterReaderName.AsString := DBEdit1.Text;
      if tblMeterReadername.AsString <> EmptyStr then begin
        tblMeterReader.Post;
        tblMeterReader.First;
        qryMeterReader.Cancel;
        qryMeterReader.Close;
        qryMeterReader.Open;
        qryMeterReader.First;
        MessageDlg('Successfully Inserted / Updated.!',mtInformation,mbOKCancel,0);
      end else begin
        tblMeterReader.Cancel;
        qryMeterReader.Cancel;
      end;
      BitBtn1.Enabled := True;
        BitBtn2.Enabled := True;
        BitBtn3.Enabled := False;
        Label3.Caption := 'Browsing';
        DBEdit1.Text := tblMeterReadername.AsString
    end;
  end;
end;

procedure TMeterReaderForm.BitBtn4Click(Sender: TObject);
begin
  MeterReaderDataModule.tblMeterReader.Cancel;
  MeterReaderDataModule.qryMeterReader.Cancel;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := True;
  BitBtn3.Enabled := False;
  Label3.Caption := 'Browsing';
  DBEdit1.Text := MeterReaderDataModule.tblMeterReadername.AsString
end;

procedure TMeterReaderForm.DBEdit1Click(Sender: TObject);
begin
  if DBEdit1.Focused then begin
    Shape2.Pen.Color := clBlue;
  end else begin
    Shape2.Pen.Color := cl3DDkShadow;
  end;
end;

procedure TMeterReaderForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not BitBtn3.Enabled  then begin
    Key := #0;
  end;

end;

procedure TMeterReaderForm.DBGridEh1CellClick(Column: TColumnEh);
begin
  if not MeterReaderDataModule.tblMeterReader.IsEmpty then begin
    MeterReaderDataModule.tblMeterReader.Cancel;
    MeterReaderDataModule.qryMeterReader.Cancel;
    BitBtn1.Enabled := True;
    BitBtn2.Enabled := True;
    BitBtn3.Enabled := False;
    if MeterReaderDataModule.tblMeterReader.Locate('id',MeterReaderDataModule.qryMeterReaderid.AsString,[]) then begin
      DBEdit1.Text := MeterReaderDataModule.qryMeterReaderMETERREADERNAME.AsString;
    end;
  end;
end;

procedure TMeterReaderForm.DeleteSelectedRow1Click(Sender: TObject);
begin
  With MeterReaderDataModule do begin
    tblMeterReader.Delete;
    qryMeterReader.Close;
    qryMeterReader.Open();
    tblMeterReader.Close;
    tblMeterReader.Open();
    tblMeterReader.First;
    qryMeterReader.First;
  end;
end;

procedure TMeterReaderForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDataModule.SqlDesktopConnect(False);
end;

procedure TMeterReaderForm.FormShow(Sender: TObject);
begin
  MainDataModule.SqlDesktopConnect(True);
  With MeterReaderDataModule do begin
    tblMeterReader.Close;
    tblMeterReader.Open;
    tblMeterReader.First;
    qryMeterReader.Close;
    qryMeterReader.Open;
    qryMeterReader.First;
    Label3.Caption := 'Browsing Routes';
  end;
end;

procedure TMeterReaderForm.Refresh1Click(Sender: TObject);
begin
  MeterReaderDataModule.tblMeterReader.Cancel;
  MeterReaderDataModule.qryMeterReader.Cancel;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := True;
  BitBtn3.Enabled := False;
  DBEdit1.Text := MeterReaderDataModule.tblMeterReadername.AsString
end;

end.
