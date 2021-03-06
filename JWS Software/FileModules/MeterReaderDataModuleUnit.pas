unit MeterReaderDataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TMeterReaderDataModule = class(TDataModule)
    tblMeterReader: TFDTable;
    qryMeterReader: TFDQuery;
    tblMeterReaderid: TFDAutoIncField;
    tblMeterReadername: TWideMemoField;
    qryMeterReaderid: TFDAutoIncField;
    qryMeterReaderMETERREADERNAME: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeterReaderDataModule: TMeterReaderDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
