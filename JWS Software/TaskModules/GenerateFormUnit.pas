unit GenerateFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,System.StrUtils, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, VirtualTable, comobj, FireDAC.Comp.BatchMove.DataSet,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.Text, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,DateUtils, Vcl.DBCtrls,System.Character,
  RzCmboBx;


type
  TGenerateForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    RzBitBtn1: TRzBitBtn;
    OpenDialog1: TOpenDialog;
    Label3: TLabel;
    Shape2: TShape;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    tblMainConsumerAccount: TFDTable;
    qryRouteAddress: TFDQuery;
    qryRouteAddressid: TFDAutoIncField;
    qryRouteAddressroutecode: TIntegerField;
    qryRouteAddressROUTEADDRESS: TWideStringField;
    qryConsumerAccount: TFDQuery;
    qryConsumerAccountid: TFDAutoIncField;
    qryConsumerAccountaccountno: TWideMemoField;
    qryConsumerAccountaccountname: TWideMemoField;
    qryConsumerAccountroutesequence: TIntegerField;
    qryConsumerAccountroutecode: TIntegerField;
    qryConsumerAccountrouteaddress: TWideMemoField;
    qryConsumerAccountratecode: TIntegerField;
    qryConsumerAccountconnectiontype: TWideMemoField;
    qryConsumerAccountconnectionstatus: TWideMemoField;
    qryConsumerAccountnewconnectionstatus: TWideMemoField;
    qryConsumerAccountisseniorcitizen: TIntegerField;
    qryConsumerAccountmobilenumber: TWideMemoField;
    qryConsumerAccountmeterbrand: TWideMemoField;
    qryConsumerAccountmeterserialno: TWideMemoField;
    qryConsumerAccountbillmonth: TWideMemoField;
    qryConsumerAccountbillnumber: TIntegerField;
    qryConsumerAccountpreviousreading: TFloatField;
    qryConsumerAccountpreviousreadingdate: TWideMemoField;
    qryConsumerAccountpresentreading: TFloatField;
    qryConsumerAccountpresentreadingdate: TWideMemoField;
    qryConsumerAccountaverageconsumption: TFloatField;
    qryConsumerAccountcurrentconsumption: TFloatField;
    qryConsumerAccounttotalconsumption: TFloatField;
    qryConsumerAccountoldmeterconsumption: TFloatField;
    qryConsumerAccountmeterfindings: TWideMemoField;
    qryConsumerAccountreadingremarks: TWideMemoField;
    qryConsumerAccountcurrentamountdue: TFloatField;
    qryConsumerAccounttotalamountdue: TFloatField;
    qryConsumerAccounttotalamountafterduedate: TFloatField;
    qryConsumerAccountdiscountamount: TFloatField;
    qryConsumerAccountpenaltyamount: TFloatField;
    qryConsumerAccounttotalbillarrears: TFloatField;
    qryConsumerAccounttotalotherfees: TFloatField;
    qryConsumerAccountpaymentduedate: TWideMemoField;
    qryConsumerAccountpaymentdateafterdue: TWideMemoField;
    qryConsumerAccountdisconnectiondate: TWideMemoField;
    qryConsumerAccountreadingtime: TWideMemoField;
    qryConsumerAccountmeterreadername: TWideMemoField;
    qryConsumerAccountnumberofreadingretry: TIntegerField;
    qryConsumerAccountnumberofbillprinted: TIntegerField;
    qryConsumerAccountnumberofsmssent: TIntegerField;
    qryConsumerAccountdateuploaded: TWideMemoField;
    qryDeleteConsumerAccount: TFDQuery;
    tblConsumerAccount: TFDTable;
    vtConsumerAccount: TVirtualTable;
    vtFields: TVirtualTable;
    vtFieldsid: TAutoIncField;
    vtFieldsName: TStringField;
    vtFieldsValue: TStringField;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    qryGetBillNumber: TFDQuery;
    qryGetBillNumberid: TIntegerField;
    qryGetBillNumberaccountno: TWideMemoField;
    qryGetBillNumberaccountname: TWideMemoField;
    qryGetBillNumberroutesequence: TIntegerField;
    qryGetBillNumberroutecode: TIntegerField;
    qryGetBillNumberrouteaddress: TWideMemoField;
    qryGetBillNumberratecode: TIntegerField;
    qryGetBillNumberconnectiontype: TWideMemoField;
    qryGetBillNumberconnectionstatus: TWideMemoField;
    qryGetBillNumbernewconnectionstatus: TWideMemoField;
    qryGetBillNumberisseniorcitizen: TIntegerField;
    qryGetBillNumbermobilenumber: TWideMemoField;
    qryGetBillNumbermeterbrand: TWideMemoField;
    qryGetBillNumbermeterserialno: TWideMemoField;
    qryGetBillNumberbillmonth: TWideMemoField;
    qryGetBillNumberbillnumber: TIntegerField;
    qryGetBillNumberpreviousreading: TFloatField;
    qryGetBillNumberpreviousreadingdate: TWideMemoField;
    qryGetBillNumberpresentreading: TFloatField;
    qryGetBillNumberpresentreadingdate: TWideMemoField;
    qryGetBillNumberaverageconsumption: TFloatField;
    qryGetBillNumbercurrentconsumption: TFloatField;
    qryGetBillNumbertotalconsumption: TFloatField;
    qryGetBillNumberoldmeterconsumption: TFloatField;
    qryGetBillNumbermeterfindings: TWideMemoField;
    qryGetBillNumberreadingremarks: TWideMemoField;
    qryGetBillNumbercurrentamountdue: TFloatField;
    qryGetBillNumbertotalamountdue: TFloatField;
    qryGetBillNumbertotalamountafterduedate: TFloatField;
    qryGetBillNumberdiscountamount: TFloatField;
    qryGetBillNumberpenaltyamount: TFloatField;
    qryGetBillNumbertotalbillarrears: TFloatField;
    qryGetBillNumbertotalotherfees: TFloatField;
    qryGetBillNumberpaymentduedate: TWideMemoField;
    qryGetBillNumberpaymentdateafterdue: TWideMemoField;
    qryGetBillNumberdisconnectiondate: TWideMemoField;
    qryGetBillNumberreadingtime: TWideMemoField;
    qryGetBillNumbermeterreadername: TWideMemoField;
    qryGetBillNumbernumberofreadingretry: TIntegerField;
    qryGetBillNumbernumberofbillprinted: TIntegerField;
    qryGetBillNumbernumberofsmssent: TIntegerField;
    qryGetBillNumberdateuploaded: TWideMemoField;
    vtConsumerAccountid: TAutoIncField;
    vtConsumerAccountaccountno: TWideMemoField;
    vtConsumerAccountaccountname: TWideMemoField;
    vtConsumerAccountroutesequence: TIntegerField;
    vtConsumerAccountroutecode: TIntegerField;
    vtConsumerAccountrouteaddress: TWideMemoField;
    vtConsumerAccountratecode: TIntegerField;
    vtConsumerAccountconnectiontype: TWideMemoField;
    vtConsumerAccountconnectionstatus: TWideMemoField;
    vtConsumerAccountnewconnectionstatus: TWideMemoField;
    vtConsumerAccountisseniorcitizen: TIntegerField;
    vtConsumerAccountmobilenumber: TWideMemoField;
    vtConsumerAccountmeterbrand: TWideMemoField;
    vtConsumerAccountmeterserialno: TWideMemoField;
    vtConsumerAccountbillmonth: TWideMemoField;
    vtConsumerAccountbillnumber: TIntegerField;
    vtConsumerAccountpreviousreading: TFloatField;
    vtConsumerAccountpreviousreadingdate: TWideMemoField;
    vtConsumerAccountpresentreading: TFloatField;
    vtConsumerAccountpresentreadingdate: TWideMemoField;
    vtConsumerAccountaverageconsumption: TFloatField;
    vtConsumerAccountcurrentconsumption: TFloatField;
    vtConsumerAccounttotalconsumption: TFloatField;
    vtConsumerAccountoldmeterconsumption: TFloatField;
    vtConsumerAccountmeterfindings: TWideMemoField;
    vtConsumerAccountreadingremarks: TWideMemoField;
    vtConsumerAccountcurrentamountdue: TFloatField;
    vtConsumerAccounttotalamountdue: TFloatField;
    vtConsumerAccounttotalamountafterduedate: TFloatField;
    vtConsumerAccountdiscountamount: TFloatField;
    vtConsumerAccountpenaltyamount: TFloatField;
    vtConsumerAccounttotalbillarrears: TFloatField;
    vtConsumerAccounttotalotherfees: TFloatField;
    vtConsumerAccountpaymentduedate: TWideMemoField;
    vtConsumerAccountpaymentdateafterdue: TWideMemoField;
    vtConsumerAccountdisconnectiondate: TWideMemoField;
    vtConsumerAccountreadingtime: TWideMemoField;
    vtConsumerAccountmeterreadername: TWideMemoField;
    vtConsumerAccountnumberofreadingretry: TIntegerField;
    vtConsumerAccountnumberofbillprinted: TIntegerField;
    vtConsumerAccountnumberofsmssent: TIntegerField;
    vtConsumerAccountdateuploaded: TWideMemoField;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    Shape5: TShape;
    qryWaterRate: TFDQuery;
    qryWaterRateratecode: TIntegerField;
    qryWaterRateConnectionType: TWideStringField;
    DataSource2: TDataSource;
    qryUpdateConsumerAccount: TFDQuery;
    tblUpdateConsumerAccount_____: TFDTable;
    tblUpdateConsumerAccount_____id: TFDAutoIncField;
    tblUpdateConsumerAccount_____accountno: TWideMemoField;
    tblUpdateConsumerAccount_____accountname: TWideMemoField;
    tblUpdateConsumerAccount_____routesequence: TIntegerField;
    tblUpdateConsumerAccount_____routecode: TIntegerField;
    tblUpdateConsumerAccount_____routeaddress: TWideMemoField;
    tblUpdateConsumerAccount_____ratecode: TIntegerField;
    tblUpdateConsumerAccount_____connectiontype: TWideMemoField;
    tblUpdateConsumerAccount_____connectionstatus: TWideMemoField;
    tblUpdateConsumerAccount_____newconnectionstatus: TWideMemoField;
    tblUpdateConsumerAccount_____isseniorcitizen: TIntegerField;
    tblUpdateConsumerAccount_____mobilenumber: TWideMemoField;
    tblUpdateConsumerAccount_____meterbrand: TWideMemoField;
    tblUpdateConsumerAccount_____meterserialno: TWideMemoField;
    tblUpdateConsumerAccount_____billmonth: TWideMemoField;
    tblUpdateConsumerAccount_____billnumber: TIntegerField;
    tblUpdateConsumerAccount_____previousreading: TFloatField;
    tblUpdateConsumerAccount_____previousreadingdate: TWideMemoField;
    tblUpdateConsumerAccount_____presentreading: TFloatField;
    tblUpdateConsumerAccount_____presentreadingdate: TWideMemoField;
    tblUpdateConsumerAccount_____averageconsumption: TFloatField;
    tblUpdateConsumerAccount_____currentconsumption: TFloatField;
    tblUpdateConsumerAccount_____totalconsumption: TFloatField;
    tblUpdateConsumerAccount_____oldmeterconsumption: TFloatField;
    tblUpdateConsumerAccount_____meterfindings: TWideMemoField;
    tblUpdateConsumerAccount_____readingremarks: TWideMemoField;
    tblUpdateConsumerAccount_____currentamountdue: TFloatField;
    tblUpdateConsumerAccount_____totalamountdue: TFloatField;
    tblUpdateConsumerAccount_____totalamountafterduedate: TFloatField;
    tblUpdateConsumerAccount_____discountamount: TFloatField;
    tblUpdateConsumerAccount_____penaltyamount: TFloatField;
    tblUpdateConsumerAccount_____totalbillarrears: TFloatField;
    tblUpdateConsumerAccount_____totalotherfees: TFloatField;
    tblUpdateConsumerAccount_____paymentduedate: TWideMemoField;
    tblUpdateConsumerAccount_____paymentdateafterdue: TWideMemoField;
    tblUpdateConsumerAccount_____disconnectiondate: TWideMemoField;
    tblUpdateConsumerAccount_____readingtime: TWideMemoField;
    tblUpdateConsumerAccount_____meterreadername: TWideMemoField;
    tblUpdateConsumerAccount_____numberofreadingretry: TIntegerField;
    tblUpdateConsumerAccount_____numberofbillprinted: TIntegerField;
    tblUpdateConsumerAccount_____numberofsmssent: TIntegerField;
    tblUpdateConsumerAccount_____dateuploaded: TWideMemoField;
    Shape3: TShape;
    RzBitBtn2: TRzBitBtn;
    Label4: TLabel;
    vtSeniorCitizen: TVirtualTable;
    vtSeniorCitizenSCCode: TIntegerField;
    vtSeniorCitizenSCValue: TStringField;
    DataSource3: TDataSource;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    Shape4: TShape;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Shape6: TShape;
    Shape7: TShape;
    BitBtn2: TBitBtn;
    Shape8: TShape;
    qryUpdateConsumerAccountid: TFDAutoIncField;
    qryUpdateConsumerAccountAccountNo: TWideStringField;
    qryUpdateConsumerAccountAccountName: TWideStringField;
    qryUpdateConsumerAccountratecode: TIntegerField;
    qryUpdateConsumerAccountisseniorcitizen: TIntegerField;
    qryUpdateConsumerAccountMobileNo: TWideStringField;
    qryUpdateConsumerAccountTotalBillArrears: TWideStringField;
    qryUpdateConsumerAccountTotalOtherFees: TWideStringField;
    qryUpdateConsumerAccountConnectionType: TWideStringField;
    tblConsumerAccountid: TFDAutoIncField;
    tblConsumerAccountaccountno: TWideMemoField;
    tblConsumerAccountaccountname: TWideMemoField;
    tblConsumerAccountroutesequence: TIntegerField;
    tblConsumerAccountroutecode: TIntegerField;
    tblConsumerAccountrouteaddress: TWideMemoField;
    tblConsumerAccountratecode: TIntegerField;
    tblConsumerAccountconnectiontype: TWideMemoField;
    tblConsumerAccountconnectionstatus: TWideMemoField;
    tblConsumerAccountnewconnectionstatus: TWideMemoField;
    tblConsumerAccountisseniorcitizen: TIntegerField;
    tblConsumerAccountmobilenumber: TWideMemoField;
    tblConsumerAccountmeterbrand: TWideMemoField;
    tblConsumerAccountmeterserialno: TWideMemoField;
    tblConsumerAccountbillmonth: TWideMemoField;
    tblConsumerAccountbillnumber: TIntegerField;
    tblConsumerAccountpreviousreading: TFloatField;
    tblConsumerAccountpreviousreadingdate: TWideMemoField;
    tblConsumerAccountpresentreading: TFloatField;
    tblConsumerAccountpresentreadingdate: TWideMemoField;
    tblConsumerAccountaverageconsumption: TFloatField;
    tblConsumerAccountcurrentconsumption: TFloatField;
    tblConsumerAccounttotalconsumption: TFloatField;
    tblConsumerAccountoldmeterconsumption: TFloatField;
    tblConsumerAccountmeterfindings: TWideMemoField;
    tblConsumerAccountreadingremarks: TWideMemoField;
    tblConsumerAccountcurrentamountdue: TFloatField;
    tblConsumerAccounttotalamountdue: TFloatField;
    tblConsumerAccounttotalamountafterduedate: TFloatField;
    tblConsumerAccountdiscountamount: TFloatField;
    tblConsumerAccountpenaltyamount: TFloatField;
    tblConsumerAccounttotalbillarrears: TFloatField;
    tblConsumerAccounttotalotherfees: TFloatField;
    tblConsumerAccountpaymentduedate: TWideMemoField;
    tblConsumerAccountpaymentdateafterdue: TWideMemoField;
    tblConsumerAccountdisconnectiondate: TWideMemoField;
    tblConsumerAccountreadingtime: TWideMemoField;
    tblConsumerAccountmeterreadername: TWideMemoField;
    tblConsumerAccountnumberofreadingretry: TIntegerField;
    tblConsumerAccountnumberofbillprinted: TIntegerField;
    tblConsumerAccountnumberofsmssent: TIntegerField;
    tblConsumerAccountdateuploaded: TWideMemoField;
    tblMainConsumerAccountid: TIntegerField;
    tblMainConsumerAccountaccountno: TWideMemoField;
    tblMainConsumerAccountaccountname: TWideMemoField;
    tblMainConsumerAccountroutesequence: TIntegerField;
    tblMainConsumerAccountroutecode: TIntegerField;
    tblMainConsumerAccountrouteaddress: TWideMemoField;
    tblMainConsumerAccountratecode: TIntegerField;
    tblMainConsumerAccountconnectiontype: TWideMemoField;
    tblMainConsumerAccountconnectionstatus: TWideMemoField;
    tblMainConsumerAccountnewconnectionstatus: TWideMemoField;
    tblMainConsumerAccountisseniorcitizen: TIntegerField;
    tblMainConsumerAccountmobilenumber: TWideMemoField;
    tblMainConsumerAccountmeterbrand: TWideMemoField;
    tblMainConsumerAccountmeterserialno: TWideMemoField;
    tblMainConsumerAccountbillmonth: TWideMemoField;
    tblMainConsumerAccountbillnumber: TIntegerField;
    tblMainConsumerAccountpreviousreading: TFloatField;
    tblMainConsumerAccountpreviousreadingdate: TWideMemoField;
    tblMainConsumerAccountpresentreading: TFloatField;
    tblMainConsumerAccountpresentreadingdate: TWideMemoField;
    tblMainConsumerAccountaverageconsumption: TFloatField;
    tblMainConsumerAccountcurrentconsumption: TFloatField;
    tblMainConsumerAccounttotalconsumption: TFloatField;
    tblMainConsumerAccountoldmeterconsumption: TFloatField;
    tblMainConsumerAccountmeterfindings: TWideMemoField;
    tblMainConsumerAccountreadingremarks: TWideMemoField;
    tblMainConsumerAccountcurrentamountdue: TFloatField;
    tblMainConsumerAccounttotalamountdue: TFloatField;
    tblMainConsumerAccounttotalamountafterduedate: TFloatField;
    tblMainConsumerAccountdiscountamount: TFloatField;
    tblMainConsumerAccountpenaltyamount: TFloatField;
    tblMainConsumerAccounttotalbillarrears: TFloatField;
    tblMainConsumerAccounttotalotherfees: TFloatField;
    tblMainConsumerAccountpaymentduedate: TWideMemoField;
    tblMainConsumerAccountpaymentdateafterdue: TWideMemoField;
    tblMainConsumerAccountdisconnectiondate: TWideMemoField;
    tblMainConsumerAccountreadingtime: TWideMemoField;
    tblMainConsumerAccountmeterreadername: TWideMemoField;
    tblMainConsumerAccountnumberofreadingretry: TIntegerField;
    tblMainConsumerAccountnumberofbillprinted: TIntegerField;
    tblMainConsumerAccountnumberofsmssent: TIntegerField;
    tblMainConsumerAccountdateuploaded: TWideMemoField;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn4: TBitBtn;
    qryProfile: TFDQuery;
    qryProfileacct_no: TMemoField;
    qryProfileApplicant: TMemoField;
    qryProfileSerial_no: TMemoField;
    qryProfileType_connection: TMemoField;
    qryProfileAddress_brgy: TMemoField;
    qryProfileBrand: TMemoField;
    qryProfileMeterNo: TMemoField;
    qryProfileIsSenior: TMemoField;
    qryLedgerLast: TFDQuery;
    Memo1: TMemo;
    qryLedgerAverage: TFDQuery;
    qryLedgerOtherFee: TFDQuery;
    qryLedgerArrears: TFDQuery;
    qryLedgerOtherFeeinstallmentValue: TFloatField;
    qryLedgerLastreading_date: TMemoField;
    qryLedgerLastmeter_reading: TMemoField;
    qryLedgerArrearsArrear_total: TFloatField;
    qryLedgerAverageAverageCubic: TFloatField;
    vtConsumerAccountMLP: TCurrencyField;
    vtConsumerAccountMeterFee: TCurrencyField;
    qryLedgerLastremarks: TMemoField;
    DBLookupComboBox3: TDBLookupComboBox;
    vtPwd: TVirtualTable;
    vtPwdid: TIntegerField;
    vtPwdpwdvalue: TStringField;
    DataSource4: TDataSource;
    qryUpdateConsumerAccountispwd: TIntegerField;
    RadioButton3: TRadioButton;
    Shape9: TShape;
    GroupBox3: TGroupBox;
    RzComboBox1: TRzComboBox;
    vtRecordToUpdateAll: TVirtualTable;
    vtRecordToUpdateAllAccounNumber: TStringField;
    qryConsumerAccountispwd: TIntegerField;
    qryDeleteConsumer: TFDQuery;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Function GetRowCountExcel(ACounter:Integer):Integer;
    Function ReturnZero(VarString:string):String;
    Function ReturnBlankSpace(VarString:string):String;
    function GetPath(ValFieldName: String): String;
    Procedure LoadRoute();
    function getSeniorCitizenFromMainDB(AAccountNo:String):Integer;
    function getBillNumberFromMainDB(AAccountNo:String):Integer;
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure InsertConsumerAccount();
    procedure InsertVirtualConsumerAccount();
    procedure OpenDataset(ADataSet:TDataSet);
    function GetBillNumber(AAccountNumber:String):Boolean;
    function ComputePreviousReadingDate(APRevDate : String):String;
    Function GetProperData(AData1,AData2:String;ABoolean:Boolean):String;
    procedure FilterConsumeraccount(AString:String);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1ColExit(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure qryUpdateConsumerAccountBeforePost(DataSet: TDataSet);
    procedure dsOpen(ADataSet:TDataSet);
    function dsOpenParam(AFdQ: TFDQuery;Astr1,Astr2,Astr3,Astr4,Astr5:String):Currency ;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    Function GetMYSQLRouteAddress(ListAddress :String) :String;
    Function ConsToLedAcc(AccountNo:String):String;
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RzComboBox1Change(Sender: TObject);
    procedure DBGridEh1SelectionChanged(Sender: TObject);
    //function LookFor



  private
    { Private declarations }
  public
    { Public declarations }
    ValueToPostAllSelectedData:Integer;

  end;

var
  GenerateForm: TGenerateForm;
  LineNumber, LCID,ARouteCode:  integer;
  Excel : Variant;
  LocationAvailable:String;
  RouteAddressId : String;
  TDBAddress : array[1..9] of string = ('brgy_2_2','brgy_4_3','brgy_4_2','brgy_5','brgy_4_1','brgy_2_1','brgy_3','brgy_2_3','brgy_1');
  TListAddress : array[1..9] of String = ('Binanuahan','Biriran','Catanagan','Cogon','Embarcadero','North Poblacion','South Poblacion','Taboc','Tughan');
  LedgerQuery,AverageQuery,ArrearsQuery,OtherFeeQuery : String;
  TotalAve:Currency;

implementation
Uses GenerateDataModuleUnit,SQLiteFileUtilUnit,MainDataModuleUnit,CreateScheduleDataModuleUnit;

{$R *.dfm}

procedure TGenerateForm.BitBtn1Click(Sender: TObject);
var
 i,j : integer;
 LineString,ABillMonth,GotoMainDB :String;
 xlDown:Integer;
 FileText : TextFile;
 Column1,Column2,Column3,Column4,Column5,
 Column6,Column7,Column8,Column9,Column10,
 Column11,Column12,Column13,Column14,Column15,Cell_Route,Cell_BillMonth:String;
 CheckIfValid:Boolean;
begin
  //if LocationAvailable = 'Nothing' then begin
    RzBitBtn1Click(Sender);
  //end;
  CheckIfValid := False;
  ABillMonth := Edit1.text;
  GotoMainDB := ExtractFilePath(Application.ExeName) + 'JWS_MAINDATABASE\'+ 'jws_'+ ABillMonth.SubString(2,4)+'.db';
  xlDown:=-4121;
  //TSQLiteFileUtil.CreateTextFile('C:\Test\JWS_Uploads.txt');

  //AssignFile(FileText,'C:\Test\JWS_Uploads.txt');
  //ReWrite(FileText);
  Cell_Route := Excel.Range['A6', 'A6'];
  Cell_BillMonth := Excel.Range['D6', 'D6'];

  //if not UpperCase(Cell_Route).Contains(UpperCase(Edit2.Text))  then begin
  //  MessageDlg('Not Compatible Route '+ #13#10 +'Please Make Sure you Selected the Right Routes to Upload.',mtError,[mbClose],0);
  //  Excel.WorkBooks.Close;
  //  Excel.DisplayAlerts := True;
  //  Excel.Quit;
  //  Excel := Unassigned;
  //  Exit;
  //end;

  //if not Cell_BillMonth.Contains(ABillMonth.SubString(2,4)) then begin
  //  MessageDlg('Not Compatible Bill Month '+ #13#10 +'Please Make Sure you Selected the Right BillMonth to Upload.',mtError,[mbClose],0);
  //  Excel.WorkBooks.Close;
  //  Excel.DisplayAlerts := True;
  //  Excel.Quit;
  //  Excel := Unassigned;
  //  Exit;
  //end;


  //CloseFile(FileText);

  qryConsumerAccount.Close;
  qryConsumerAccount.ParamByName('ARouteAddress').AsString := Trim(Edit2.Text);
  //qryConsumerAccount.ParamByName('ABillMonth').AsString := Trim(ABillMonth);
  qryConsumerAccount.Open();
  qryConsumerAccount.First;

  if not qryConsumerAccount.IsEmpty then begin
    MainDataModule.SQLiteJWSMainDatabaseConn.Connected := False;
    if not FileExists(GotoMainDB) then begin
      TSQLiteFileUtil.CreateSQLiteMainDB(ExtractFilePath(Application.ExeName),GetPath('default_location_path_sqlite_from'),Edit1.Text);
    end;
    MainDataModule.SQLiteJWSMainDatabaseConn.Params.Database := GotoMainDB;
    MainDataModule.SQLiteJWSMainDatabaseConn.Connected := True;
    OpenDataset(tblMainConsumerAccount);
    while not qryConsumerAccount.EOF do begin
      InsertConsumerAccount();
      qryConsumerAccount.Next;
    end;
  end else begin
    MainDataModule.SQLiteJWSMainDatabaseConn.Connected := False;
    if not FileExists(GotoMainDB) then begin
      TSQLiteFileUtil.CreateSQLiteMainDB(ExtractFilePath(Application.ExeName),GetPath('default_location_path_sqlite_from'),Edit1.Text);
    end;
    MainDataModule.SQLiteJWSMainDatabaseConn.Params.Database := GotoMainDB;
    MainDataModule.SQLiteJWSMainDatabaseConn.Connected := True;
    OpenDataset(tblMainConsumerAccount);
  end;

     vtConsumerAccount.Clear;
     vtConsumerAccount.Close;
     vtConsumerAccount.Open;
     vtConsumerAccount.First;
     For i:=9 to GetRowCountExcel(5000) do begin
      LineNumber := i;
      LineString := inttoStr(i);
      CheckIfValid := GetBillNumber(ReturnBlankSpace(Excel.Range['B'+ LineString, 'B' + LineString]));
      Column1 := ReturnBlankSpace(Excel.Range['A'+ LineString, 'A' + LineString]);      // NO
      Column2 :=          ReturnBlankSpace(Excel.Range['B'+ LineString, 'B' + LineString]);  // Account No.
      Column3 :=          ReturnBlankSpace(Excel.Range['C'+ LineString, 'C' + LineString]);      // Name




          vtConsumerAccount.Append;
          vtConsumerAccountaccountno.AsString := Column2;
          vtConsumerAccountaccountname.AsString := Column3;
          vtConsumerAccountroutesequence.AsInteger := (i-8);
          vtConsumerAccountroutecode.AsInteger := StrToInt(GetProperData(qryGetBillNumberroutecode.AsString,IntToStr(ARouteCode),CheckIfValid));
          vtConsumerAccountrouteaddress.AsString := Edit2.Text;
          vtConsumerAccountratecode.AsInteger := StrToInt(GetProperData(qryGetBillNumberratecode.AsString,'12',CheckIfValid));
          vtConsumerAccountconnectiontype.AsString := GetProperData(qryGetBillNumberconnectiontype.AsString,'RESIDENTIAL',CheckIfValid);
          vtConsumerAccountconnectionstatus.AsString := GetProperData(qryGetBillNumberConnectionStatus.AsString,'ACTIVE',CheckIfValid);
          vtConsumerAccountnewconnectionstatus.AsString := '';
          vtConsumerAccountisseniorcitizen.AsInteger := getSeniorCitizenFromMainDB(Trim(Column2));
          vtConsumerAccountmobilenumber.AsString := '';
          vtConsumerAccountmeterbrand.AsString := GetProperData(qryGetBillNumbermeterbrand.AsString,'None',CheckIfValid);
          vtConsumerAccountmeterserialno.AsString := ReturnBlankSpace(Excel.Range['D'+ LineString, 'D' + LineString]);      // Meter No.
          vtConsumerAccountbillmonth.AsString := ABillMonth;
          vtConsumerAccountbillnumber.AsInteger := StrToInt(GetProperData(IntToStr(qryGetBillNumberbillnumber.AsInteger+1),'1',CheckIfValid));
          vtConsumerAccountpreviousreading.AsCurrency := StrToCurr(ReturnZero(Excel.Range['F'+ LineString, 'F' + LineString]));      // Current
          vtConsumerAccountpreviousreadingdate.AsString := ComputePreviousReadingDate(qryGetBillNumberpresentreadingdate.AsString);
          vtConsumerAccountpresentreading.AsCurrency := 0;
          vtConsumerAccountpresentreadingdate.AsString := '';
          vtConsumerAccountaverageconsumption.AsCurrency :=  0;
          vtConsumerAccountcurrentconsumption.AsCurrency :=  0;      // Cubic Used
          vtConsumerAccounttotalconsumption.AsCurrency := 0 ;
          vtConsumerAccountoldmeterconsumption.AsCurrency := 0;
          vtConsumerAccountmeterfindings.AsString := 'NONE';
          vtConsumerAccountreadingremarks.AsString := 'NONE';
          vtConsumerAccountcurrentamountdue.AsCurrency := 0;

          vtConsumerAccounttotalamountdue.AsCurrency := 0;
          vtConsumerAccounttotalamountafterduedate.AsCurrency := 0;
          vtConsumerAccountdiscountamount.AsCurrency := 0;
          vtConsumerAccountpenaltyamount.AsCurrency := 0;
          vtConsumerAccounttotalbillarrears.AsCurrency := StrToCurr(ReturnZero(Excel.Range['K'+ LineString, 'K' + LineString]));
          vtConsumerAccounttotalotherfees.AsCurrency := StrToCurr(ReturnZero(Excel.Range['J'+ LineString, 'J' + LineString]));
          vtConsumerAccountpaymentduedate.AsString := '';
          vtConsumerAccountpaymentdateafterdue.AsString :='';
          vtConsumerAccountdisconnectiondate.AsString := '';
          vtConsumerAccountreadingtime.AsString := '' ;
          vtConsumerAccountmeterreadername.AsString :='';
          vtConsumerAccountnumberofreadingretry.AsInteger :=  0;
          vtConsumerAccountnumberofbillprinted.AsInteger := 0;
          vtConsumerAccountnumberofsmssent.AsInteger := 0;
          vtConsumerAccountdateuploaded.AsString := '';
          vtConsumerAccount.Post;
     end;

    vtConsumerAccount.First;
    while not vtConsumerAccount.EOF do begin
      InsertVirtualConsumerAccount ;
      vtConsumerAccount.Next;
    end;

    FilterConsumeraccount(Trim(Edit2.Text));


    //messagedlg('I think BillMonth is Not Right',mtInformation,[mbClose],0);
    Excel.WorkBooks.Close;
    Excel.DisplayAlerts := True;
    Excel.Quit;
    Excel := Unassigned;
    LocationAvailable := 'Nothing';
end;

procedure TGenerateForm.BitBtn2Click(Sender: TObject);
begin
  vtRecordToUpdateAll.First;
  while not vtRecordToUpdateAll.EOF do begin
    if qryUpdateConsumerAccount.Locate('AccountNo',vtRecordToUpdateAllAccounNumber.AsString,[]) then begin
      qryUpdateConsumerAccount.Edit;
      if RadioButton1.Checked then begin
        qryUpdateConsumerAccountRateCode.AsInteger := ValueToPostAllSelectedData;
      end;
      if RadioButton2.Checked then begin
        qryUpdateConsumerAccountisseniorcitizen.AsInteger := ValueToPostAllSelectedData;
      end;
      if RadioButton3.Checked then begin
       qryUpdateConsumerAccountIsPwd.AsInteger := ValueToPostAllSelectedData;
      end;
      qryUpdateConsumerAccount.Post;
    end;

    vtRecordToUpdateAll.NExt;
  end;

end;

procedure TGenerateForm.BitBtn3Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TGenerateForm.BitBtn4Click(Sender: TObject);
Var
  LedAcc:String;
  TotalOtherFee,MeterFee,MLP:Currency;
  I:Integer;
  CheckIfValid:Boolean;
begin
  I:=0;
  CheckIfValid := False;
  vtConsumerAccount.Clear;
  vtConsumerAccount.Close;
  vtConsumerAccount.Open;
  vtConsumerAccount.First;
  qryProfile.Close;
  qryProfile.ParamByName('ARouteAddress').AsString := GetMYSQLRouteAddress(Edit2.Text);
  qryProfile.Open();
  qryProfile.First();

  while not qryProfile.EOF do begin
    

    TotalAve := 0;
    I:=I+1;
    CheckIfValid := GetBillNumber(ReturnBlankSpace(qryProfileAcct_no.AsString));
    LedAcc := 'ldg_'+ConsToLedAcc(qryProfileacct_no.AsString);
    LedgerQuery := ReplaceStr('Select * from :ALA ORDER BY reading_date Desc Limit 1',':ALA',LedAcc);
    AverageQuery := ReplaceStr('SELECT sum(cu_used) as AverageCubic FROM :ALA where (reading_date <= (select max(reading_date) from :ALA)) and (reading_date >= (select DATE(max(reading_date) - INTERVAL 2 MONTH) from :ALA)) ORDER BY reading_date Desc',':ALA',LedAcc);
    ArrearsQuery := ReplaceStr('SELECT sum(total) as Arrear_total FROM :ALA where not OR_num <> '' and not OR_date <> ''',':ALA',LedAcc);
     try

    qryLedgerLast.Open(LedgerQuery);
    qryLedgerAverage.Open(AverageQuery);
    qryLedgerArrears.Open(ArrearsQuery);
    //IF UpperCase(qryLedgerLastremarks.AsString).Contains('PL') then begin
    //  showMessage('PL');
    //end else IF UpperCase(qryLedgerLastremarks.AsString).Contains('TPL') then begin
    //  showMessage('TPL');
    //end else
    if NOT (UpperCase(qryLedgerLastremarks.AsString).Contains('PL')) AND NOT (UpperCase(qryLedgerLastremarks.AsString).Contains('TPL')) then begin
      //MeterFee := dsOpenParam(qryLedgerOtherFee,'AAccountNumber',qryProfileacct_no.AsString,'AAddons','met_fee','installmentValue');
      //MLP := dsOpenParam(qryLedgerOtherFee,'AAccountNumber',qryProfileacct_no.AsString,'AAddons','MLP','installmentValue');
      //TotalOtherFee := MLP+MeterFee;

      MeterFee := 0;
      MLP := 0;
      TotalOtherFee := MLP+MeterFee;


      vtConsumerAccount.Append;
      vtConsumerAccountaccountno.AsString := qryProfileacct_no.AsString;
      vtConsumerAccountaccountname.AsString := qryProfileApplicant.AsString;
      vtConsumerAccountroutesequence.AsInteger := I;
      vtConsumerAccountroutecode.AsInteger := StrToInt(GetProperData(qryGetBillNumberroutecode.AsString,IntToStr(ARouteCode),CheckIfValid));
      vtConsumerAccountrouteaddress.AsString := Trim(Edit2.Text);

      if qryProfileType_connection.AsInteger = 1 then begin
        vtConsumerAccountratecode.AsInteger := StrToInt(GetProperData(qryGetBillNumberratecode.AsString,'12',CheckIfValid));
        vtConsumerAccountconnectiontype.AsString := GetProperData(qryGetBillNumberconnectiontype.AsString,'RESIDENTIAL',CheckIfValid);
      end else if qryProfileType_connection.AsInteger = 2 then begin
        vtConsumerAccountratecode.AsInteger := StrToInt(GetProperData(qryGetBillNumberratecode.AsString,'14',CheckIfValid));
        vtConsumerAccountconnectiontype.AsString := GetProperData(qryGetBillNumberconnectiontype.AsString,'COMMERCIAL',CheckIfValid);
      end;
      vtConsumerAccountconnectionstatus.AsString := GetProperData(qryGetBillNumberConnectionStatus.AsString,'ACTIVE',CheckIfValid);
      vtConsumerAccountnewconnectionstatus.AsString := '';
      vtConsumerAccountisseniorcitizen.AsInteger := StrToInt(ReturnZero(qryProfileIsSenior.AsString));
      vtConsumerAccountmobilenumber.AsString := '';
      vtConsumerAccountmeterbrand.AsString := GetProperData(qryGetBillNumbermeterbrand.AsString,qryProfileBrand.AsString,CheckIfValid);
      vtConsumerAccountmeterserialno.AsString := qryProfileMeterNo.AsString;      // Meter No.
      vtConsumerAccountbillmonth.AsString := Trim(Edit1.Text);
      vtConsumerAccountbillnumber.AsInteger := StrToInt(GetProperData(IntToStr(qryGetBillNumberbillnumber.AsInteger+1),'1',CheckIfValid));
      vtConsumerAccountpreviousreading.AsCurrency := StrToCurr(qryLedgerLastmeter_reading.AsString);      // Current
      vtConsumerAccountpreviousreadingdate.AsString := qryLedgerLastreading_date.AsString;
      vtConsumerAccountpresentreading.AsCurrency := 0;
      vtConsumerAccountpresentreadingdate.AsString := '';
      vtConsumerAccountaverageconsumption.AsCurrency :=  qryLedgerAverageAverageCubic.AsCurrency;
      vtConsumerAccountcurrentconsumption.AsCurrency :=  0;      // Cubic Used
      vtConsumerAccounttotalconsumption.AsCurrency := 0 ;
      vtConsumerAccountoldmeterconsumption.AsCurrency := 0;
      vtConsumerAccountmeterfindings.AsString := 'NONE';
      vtConsumerAccountreadingremarks.AsString := 'NONE';
      vtConsumerAccountcurrentamountdue.AsCurrency := 0;

      vtConsumerAccounttotalamountdue.AsCurrency := 0;
      vtConsumerAccounttotalamountafterduedate.AsCurrency := 0;
      vtConsumerAccountdiscountamount.AsCurrency := 0;
      vtConsumerAccountpenaltyamount.AsCurrency := 0;
      vtConsumerAccounttotalbillarrears.AsCurrency := qryLedgerArrearsArrear_total.AsCurrency;
      vtConsumerAccounttotalotherfees.AsCurrency := TotalOtherFee;
      //vtConsumerAccounttotalMLP.AsCurrency := MLP;

      //vtConsumerAccounttotalmeterfee.AsCurrency := MeterFee;


      vtConsumerAccountpaymentduedate.AsString := '';
      vtConsumerAccountpaymentdateafterdue.AsString :='';
      vtConsumerAccountdisconnectiondate.AsString := '';
      vtConsumerAccountreadingtime.AsString := '' ;
      vtConsumerAccountmeterreadername.AsString :='';
      vtConsumerAccountnumberofreadingretry.AsInteger :=  0;
      vtConsumerAccountnumberofbillprinted.AsInteger := 0;
      vtConsumerAccountnumberofsmssent.AsInteger := 0;
      vtConsumerAccountdateuploaded.AsString := '';
      vtConsumerAccount.Post;
    end;




    except on E: Exception do
    showmessage(LedAcc)
   end;
    qryProfile.Next;
  end;

   vtConsumerAccount.First;
    while not vtConsumerAccount.EOF do begin
      InsertVirtualConsumerAccount ;
      vtConsumerAccount.Next;
    end;

    FilterConsumeraccount(Trim(Edit2.Text));
   MessageDlg('Getting Data Successfull', mtInformation,[mbClose],0);
end;

procedure TGenerateForm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    RadioButton1.Enabled := True;
    RadioButton2.Enabled := True;
    RadioButton3.Enabled := True;
    BitBtn2.Enabled := True;
    DBGridEh1.Options := DBGridEh1.Options + [dgMultiSelect] + [dgRowSelect] + [dgAlwaysShowSelection] + [dgIndicator];

  end else begin
    RadioButton1.Enabled := False;
    RadioButton2.Enabled := False;
    RadioButton3.Enabled := False;
    BitBtn2.Enabled := False;
    DBGridEh1.Options := DBGridEh1.Options - [dgMultiSelect] - [dgRowSelect] - [dgAlwaysShowSelection] - [dgIndicator];
  end;
  //DBLookupComboBox1.Visible := False;
  //DBLookupComboBox2.Visible := False;
end;

procedure TGenerateForm.ComboBox1Change(Sender: TObject);
begin
 Edit2.Text := Combobox1.Text;

  if qryRouteAddress.Locate('RouteAddress',Combobox1.Text,[]) then begin
    RouteAddressId := qryRouteAddressid.AsString;
    ARouteCode := qryRouteAddressroutecode.AsInteger;
  end else begin
    RouteAddressId := '0';
    ARouteCode := 0;
  end;

end;

procedure TGenerateForm.ComboBox1Click(Sender: TObject);
begin
  if Edit1.Focused then begin
    Shape1.Pen.Color := clBlue;
    Shape2.Pen.Color := cl3DDkShadow;
  end else if Combobox1.Focused then begin
    Shape1.Pen.Color := cl3DDkShadow;
    Shape2.Pen.Color := clBlue;
  end;
end;


function TGenerateForm.ComputePreviousReadingDate(APRevDate: String): String;
var
  ResPrevDate:String;
  AMonth,AYear,ADay:String;
begin
  ADay:= '24';
  AMonth := IntToStr(MonthOf(Now()));
  AYear := IntToStr(YearOf(Now()));
  if Length(APRevDate)>=0 then begin
    if StrToInt(AMonth) = 1 then begin
      ResPrevDate := '12/'+ADay+'/'+IntToStr(StrToInt(AYear)-1);
    end else begin
      ResPrevDate := IntToStr(StrToInt(AMonth)-1)+'/'+ADay+'/'+AYear;
    end;
  end else begin
    AMonth := SplitString(APRevDate,'/')[0];
    AYear := SplitString(APRevDate,'/')[2];
    if StrToInt(AMonth) = 1 then begin
      ResPrevDate := '12/'+ADay+'/'+IntToStr(StrToInt(AYear)-1);
    end else begin
      ResPrevDate := IntToStr(StrToInt(AMonth)-1)+'/'+ADay+'/'+AYear;
    end;
  end;
  Result := ResPrevDate;
end;

function TGenerateForm.ConsToLedAcc(AccountNo: String): String;
begin
  Result := Replacestr(AccountNo,'-','_');
end;

procedure TGenerateForm.DBGridEh1ColExit(Sender: TObject);
begin
  if DBGridEh1.SelectedField.FieldName = DBLookupComboBox1.DataField then
    DBLookupComboBox1.Visible := False;
  if DBGridEh1.SelectedField.FieldName = DBLookupComboBox2.DataField then
    DBLookupComboBox2.Visible := False;

  if DBGridEh1.SelectedField.FieldName = DBLookupComboBox3.DataField then
    DBLookupComboBox3.Visible := False;


end;

procedure TGenerateForm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (gdFocused in State) then begin
   if (Column.Field.FieldName = DBLookupComboBox1.DataField) then
   with DBLookupComboBox1 do
   begin
     Left := Rect.Left + DBGridEh1.Left + 2;
     Top := Rect.Top + DBGridEh1.Top + 2;
     Width := Rect.Right - Rect.Left;
     Width := Rect.Right - Rect.Left;
     Height := Rect.Bottom - Rect.Top;
     Visible := True;
   end;
   if (Column.Field.FieldName = DBLookupComboBox2.DataField) then
   with DBLookupComboBox2 do
   begin
     Left := Rect.Left + DBGridEh1.Left + 2;
     Top := Rect.Top + DBGridEh1.Top + 2;
     Width := Rect.Right - Rect.Left;
     Height := Rect.Bottom - Rect.Top;
     Visible := True;
   end;

   if (Column.Field.FieldName = DBLookupComboBox3.DataField) then
   with DBLookupComboBox3 do
   begin
     Left := Rect.Left + DBGridEh1.Left + 2;
     Top := Rect.Top + DBGridEh1.Top + 2;
     Width := Rect.Right - Rect.Left;
     Height := Rect.Bottom - Rect.Top;
     Visible := True;
   end;

 end
end;

procedure TGenerateForm.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then Exit;
   if (DBGridEh1.SelectedField.FieldName = DBLookupComboBox1.DataField) then begin
     DBLookupComboBox1.SetFocus;
     SendMessage(DBLookupComboBox1.Handle, WM_Char, word(Key), 0);
   end;

   if (DBGridEh1.SelectedField.FieldName = DBLookupComboBox2.DataField) then begin
     DBLookupComboBox2.SetFocus;
     SendMessage(DBLookupComboBox2.Handle, WM_Char, word(Key), 0);
   end;

   if (DBGridEh1.SelectedField.FieldName = DBLookupComboBox3.DataField) then begin
     DBLookupComboBox3.SetFocus;
     SendMessage(DBLookupComboBox3.Handle, WM_Char, word(Key), 0);
   end;

   if (DBGridEh1.SelectedField.FieldName = 'TotalBillArrears') or (DBGridEh1.SelectedField.FieldName = 'TotalOtherFees') then begin
      if Key.IsLetter  then begin
        Key := #0;
      end;
   end;

   if (DBGridEh1.SelectedField.FieldName = 'AccountNo') or (DBGridEh1.SelectedField.FieldName = 'AccountName') then begin
      Key := #0;
   end;


end;

procedure TGenerateForm.DBGridEh1SelectionChanged(Sender: TObject);
Var
i:integer;
begin
  with qryUpdateConsumerAccount do begin
  vtRecordToUpdateAll.Clear;
    for i := 0 to DBGridEh1.SelectedRows.Count-1 do begin
      GotoBookmark(DBGridEh1.SelectedRows.Items[i]);
      vtRecordToUpdateAll.Append;
      vtRecordToUpdateAllAccounNumber.AsString := qryUpdateConsumerAccountAccountNo.AsString;
      vtRecordToUpdateAll.Post;
    end;
  end;
end;

procedure TGenerateForm.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
    if (DBGridEh1.SelectedField.FieldName = 'ratecode') or  (DBGridEh1.SelectedField.FieldName = 'isseniorcitizen' ) or (DBGridEh1.SelectedField.FieldName = 'ispwd' ) then begin
      DBLookupComboBox1.Visible := False;
      DBGridEh1.Col := DBGridEh1.Col + 1;
    end;
  end;
end;

procedure TGenerateForm.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
    if (DBGridEh1.SelectedField.FieldName = 'ratecode') or  (DBGridEh1.SelectedField.FieldName = 'isseniorcitizen' ) or (DBGridEh1.SelectedField.FieldName = 'ispwd' ) then begin
      DBLookupComboBox2.Visible := False;
      DBGridEh1.Col := DBGridEh1.Col + 1;
    end;
  end;
end;

procedure TGenerateForm.DBLookupComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
    if (DBGridEh1.SelectedField.FieldName = 'ratecode') or  (DBGridEh1.SelectedField.FieldName = 'isseniorcitizen' ) or (DBGridEh1.SelectedField.FieldName = 'ispwd' ) then begin
      DBLookupComboBox3.Visible := False;
      DBGridEh1.Col := DBGridEh1.Col + 1;
    end;
  end;
end;

procedure TGenerateForm.dsOpen(ADataSet: TDataSet);
begin
  ADataSet.Close;
  ADataSet.Open;
  ADataSet.First;
end;

function TGenerateForm.dsOpenParam(AFdQ: TFDQuery;Astr1,Astr2,Astr3,Astr4,Astr5:String):Currency;
begin
  AFdQ.Close;
  AFdQ.ParamByName(Astr1).AsString := Astr2;
  AFdQ.ParamByName(Astr3).AsString := Astr4;
  AFdQ.Open;
  AFdQ.First;
  Result := AFdQ.FieldByName(Astr5).AsCurrency;
end;

procedure TGenerateForm.Edit1Click(Sender: TObject);
begin
  if Edit1.Focused then begin
    Shape1.Pen.Color := clBlue;
    Shape2.Pen.Color := cl3DDkShadow;
  end else if Combobox1.Focused then begin
    Shape1.Pen.Color := cl3DDkShadow;
    Shape2.Pen.Color := clBlue;
  end;

end;

procedure TGenerateForm.Edit2Change(Sender: TObject);
begin
  Shape1.Pen.Color := cl3DDkShadow;
  Shape2.Pen.Color := clBlue;
end;

procedure TGenerateForm.FilterConsumeraccount(AString: String);
begin
  qryUpdateConsumerAccount.Close;
  qryUpdateConsumerAccount.ParamByName('ARouteAddress').AsString := AString;
  qryUpdateConsumerAccount.Open();
  qryUpdateConsumerAccount.First;
end;

procedure TGenerateForm.FormCreate(Sender: TObject);
begin
   with DBLookupComboBox1 do begin
     DataSource := DataSource1; // -> AdoTable1 -> DBGrid1
     ListSource := DataSource2;
     DataField := 'ratecode'; // from AdoTable1 - displayed in the DBGrid
     KeyField := 'ratecode';
     ListField := 'connectiontype';
     Font.Size := DBGridEh1.Font.Size;
     //Visible := False;
   end;

   with DBLookupComboBox2 do begin
     DataSource := DataSource1; // -> AdoTable1 -> DBGrid1
     ListSource := DataSource3;
     DataField := 'isseniorcitizen'; // from AdoTable1 - displayed in the DBGrid
     KeyField := 'SCCode';
     ListField := 'SCValue';
     Font.Size := DBGridEh1.Font.Size;
     //Visible := False;
   end;

   with DBLookupComboBox3 do begin
     DataSource := DataSource1; // -> AdoTable1 -> DBGrid1
     ListSource := DataSource4;
     DataField := 'ispwd'; // from AdoTable1 - displayed in the DBGrid
     KeyField := 'id';
     ListField := 'pwdValue';
     Font.Size := DBGridEh1.Font.Size;
     //Visible := False;
   end;

   DataSource4.DataSet := vtPwd;
   DataSource3.DataSet := vtSeniorCitizen;
   DataSource2.DataSet := qryWaterRate;
   //MainDataModule.SqlDesktopConnect(True);

end;

procedure TGenerateForm.FormShow(Sender: TObject);
begin
  MainDataModule.SqlDesktopConnect(True);
   dsOpen(qryWaterRate);
   dsOpen(tblConsumerAccount);
   dsOpen(tblMainConsumerAccount);
   dsOpen(qryRouteAddress);
   dsOpen(vtConsumerAccount);
   dsOpen(vtFields);
   dsOpen(qryRouteAddress);
  qryWaterRate.Open;
   vtSeniorCitizen.Open;
   vtRecordToUpdateAll.Open;
   vtPwd.Open;
  LocationAvailable := 'Nothing';
  LoadRoute();
  ValueToPostAllSelectedData := -1;
end;

function TGenerateForm.GetBillNumber(AAccountNumber: String):Boolean;
Var
  AResult:Boolean;
begin
 qryGetBillNumber.Close;
 qryGetBillNumber.ParamByName('AAccountNumber').AsString := AAccountNumber;
 qryGetBillNumber.Open();
 if not qryGetBillNumber.IsEmpty then begin
   AResult := True;
 end else begin
   AResult := False;
 end;
 Result := AResult;
end;

function TGenerateForm.getBillNumberFromMainDB(AAccountNo: String): Integer;
begin
 //asdas
end;

function TGenerateForm.GetMYSQLRouteAddress(ListAddress: String): String;
Var i :Integer;
  ValResult : String;
begin
  ValResult:='';
  for I := 1 to Length(TDBAddress) do begin
    if ListAddress.Contains(TListAddress[I]) then begin
      ValResult := TDBAddress[I];
      Break;
    end else begin
      ValResult := '';
    end;
  end;
  Result := ValResult;
end;

function TGenerateForm.GetPath(ValFieldName: String): String;
begin
  with CreateScheduleDataModule do begin
  tblSettings.Close;
  tblSettings.Open();
    if tblSettings.Locate('SettingsName',ValFieldName,[]) then begin
      result := tblSettingssettingsvalue.AsString;
    end;
  end;
end;

function TGenerateForm.GetProperData(AData1, AData2: String;
  ABoolean: Boolean): String;
  Var
  AResult :String;
begin
  if ABoolean then begin
    AResult := AData1;
  end else begin
    AResult := AData2;
  end;
  Result := AResult;
end;

function TGenerateForm.GetRowCountExcel(ACounter:Integer): Integer;
Var AResult,i,z:Integer;
  CellValue:String;
begin
  z := ACounter;
  AResult := 0;
  //AExcel.
  i:=0;
  for i := 9 to z do begin
    CellValue := Excel.Range['A'+IntToStr(i),'A'+IntToStr(i)];
    if CellValue = EmptyStr then begin
      AResult := i;
      Break;
    end;
  end;
  Result := AResult-1;
end;

function TGenerateForm.getSeniorCitizenFromMainDB(AAccountNo:string): Integer;

begin
 if tblMainConsumerAccount.Locate('AccountNo',AAccountNo,[]) then begin
   Result := tblMainConsumerAccountisseniorcitizen.AsInteger;
 end else begin
   Result := 0;
 end;

end;

procedure TGenerateForm.InsertConsumerAccount();
begin
  tblMainConsumerAccount.First;
  if tblMainConsumerAccount.Locate('AccountNo;BillMonth',VarArrayOf([qryConsumerAccountaccountno.AsString,qryConsumerAccountbillmonth.AsString]),[]) then begin
    tblMainConsumerAccount.Edit;
    //tblMainConsumerAccountid.AsInteger := qryConsumerAccountid.AsInteger;
  end else begin
    tblMainConsumerAccount.Append;
  end;

    tblMainConsumerAccountaccountno.AsString :=	qryConsumerAccountaccountno.AsString ;
    tblMainConsumerAccountaccountname.AsString := qryConsumerAccountaccountname.AsString ;
    tblMainConsumerAccountroutesequence.AsInteger := qryConsumerAccountroutesequence.AsInteger ;
    tblMainConsumerAccountroutecode.AsInteger := qryConsumerAccountroutecode.AsInteger ;
    tblMainConsumerAccountrouteaddress.AsString := qryConsumerAccountrouteaddress.AsString ;
    tblMainConsumerAccountratecode.AsInteger := qryConsumerAccountratecode.AsInteger ;
    tblMainConsumerAccountconnectiontype.AsString := qryConsumerAccountconnectiontype.AsString ;
    tblMainConsumerAccountconnectionstatus.AsString := qryConsumerAccountconnectionstatus.AsString ;
    tblMainConsumerAccountnewconnectionstatus.AsString := qryConsumerAccountnewconnectionstatus.AsString ;
    tblMainConsumerAccountisseniorcitizen.AsInteger := qryConsumerAccountisseniorcitizen.AsInteger ;
    tblMainConsumerAccountmobilenumber.AsString := qryConsumerAccountmobilenumber.AsString ;
    tblMainConsumerAccountmeterbrand.AsString := qryConsumerAccountmeterbrand.AsString ;
    tblMainConsumerAccountmeterserialno.AsString := qryConsumerAccountmeterserialno.AsString ;
    tblMainConsumerAccountbillmonth.AsString := qryConsumerAccountbillmonth.AsString ;
    tblMainConsumerAccountbillnumber.AsInteger := qryConsumerAccountbillnumber.AsInteger ;
    tblMainConsumerAccountpreviousreading.AsCurrency := qryConsumerAccountpreviousreading.AsCurrency ;
    tblMainConsumerAccountpreviousreadingdate.AsString := qryConsumerAccountpreviousreadingdate.AsString ;
    tblMainConsumerAccountpresentreading.AsCurrency := qryConsumerAccountpresentreading.AsCurrency ;
    tblMainConsumerAccountpresentreadingdate.AsString := qryConsumerAccountpresentreadingdate.AsString ;
    tblMainConsumerAccountaverageconsumption.AsCurrency := qryConsumerAccountaverageconsumption.AsCurrency ;
    tblMainConsumerAccountcurrentconsumption.AsCurrency := qryConsumerAccountcurrentconsumption.AsCurrency ;
    tblMainConsumerAccounttotalconsumption.AsCurrency := qryConsumerAccounttotalconsumption.AsCurrency ;
    tblMainConsumerAccountoldmeterconsumption.AsCurrency := qryConsumerAccountoldmeterconsumption.AsCurrency ;
    tblMainConsumerAccountmeterfindings.AsString := qryConsumerAccountmeterfindings.AsString ;
    tblMainConsumerAccountreadingremarks.AsString := qryConsumerAccountreadingremarks.AsString ;
    tblMainConsumerAccountcurrentamountdue.AsCurrency := qryConsumerAccountcurrentamountdue.AsCurrency ;
    tblMainConsumerAccounttotalamountdue.AsCurrency := qryConsumerAccounttotalamountdue.AsCurrency ;
    tblMainConsumerAccounttotalamountafterduedate.AsCurrency := qryConsumerAccounttotalamountafterduedate.AsCurrency ;
    tblMainConsumerAccountdiscountamount.AsCurrency := qryConsumerAccountdiscountamount.AsCurrency ;
    tblMainConsumerAccountpenaltyamount.AsCurrency := qryConsumerAccountpenaltyamount.AsCurrency ;
    tblMainConsumerAccounttotalbillarrears.AsCurrency := qryConsumerAccounttotalbillarrears.AsCurrency ;
    tblMainConsumerAccounttotalotherfees.AsCurrency := qryConsumerAccounttotalotherfees.AsCurrency ;
    tblMainConsumerAccountpaymentduedate.AsString := qryConsumerAccountpaymentduedate.AsString ;
    tblMainConsumerAccountpaymentdateafterdue.AsString := qryConsumerAccountpaymentdateafterdue.AsString ;
    tblMainConsumerAccountdisconnectiondate.AsString := qryConsumerAccountdisconnectiondate.AsString ;
    tblMainConsumerAccountreadingtime.AsString := qryConsumerAccountreadingtime.AsString ;
    tblMainConsumerAccountmeterreadername.AsString := qryConsumerAccountmeterreadername.AsString ;
    tblMainConsumerAccountnumberofreadingretry.AsInteger := qryConsumerAccountnumberofreadingretry.AsInteger ;
    tblMainConsumerAccountnumberofbillprinted.AsInteger := qryConsumerAccountnumberofbillprinted.AsInteger ;
    tblMainConsumerAccountnumberofsmssent.AsInteger := qryConsumerAccountnumberofsmssent.AsInteger ;
    tblMainConsumerAccountdateuploaded.AsString := qryConsumerAccountdateuploaded.AsString ;
    tblMainConsumerAccount.Post;


end;

procedure TGenerateForm.InsertVirtualConsumerAccount;
begin
  tblConsumerAccount.First;
  qryDeleteConsumer.Close;
  qryDeleteConsumer.ParamByName('AAccountNumber').AsString := vtConsumerAccountaccountno.AsString;
  qryDeleteConsumer.Execute();

  if tblConsumerAccount.Locate('AccountNo',vtConsumerAccountaccountno.AsString,[]) then begin
    tblConsumerAccount.Edit;
    //tblMainConsumerAccountid.AsInteger := qryConsumerAccountid.AsInteger;
  end else begin
    tblConsumerAccount.Append;
  end;
    tblConsumerAccountaccountno.AsString := vtConsumerAccountaccountno.AsString ;
    tblConsumerAccountaccountname.AsString := vtConsumerAccountaccountname.AsString ;
    tblConsumerAccountroutesequence.AsInteger := vtConsumerAccountroutesequence.AsInteger ;
    tblConsumerAccountroutecode.AsInteger := vtConsumerAccountroutecode.AsInteger ;
    tblConsumerAccountrouteaddress.AsString := vtConsumerAccountrouteaddress.AsString ;
    tblConsumerAccountratecode.AsInteger := vtConsumerAccountratecode.AsInteger ;
    tblConsumerAccountconnectiontype.AsString := vtConsumerAccountconnectiontype.AsString ;
    tblConsumerAccountconnectionstatus.AsString := vtConsumerAccountconnectionstatus.AsString ;
    tblConsumerAccountnewconnectionstatus.AsString := vtConsumerAccountnewconnectionstatus.AsString ;
    tblConsumerAccountisseniorcitizen.AsInteger := vtConsumerAccountisseniorcitizen.AsInteger ;
    tblConsumerAccountmobilenumber.AsString := vtConsumerAccountmobilenumber.AsString ;
    tblConsumerAccountmeterbrand.AsString := vtConsumerAccountmeterbrand.AsString ;
    tblConsumerAccountmeterserialno.AsString := vtConsumerAccountmeterserialno.AsString ;
    tblConsumerAccountbillmonth.AsString := vtConsumerAccountbillmonth.AsString ;
    tblConsumerAccountbillnumber.AsInteger := vtConsumerAccountbillnumber.AsInteger ;
    tblConsumerAccountpreviousreading.AsCurrency := vtConsumerAccountpreviousreading.AsCurrency ;
    tblConsumerAccountpreviousreadingdate.AsString := vtConsumerAccountpreviousreadingdate.AsString ;
    tblConsumerAccountpresentreading.AsCurrency := vtConsumerAccountpresentreading.AsCurrency ;
    tblConsumerAccountpresentreadingdate.AsString := vtConsumerAccountpresentreadingdate.AsString ;
    tblConsumerAccountaverageconsumption.AsCurrency := vtConsumerAccountaverageconsumption.AsCurrency ;
    tblConsumerAccountcurrentconsumption.AsCurrency := vtConsumerAccountcurrentconsumption.AsCurrency ;
    tblConsumerAccounttotalconsumption.AsCurrency := vtConsumerAccounttotalconsumption.AsCurrency ;
    tblConsumerAccountoldmeterconsumption.AsCurrency := vtConsumerAccountoldmeterconsumption.AsCurrency ;
    tblConsumerAccountmeterfindings.AsString := vtConsumerAccountmeterfindings.AsString ;
    tblConsumerAccountreadingremarks.AsString := vtConsumerAccountreadingremarks.AsString ;
    tblConsumerAccountcurrentamountdue.AsCurrency := vtConsumerAccountcurrentamountdue.AsCurrency ;
    tblConsumerAccounttotalamountdue.AsCurrency := vtConsumerAccounttotalamountdue.AsCurrency ;
    tblConsumerAccounttotalamountafterduedate.AsCurrency := vtConsumerAccounttotalamountafterduedate.AsCurrency ;
    tblConsumerAccountdiscountamount.AsCurrency := vtConsumerAccountdiscountamount.AsCurrency ;
    tblConsumerAccountpenaltyamount.AsCurrency := vtConsumerAccountpenaltyamount.AsCurrency ;
    tblConsumerAccounttotalbillarrears.AsCurrency := vtConsumerAccounttotalbillarrears.AsCurrency ;
    tblConsumerAccounttotalotherfees.AsCurrency := vtConsumerAccounttotalotherfees.AsCurrency ;
    tblConsumerAccountpaymentduedate.AsString := vtConsumerAccountpaymentduedate.AsString ;
    tblConsumerAccountpaymentdateafterdue.AsString := vtConsumerAccountpaymentdateafterdue.AsString ;
    tblConsumerAccountdisconnectiondate.AsString := vtConsumerAccountdisconnectiondate.AsString ;
    tblConsumerAccountreadingtime.AsString := vtConsumerAccountreadingtime.AsString ;
    tblConsumerAccountmeterreadername.AsString := vtConsumerAccountmeterreadername.AsString ;
    tblConsumerAccountnumberofreadingretry.AsInteger := vtConsumerAccountnumberofreadingretry.AsInteger ;
    tblConsumerAccountnumberofbillprinted.AsInteger := vtConsumerAccountnumberofbillprinted.AsInteger ;
    tblConsumerAccountnumberofsmssent.AsInteger := vtConsumerAccountnumberofsmssent.AsInteger ;
    tblConsumerAccountdateuploaded.AsString := vtConsumerAccountdateuploaded.AsString ;
    tblConsumerAccount.Post;

end;

procedure TGenerateForm.LoadRoute;
begin
   qryRouteAddress.Close;
   qryRouteAddress.Open;
   qryRouteAddress.First;
   ComboBox1.Items.Clear;
   while not qryRouteAddress.EOF do begin
     ComboBox1.Items.Add(qryRouteAddressROUTEADDRESS.AsString);
     qryRouteAddress.Next;
   end;
end;

procedure TGenerateForm.OpenDataset(ADataSet: TDataSet);
begin
  ADataSet.Close;
  ADataSet.Open;
end;

procedure TGenerateForm.qryUpdateConsumerAccountBeforePost(DataSet: TDataSet);
begin
  if qryWaterRate.Locate('RateCode',DataSet.FieldByName('RateCode').AsString,[]) then begin
    DataSet.FieldByName('ConnectionType').AsString := qryWaterRateConnectionType.AsString;
  end;
end;

function TGenerateForm.ReturnZero(VarString: string): String;
begin
  if VarString = EmptyStr then begin
    Result := '0'
  end else begin
    Result := VarString;
  end;
end;

procedure TGenerateForm.RadioButton1Click(Sender: TObject);
begin
  qryWaterRate.First;
  RzComboBox1.Items.Clear;
  while NOT qryWaterRate.EOF do begin
    RzComboBox1.Items.Add(qryWaterRateConnectionType.ASString);
    RzComboBox1.ItemIndex:=0;
    qryWaterRate.Next;
  end;

  if RadioButton1.Checked then begin
    if qryWaterRate.Locate('ConnectionType',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := qryWaterRateratecode.AsInteger;
    end;

  end;
  if RadioButton2.Checked then begin
    if vtSeniorCitizen.Locate('SCValue',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := vtSeniorCitizenSCCode.AsInteger;
    end;
  end;
  if RadioButton3.Checked then begin
    if vtPwd.Locate('pwdValue',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := vtPwdid.AsInteger;
    end;
  end;
end;

procedure TGenerateForm.RadioButton2Click(Sender: TObject);
begin
  vtSeniorCitizen.First;
  RzComboBox1.Items.Clear;
  while NOT vtSeniorCitizen.EOF do begin
    RzComboBox1.Items.Add(vtSeniorCitizenSCValue.ASString);
    RzComboBox1.ItemIndex:=0;
    vtSeniorCitizen.Next;
  end;

  if RadioButton1.Checked then begin
    if qryWaterRate.Locate('ConnectionType',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := qryWaterRateratecode.AsInteger;
    end;

  end;
  if RadioButton2.Checked then begin
    if vtSeniorCitizen.Locate('SCValue',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := vtSeniorCitizenSCCode.AsInteger;
    end;
  end;
  if RadioButton3.Checked then begin
    if vtPwd.Locate('pwdValue',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := vtPwdid.AsInteger;
    end;
  end;
end;

procedure TGenerateForm.RadioButton3Click(Sender: TObject);
begin
  vtPwd.First;
  RzComboBox1.Items.Clear;
  while NOT vtPwd.EOF do begin
    RzComboBox1.Items.Add(vtPwdpwdvalue.ASString);
    RzComboBox1.ItemIndex:=0;
    vtPwd.Next;
  end;

  if RadioButton1.Checked then begin
    if qryWaterRate.Locate('ConnectionType',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := qryWaterRateratecode.AsInteger;
    end;

  end;
  if RadioButton2.Checked then begin
    if vtSeniorCitizen.Locate('SCValue',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := vtSeniorCitizenSCCode.AsInteger;
    end;
  end;
  if RadioButton3.Checked then begin
    if vtPwd.Locate('pwdValue',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := vtPwdid.AsInteger;
    end;
  end;
end;

function TGenerateForm.ReturnBlankSpace(VarString: string): String;
begin
  if VarString = EmptyStr then begin
    Result := ' '
  end else begin
    Result := VarString;
  end;
end;

procedure TGenerateForm.RzBitBtn1Click(Sender: TObject);
var
  WBk: Variant;
  WS : Variant;
  FileName: OleVariant;
begin
  LCID := GetUserDefaultLCID;
  Excel := CreateOleObject('Excel.Application');//Create an excel instance
  if OpenDialog1.Execute then
  begin
     LCID := GetUserDefaultLCID;
     Excel.visible := true;
     FileName := OpenDialog1.FileName;
     Excel.Visible:=False;
     Excel.Caption:='Sample Data';
     Excel.WorkBooks.Open( FileName, EmptyParam, EmptyParam,
                                    EmptyParam, EmptyParam, EmptyParam,
                                    EmptyParam, EmptyParam, EmptyParam,
                                    EmptyParam, EmptyParam, EmptyParam,
                                    EmptyParam, LCID);

     //WS := Excel.Worksheets.Item['Sheet1'];
     //WS.Activate(LCID);
     LocationAvailable := OpenDialog1.FileName;
   end;  //if
end;

procedure TGenerateForm.RzBitBtn2Click(Sender: TObject);
begin
  if Edit2.Text <> EmptyStr then begin
    FilterConsumeraccount(Trim(Edit2.Text));
  end;
end;

procedure TGenerateForm.RzComboBox1Change(Sender: TObject);
begin
  if RadioButton1.Checked then begin
    if qryWaterRate.Locate('ConnectionType',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := qryWaterRateratecode.AsInteger;
    end;

  end;
  if RadioButton2.Checked then begin
    if vtSeniorCitizen.Locate('SCValue',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := vtSeniorCitizenSCCode.AsInteger;
    end;
  end;
  if RadioButton3.Checked then begin
    if vtPwd.Locate('pwdValue',RzComboBox1.Text,[]) then begin
      ValueToPostAllSelectedData := vtPwdid.AsInteger;
    end;
  end;

end;

end.
