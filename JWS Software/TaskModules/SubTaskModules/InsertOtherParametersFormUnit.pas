unit InsertOtherParametersFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzButton, Vcl.Samples.Spin, Vcl.Buttons;

type
  TInsertOtherParametersForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Shape1: TShape;
    Edit4: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit5: TEdit;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    SpinButton1: TSpinButton;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Shape5: TShape;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     BillMonth,
    ScheduleId,
    RouteCode,
    RouteAddressVal,
    DurationValue,
    ReadingStartDateValue:String;
    DateChange:Boolean;
  end;

var
  InsertOtherParametersForm: TInsertOtherParametersForm;
  IntervalVal:Integer;

implementation

Uses CreateScheduleDataModuleUnit, MainFormUnit, CreateScheduleFormUnit;

{$R *.dfm}

procedure TInsertOtherParametersForm.DateTimePicker1Change(Sender: TObject);
begin
  if DateTimePicker1.DateTime < Now() then begin
    raise Exception.Create('You Cannot Put Starting reading Date '+#13#10+
    'if it is Already Five Days Late for this Current Year.!');
  end;
  Edit5.Text := FormatDateTime('mm',DateTimePicker1.DateTime) + '/' + FormatDateTime('dd',DateTimePicker1.DateTime) + '/' + FormatDateTime('yyyy',DateTimePicker1.DateTime);
  DateChange:=True;
  Shape3.Pen.Color := cl3DDkShadow;
  Shape4.Pen.Color := clBlue;
end;

procedure TInsertOtherParametersForm.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TInsertOtherParametersForm.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TInsertOtherParametersForm.Edit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TInsertOtherParametersForm.FormCreate(Sender: TObject);
begin
  DateChange:=False;
  IntervalVal:=0;
  DateTimePicker1.DateTime := Now();
end;

procedure TInsertOtherParametersForm.FormShow(Sender: TObject);
begin
  edit1.Text := MainForm.BillMonth;
  BillMonth:=MainForm.BillMonth;
  ScheduleId:=MainForm.ScheduleId;
  RouteCode:=MainForm.RouteCode ;
  RouteAddressVal:=MainForm.RouteAddressVal;
end;

procedure TInsertOtherParametersForm.RzBitBtn1Click(Sender: TObject);
Var
  StatusPost:String;
begin
  with CreateScheduleDataModule do begin
    if Edit5.Text = '00/00/0000' then begin
      Exit;
    end;

    if tblReadingSchedule.Locate('BillMonth;RouteCode;ScheduleId',VarArrayOf([Billmonth,RouteCode,ScheduleId]),[]) then begin
      if Messagedlg('Same Route Already Added This will Update'+#13#10+' the Old Schedule is That Okay?',mtInformation,mbOKCancel,0) = mrOk then begin
        tblReadingSchedule.Edit;
        StatusPost:='Updated';
      end else begin
        tblReadingSchedule.Cancel;
        StatusPost:='Cancel';
        Exit;
      end;
    end else begin
      if tblReadingSchedule.Locate('ScheduleId;BillMonth',VarArrayOf([0,Billmonth]),[]) then begin
        tblReadingSchedule.Edit;
        StatusPost:='Updated';
      end else begin
        tblReadingSchedule.Append;
        StatusPost:='Inserted';
      end;
    end;

      qryCountConsumer.Close;
      qryCountConsumer.ParamByName('AROUTEADDRESS').AsString := RouteAddressVal;
      qryCountConsumer.Open();
      qryCountConsumer.Last;


      tblReadingSchedulebillmonth.AsString := Edit1.text;
      tblReadingScheduleroutecode.AsString := RouteCode;
      tblReadingSchedulerouteaddress.AsString := RouteAddressVal ;
      tblReadingScheduletotalconsumer.AsInteger := qryCountConsumerCountConsumer.AsInteger;
      tblReadingSchedulereadingstartdate.AsString  := Edit5.Text;
      tblReadingScheduleduration.AsInteger := StrToInt(Edit4.Text);
      tblReadingSchedulescheduleid.AsInteger := StrToInt(ScheduleId);
      tblReadingSchedulemeterreaderid.AsInteger := 0 ;
      tblReadingScheduleposted.AsInteger := 0 ;
      tblReadingSchedule.Post;

      with CreateScheduleDataModule do begin
        qryRouteAssigned.Close;
        qryRouteAssigned.ParamByName('ABillMonth').AsString := Billmonth;
        qryRouteAssigned.Open();
        qryRouteAssigned.Filtered := False;
        qryRouteAssigned.Filter := 'SCHEDULEID = ' + QuotedStr(ScheduleId);
        qryRouteAssigned.Filtered := True;
      end;
      if StatusPost = 'Inserted' then
        MessageDlg('Succesfully Inserted Data',mtInformation,mbOKCancel,0)
      else if StatusPost = 'Updated' then
        MessageDlg('Succesfully Updated Data',mtInformation,mbOKCancel,0);
      Self.Close;
  end;
end;

procedure TInsertOtherParametersForm.RzBitBtn2Click(Sender: TObject);
begin
  Self.Close
end;

procedure TInsertOtherParametersForm.SpinButton1DownClick(Sender: TObject);
Var IntDown:Integer;
begin
 IntDown := StrToInt(Edit4.Text);
 if (IntDown <= 31) and (IntDown > 1) then begin
    Edit4.Text := IntToStr(IntDown-1);
 end;

 Shape3.Pen.Color := clBlue;
 Shape4.Pen.Color := cl3DDkShadow;

end;

procedure TInsertOtherParametersForm.SpinButton1UpClick(Sender: TObject);
Var IntUp:Integer;
begin
  IntUp := StrToInt(Edit4.Text);
  if (IntUp <= 30 ) and (IntUp >= 1) then begin
    Edit4.Text := IntToStr(IntUp+1);
  end;
  Shape3.Pen.Color := cl3DDkShadow;
  Shape4.Pen.Color := clBlue;
end;

end.
