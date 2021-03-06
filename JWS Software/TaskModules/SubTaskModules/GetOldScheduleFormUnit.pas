unit GetOldScheduleFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls;
type
  TGetOldScheduleForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    DBGridEh2: TDBGridEh;
    Shape1: TShape;
    procedure LoadBillmonth();
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1SelectionChanged(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetOldScheduleForm: TGetOldScheduleForm;

implementation

Uses CreateScheduleDataModuleUnit,MainFormUnit;

{$R *.dfm}

procedure TGetOldScheduleForm.BitBtn1Click(Sender: TObject);
Var
  BillMonthEntry:String;
  i:Integer ;
begin
  i:=0;
  if InputQuery('Entry BillMonth', 'Please Enter Current BillMonth', BillMonthEntry) then begin
    with CreateScheduleDataModule do begin
        tblReadingSchedule.Close;
        tblReadingSchedule.Open();
      if not tblReadingSchedule.Locate('BillMonth',BillMonthEntry,[]) then begin
        tblReadingSchedule.Filtered:=False;
        tblReadingSchedule.Filter := 'BILLMONTH LIKE ' + QuotedStr(Combobox1.Text);
        tblReadingSchedule.Filtered := True;
        tblReadingSchedule.First;
        vtReadingSchedule.Clear;
        vtReadingSchedule.Close;
        vtReadingSchedule.Open;

        while Not tblReadingSchedule.EOF do begin
          vtReadingSchedule.Append;
          vtReadingSchedulebillmonth.AsString:=tblReadingSchedulebillmonth.AsString;
          vtReadingScheduleroutecode.AsString:=tblReadingScheduleroutecode.AsString;
          vtReadingSchedulerouteaddress.AsString:=tblReadingSchedulerouteaddress.AsString;
          vtReadingScheduletotalconsumer.AsInteger:=tblReadingScheduletotalconsumer.AsInteger;
          vtReadingSchedulereadingstartdate.AsString:=tblReadingSchedulereadingstartdate.AsString;
          vtReadingScheduleduration.AsInteger:=tblReadingScheduleduration.AsInteger;
          vtReadingSchedulescheduleid.AsInteger:=tblReadingSchedulescheduleid.AsInteger;
          vtReadingSchedulemeterreaderid.AsInteger:=tblReadingSchedulemeterreaderid.AsInteger;
          vtReadingSchedule.Post;
          tblReadingSchedule.Next;
        end;
        vtReadingSchedule.First;
        while Not vtReadingSchedule.EOF do begin
          tblReadingSchedule.Append;
          tblReadingSchedulebillmonth.AsString:=BillMonthEntry;
          tblReadingScheduleroutecode.AsString:=vtReadingScheduleroutecode.AsString;
          tblReadingSchedulerouteaddress.AsString:=vtReadingSchedulerouteaddress.AsString;
          tblReadingScheduletotalconsumer.AsInteger:=VtReadingScheduletotalconsumer.AsInteger;
          tblReadingSchedulereadingstartdate.AsString:=vtReadingSchedulereadingstartdate.AsString;
          tblReadingScheduleduration.AsInteger:=vtReadingScheduleduration.AsInteger;
          tblReadingSchedulescheduleid.AsInteger:=vtReadingSchedulescheduleid.AsInteger;
          tblReadingSchedulemeterreaderid.AsInteger:=0;
          tblReadingSchedule.Post;
          vtReadingSchedule.Next;
        end;
        MessageDlg('Successfully Created New Schedule Using Old Route!',mtInformation,mbOKCancel,0);
        MainForm.BillMonthToProcess :=BillMonthEntry;
        MainForm.BillMonthpass := BillMonthEntry;
        Self.Close
      end else begin
        if MessageDlg('Schedule Already Created.'+#13#10+' Want To Edit Schedule? Click "Yes".'+#13#10+'Want To Re-Input BillMonth? Click "No".',mtWarning,mbYesNo,0) = mrYes then begin
          MessageDlg('In order to Edit Schedule you Should Go to '+#13#10+'The Scheduling Form Thank You..',mtInformation,mbOKCancel,0);
        end else begin
          BitBtn1Click(Sender);
        end;
      end;
    end;
  end;
end;

procedure TGetOldScheduleForm.ComboBox1Change(Sender: TObject);
begin
  with CreateScheduleDataModule do begin
     qryRouteAssigned.Close;
     qryRouteAssigned.ParamByName('ABILLMONTH').AsString := Combobox1.text;
     qryRouteAssigned.Open();
     qryRouteAssigned.First;
     qryRouteAssigned.Filtered := False;
     qryRouteAssigned.Filter := 'SCHEDULEID = ' + QuotedStr(DBGridEh1.Columns.Items[0].DisplayText);
     qryRouteAssigned.Filtered := True;
  end;

end;

procedure TGetOldScheduleForm.ComboBox1Select(Sender: TObject);
begin
  with CreateScheduleDataModule do begin
    qryRouteAssigned.Close;
    qryRouteAssigned.ParamByName('ABillMonth').AsString := Combobox1.Text;
    qryRouteAssigned.Open();
    qryRouteAssigned.First;
    qryRouteAssigned.Filtered := False;
    qryRouteAssigned.Filter := 'SCHEDULEID = ' + QuotedStr(DBGridEh1.Columns.Items[0].DisplayText);
    qryRouteAssigned.Filtered := True;
  end;
end;

procedure TGetOldScheduleForm.DBGridEh1CellClick(Column: TColumnEh);
begin
  with CreateScheduleDataModule do begin
    qryRouteAssigned.Close;
    qryRouteAssigned.ParamByName('ABillMonth').AsString := Combobox1.Text;
    qryRouteAssigned.Open();
    qryRouteAssigned.First;
    qryRouteAssigned.Filtered := False;
    qryRouteAssigned.Filter := 'SCHEDULEID = ' + QuotedStr(DBGridEh1.Columns.Items[0].DisplayText);
    qryRouteAssigned.Filtered := True;
  end;
end;

procedure TGetOldScheduleForm.DBGridEh1SelectionChanged(Sender: TObject);
begin
  with CreateScheduleDataModule do begin
    qryRouteAssigned.Close;
    qryRouteAssigned.ParamByName('ABillMonth').AsString := Combobox1.Text;
    qryRouteAssigned.Open();
    qryRouteAssigned.First;
    qryRouteAssigned.Filtered := False;
    qryRouteAssigned.Filter := 'SCHEDULEID = ' + QuotedStr(DBGridEh1.Columns.Items[0].DisplayText);
    qryRouteAssigned.Filtered := True;
  end;
end;

procedure TGetOldScheduleForm.FormShow(Sender: TObject);
begin
  LoadBillmonth();
  Combobox1.ItemIndex := 0;
end;

procedure TGetOldScheduleForm.LoadBillmonth;
begin
  With CreateScheduleDataModule do begin
    qryBillMonth.Close;
    qryBillMonth.Open;
    qryBillMonth.First;
    ComboBox1.Items.Clear;
    while not qryBillMonth.EOF do begin
      ComboBox1.Items.Add(qryBillMonthBillMonth.AsString);
      qryBillMonth.Next;
      qryRouteAssigned.Close;
      qryRouteAssigned.ParamByName('ABillMonth').AsString := qryBillMonthBillMonth.Text;
      qryRouteAssigned.Open();
      qryRouteAssigned.First;
      qryRouteAssigned.Filtered := False;
      qryRouteAssigned.Filter := 'SCHEDULEID = ' + QuotedStr(DBGridEh1.Columns.Items[0].DisplayText);
      qryRouteAssigned.Filtered := True;
    end;

  end;
end;

end.
