unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls,LogINFormUnit, Vcl.Imaging.pngimage;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    ConsumerAccount1: TMenuItem;
    WaterRate1: TMenuItem;
    MeterReader1: TMenuItem;
    Routes1: TMenuItem;
    Settings1: TMenuItem;
    Users1: TMenuItem;
    ask1: TMenuItem;
    CreateSchedule1: TMenuItem;
    GenerateData1: TMenuItem;
    DownloadingNewReading1: TMenuItem;
    Report1: TMenuItem;
    imeInMotion1: TMenuItem;
    SystemLogs1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    Guide1: TMenuItem;
    Image1: TImage;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    BillExemption1: TMenuItem;
    N1: TMenuItem;
    OtherFunction1: TMenuItem;
    procedure ConsumerAccount1Click(Sender: TObject);
    procedure Settings1Click(Sender: TObject);
    procedure WaterRate1Click(Sender: TObject);
    procedure Routes1Click(Sender: TObject);
    procedure CreateSchedule1Click(Sender: TObject);
    procedure MeterReader1Click(Sender: TObject);
    procedure GenerateData1Click(Sender: TObject);
    procedure DownloadingNewReading1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Users1Click(Sender: TObject);
    procedure MainMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure BillExemption1Click(Sender: TObject);
    procedure OtherFunction1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     BillMonth,
    ScheduleId,
    RouteCode,
    RouteAddressVal,
    DurationValue,
    ReadingStartDateValue,
    BillMonthToProcess,
    BillMonthpass:String;
    USERROLE:STRING;
    CountClick:Integer;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}
Uses ConsumerAccountFormUnit,SettingsFormUnit,WaterRateFormUnit,RouteFormUnit,
CreateScheduleFormUnit,MeterReaderFormUnit,
DownloadingNewReadingFormUnit,ViewFormUnit,BilLexemptionFormUnit,
GenerateFormUnit,
UserformUnit,OthersFormUnit;

procedure TMainForm.BillExemption1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TBilLexemptionForm.Create(Nil);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TMainForm.ConsumerAccount1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TConsumerAccountForm.Create(Nil);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;


procedure TMainForm.CreateSchedule1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TCreateScheduleForm.Create(Nil);
  try
    LForm.ShowModal;
    //CreateScheduleForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TMainForm.DownloadingNewReading1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TViewForm.Create(Nil);
  try
    LForm.ShowModal;
    //CreateScheduleForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TMainForm.FormClick(Sender: TObject);

begin
  if CountClick= 0 then begin
    Self.FormStyle := fsNormal;
    CountClick:=1;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  CountClick :=0;
end;

procedure TMainForm.GenerateData1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TGenerateForm.Create(Nil);
  try
    LForm.ShowModal;
    //CreateScheduleForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TMainForm.MainMenu1Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  if CountClick= 0 then begin
    Self.FormStyle := fsNormal;
    CountClick:=1;
  end;
end;

procedure TMainForm.MeterReader1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TMeterReaderForm.Create(Nil);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TMainForm.OtherFunction1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TOthersForm.Create(Nil);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TMainForm.Routes1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TRouteForm.Create(Nil);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TMainForm.Settings1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TSettingsForm.Create(Nil);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TMainForm.Users1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TUserForm.Create(Nil);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

procedure TMainForm.WaterRate1Click(Sender: TObject);
var
  LForm: TForm;
begin
  LForm := TWaterRateForm.Create(Nil);
  try
    LForm.ShowModal;
  finally
    LForm.Free;
  end;
end;

end.
