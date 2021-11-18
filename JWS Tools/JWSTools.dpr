program JWSTools;

uses
  Vcl.Forms,
  ToolsFormUnit in 'ToolsFormUnit.pas' {ToolsForm},
  ToolsDataModuleUnit in 'ToolsDataModuleUnit.pas' {ToolsDataModule: TDataModule},
  MainDataModuleUnit in 'MainDataModuleUnit.pas' {MainDataModule: TDataModule},
  CommandPromtUnit in 'CommandPromtUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.ProcessMessages;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TToolsForm, ToolsForm);
  Application.CreateForm(TToolsDataModule, ToolsDataModule);
  Application.CreateForm(TMainDataModule, MainDataModule);
  Application.Run;
end.
