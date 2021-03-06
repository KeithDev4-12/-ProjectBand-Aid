unit WaterRateFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Menus;

type
  TWaterRateForm = class(TForm)
    Shape1: TShape;
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    dsQryWaterRate: TDataSource;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Shape17: TShape;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    Panel11: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    dsTblWaterRate: TDataSource;
    DBEdit2: TDBEdit;
    BitBtn4: TBitBtn;
    Shape8: TShape;
    pmWaterRate: TPopupMenu;
    DeleteSelected1: TMenuItem;
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit6Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DeleteSelected1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WaterRateForm: TWaterRateForm;

implementation

{$R *.dfm}

uses WaterDataModuleUnit,MainDataModuleUnit;

procedure TWaterRateForm.BitBtn1Click(Sender: TObject);
begin
  With WaterDataModule do begin
    if tblWaterRate.State = dsBrowse then begin
      tblWaterRate.Append;
      qryWaterRate.Append;
      DBEdit2.Text := '';
    end;
    if tblWaterRate.State = dsEdit then begin
      tblWaterRate.Cancel;
      tblWaterRate.Append;
      qryWaterRate.Cancel;
      qryWaterRate.Append;
      DBEdit2.Text := tblWaterRateconnectiontype.AsString;
    end;

    BitBtn1.Enabled := False;
    BitBtn2.Enabled := True;
    BitBtn3.Enabled := True;
  end;

end;

procedure TWaterRateForm.BitBtn2Click(Sender: TObject);
begin
  With WaterDataModule do begin
    if tblWaterRate.State IN [dsBrowse] then begin
      tblWaterRate.Edit;
      qryWaterRate.Edit;
      DBEdit2.Text := tblWaterRateconnectiontype.AsString;
    end;
    if tblWaterRate.State IN [dsInsert] then begin
      tblWaterRate.Cancel;
      tblWaterRate.Edit;
      qryWaterRate.Cancel;
      qryWaterRate.Edit;
      DBEdit2.Text := tblWaterRateconnectiontype.AsString;
    end;
    BitBtn2.Enabled := False;
    BitBtn1.Enabled := True;
    BitBtn3.Enabled := True;
  end;
end;

procedure TWaterRateForm.BitBtn3Click(Sender: TObject);
begin
  With WaterDataModule do begin
    if WaterDataModule.tblWaterRate.State IN [dsEdit,dsInsert] then begin
      tblWaterRateconnectiontype.AsString := DBEdit2.Text;
      tblWaterRate.Post;
      tblWaterRate.First;
      qryWaterRate.Cancel;
      qryWaterRate.Close;
      qryWaterRate.Open;
      qryWaterRate.First;
      BitBtn1.Enabled := True;
      BitBtn2.Enabled := True;
      BitBtn3.Enabled := False;
      MessageDlg('Successfully Inserted / Updated.!',mtInformation,mbOKCancel,0);
    end;
  end;
end;

procedure TWaterRateForm.BitBtn4Click(Sender: TObject);
begin
  WaterDataModule.tblWaterRate.Cancel;
  WaterDataModule.qryWaterRate.Cancel;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := True;
  BitBtn3.Enabled := False;
end;

procedure TWaterRateForm.ComboBox1Change(Sender: TObject);
begin
  if WaterDataModule.tblWaterRate.State IN [dsEdit,dsInsert] then begin
    DBEdit2.Text := ComboBox1.Items[Combobox1.ItemIndex];
    if ComboBox1.Items[Combobox1.ItemIndex] = 'COMMERCIAL' then begin
      DBEdit1.Text := '14';
    end else if ComboBox1.Items[Combobox1.ItemIndex] = 'RESIDENTIAL' then begin
      DBEdit1.Text := '12';
    end;
  end;
end;

procedure TWaterRateForm.DBEdit6Click(Sender: TObject);
begin
  if (ComboBox1.Focused) or (DBEdit2.Focused) then begin
    Shape2.Pen.Color := clBlue;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
  end else if DBEdit3.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := clBlue;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
  end else if DBEdit4.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := clBlue;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := cl3DDkShadow;
  end else if DBEdit5.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := clBlue;
    Shape6.Pen.Color := cl3DDkShadow;
  end else if DBEdit6.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
    Shape4.Pen.Color := cl3DDkShadow;
    Shape5.Pen.Color := cl3DDkShadow;
    Shape6.Pen.Color := clBlue;
  end;
end;

procedure TWaterRateForm.DBGridEh1CellClick(Column: TColumnEh);
begin
  WaterDataModule.tblWaterRate.Cancel;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := True;
  BitBtn3.Enabled := False;
  if WaterDataModule.tblWaterRate.Locate('id',WaterDataModule.qryWaterRateid.AsString,[]) then begin
    DBEdit2.Text := WaterDataModule.qryWaterRateConnectionType.AsString;
  end;
end;

procedure TWaterRateForm.DBGridEh1DblClick(Sender: TObject);
begin
  WaterDataModule.tblWaterRate.Cancel;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := True;
  BitBtn3.Enabled := False;
  if WaterDataModule.tblWaterRate.Locate('id',WaterDataModule.qryWaterRateid.AsString,[]) then begin
    DBEdit2.Text := WaterDataModule.qryWaterRateConnectionType.AsString;
  end;

end;

procedure TWaterRateForm.DeleteSelected1Click(Sender: TObject);
begin
  with WaterDataModule do begin
    if tblWaterRate.Locate('id',qryWaterRateid.AsString,[]) then begin
      tblWaterRate.Delete;
    end;
    tblWaterRate.Close;
    tblWaterRate.Open;
    tblWaterRate.First;
    qryWaterRate.Close;
    qryWaterRate.Open;
    qryWaterRate.First;
    DBEdit2.Text := qryWaterRateConnectionType.AsString;
    BitBtn3.Enabled := False;
  end;
end;

procedure TWaterRateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDataModule.SqlDesktopConnect(False);
end;

procedure TWaterRateForm.FormShow(Sender: TObject);
begin
  MainDataModule.SqlDesktopConnect(True);
  with WaterDataModule do begin
    qryWaterRate.Close;
    qryWaterRate.Open;
    qryWaterRate.First;
    tblWaterRate.Close;
    tblWaterRate.Open;
    tblWaterRate.First;
    DBEdit2.Text := qryWaterRateConnectionType.AsString;
  end;
end;

end.
