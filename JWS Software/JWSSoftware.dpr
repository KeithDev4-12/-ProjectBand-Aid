program JWSSoftware;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  MainDataModuleUnit in 'MainDataModuleUnit.pas' {MainDataModule: TDataModule},
  ConsumerAccountFormUnit in 'FileModules\ConsumerAccountFormUnit.pas' {ConsumerAccountForm},
  ConsumerAccountDataFormUnit in 'FileModules\ConsumerAccountDataFormUnit.pas' {ConsumerAccountDataForm},
  SettingsFormUnit in 'FileModules\SettingsFormUnit.pas' {SettingsForm},
  LogInFormUnit in 'LogInFormUnit.pas' {LogInForm},
  SettingsDataModuleUnit in 'FileModules\SettingsDataModuleUnit.pas' {SettingsDataModule: TDataModule},
  WaterRateFormUnit in 'FileModules\WaterRateFormUnit.pas' {WaterRateForm},
  WaterDataModuleUnit in 'FileModules\WaterDataModuleUnit.pas' {WaterDataModule: TDataModule},
  SystemLogDataModuleUnit in 'SystemLogDataModuleUnit.pas' {SystemLogDataModule: TDataModule},
  RouteFormUnit in 'FileModules\RouteFormUnit.pas' {RouteForm},
  RouteDataModuleUnit in 'FileModules\RouteDataModuleUnit.pas' {RouteDataModule: TDataModule},
  CreateScheduleFormUnit in 'TaskModules\CreateScheduleFormUnit.pas' {CreateScheduleForm},
  ConsumerAccountDataModuleUnit in 'FileModules\ConsumerAccountDataModuleUnit.pas' {ConsumerAccountDataModule: TDataModule},
  MeterReaderFormUnit in 'FileModules\MeterReaderFormUnit.pas' {MeterReaderForm},
  CreateScheduleDataModuleUnit in 'TaskModules\CreateScheduleDataModuleUnit.pas' {CreateScheduleDataModule: TDataModule},
  MeterReaderDataModuleUnit in 'FileModules\MeterReaderDataModuleUnit.pas' {MeterReaderDataModule: TDataModule},
  InsertOtherParametersFormUnit in 'TaskModules\SubTaskModules\InsertOtherParametersFormUnit.pas' {InsertOtherParametersForm},
  GetOldScheduleFormUnit in 'TaskModules\SubTaskModules\GetOldScheduleFormUnit.pas' {GetOldScheduleForm},
  GenerateFormUnit in 'TaskModules\GenerateFormUnit.pas' {GenerateForm},
  GenerateDataModuleUnit in 'TaskModules\GenerateDataModuleUnit.pas' {GenerateDataModule: TDataModule},
  DownloadingNewReadingFormUnit in 'TaskModules\DownloadingNewReadingFormUnit.pas' {DownloadingNewReadingForm},
  UserFormUnit in 'FileModules\UserFormUnit.pas' {UserForm},
  UserDataModuleUnit in 'FileModules\UserDataModuleUnit.pas' {UserDataModule: TDataModule},
  ForgotPasswordFormUnit in 'ForgotPasswordFormUnit.pas' {ForgotPasswordForm},
  SQLiteFileUtilUnit in 'SQLiteFileUtilUnit.pas',
  UploadDownloadUnit in 'UploadDownloadUnit.pas',
  CommandPromtUnit in 'CommandPromtUnit.pas',
  U_usb in 'U_usb.pas',
  DownloadingNewReadingDataModuleUnit in 'TaskModules\DownloadingNewReadingDataModuleUnit.pas' {DownloadingNewReadingDataModule: TDataModule},
  ViewFormUnit in 'TaskModules\ViewFormUnit.pas' {ViewForm},
  BillExemptionFormUnit in 'TaskModules\BillExemptionFormUnit.pas' {BillExemptionForm},
  OthersFormUnit in 'TaskModules\OthersFormUnit.pas' {OthersForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.ShowMainForm := True;
  Application.CreateForm(TMainDataModule, MainDataModule);
  Application.CreateForm(TSettingsDataModule, SettingsDataModule);
  Application.CreateForm(TWaterDataModule, WaterDataModule);
  Application.CreateForm(TSystemLogDataModule, SystemLogDataModule);
  Application.CreateForm(TRouteDataModule, RouteDataModule);
  Application.CreateForm(TConsumerAccountDataModule, ConsumerAccountDataModule);
  Application.CreateForm(TCreateScheduleDataModule, CreateScheduleDataModule);
  Application.CreateForm(TMeterReaderDataModule, MeterReaderDataModule);
  Application.CreateForm(TGenerateDataModule, GenerateDataModule);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLogInForm, LogInForm);
  Application.CreateForm(TUserForm, UserForm);
  Application.CreateForm(TUserDataModule, UserDataModule);
  Application.CreateForm(TForgotPasswordForm, ForgotPasswordForm);
  Application.CreateForm(TDownloadingNewReadingDataModule, DownloadingNewReadingDataModule);
  Application.CreateForm(TViewForm, ViewForm);
  Application.CreateForm(TBillExemptionForm, BillExemptionForm);
  Application.CreateForm(TOthersForm, OthersForm);
  Application.Run;
end.
