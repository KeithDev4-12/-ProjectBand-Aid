unit SettingsDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,vcl.Dialogs;


type
  TSettingsDataModule = class(TDataModule)
    qryFieldFindings: TFDQuery;
    qryFieldFindingsid: TFDAutoIncField;
    qryFieldFindingsFieldFindingsType: TWideStringField;
    qryFieldFindingsFieldFindingsValue: TWideStringField;
    qryFieldFindingsprintbillflag: TIntegerField;
    qrySettings: TFDTable;
    qrySettingsid: TFDAutoIncField;
    qrySettingssettingsname: TWideMemoField;
    qrySettingssettingsvalue: TWideMemoField;
    tblFieldFindings: TFDTable;
    tblFieldFindingsid: TFDAutoIncField;
    tblFieldFindingsfieldfindingstype: TWideMemoField;
    tblFieldFindingsfieldfindingsvalue: TWideMemoField;
    tblFieldFindingsprintbillflag: TIntegerField;
    procedure tblFieldFindingsAfterPost(DataSet: TDataSet);
    procedure tblFieldFindingsBeforeEdit(DataSet: TDataSet);
    procedure tblFieldFindingsBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  SettingsDataModule: TSettingsDataModule;
  FieldFindingStatus: String;


implementation

uses
  MainDataModuleUnit;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TSettingsDataModule.tblFieldFindingsAfterPost(DataSet: TDataSet);
begin
  if FieldFindingStatus = 'Edit' then begin
    MessageDlg('Field Findings Updated',mtInformation,[mbOK,mbClose],0);

  end else begin
    MessageDlg('New Field Findings Inserted',mtInformation,[mbOK,mbClose],0);
  end;

  // Post to System Log kung ng ano ang user gamit san FieldFindingStatus
end;

procedure TSettingsDataModule.tblFieldFindingsBeforeEdit(DataSet: TDataSet);
begin
   FieldFindingStatus := 'Edit';
end;

procedure TSettingsDataModule.tblFieldFindingsBeforeInsert(DataSet: TDataSet);
begin
   FieldFindingStatus := 'Insert';
end;

end.
