unit ToolsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Gauges, RzButton, Vcl.ComCtrls,System.Strutils, Data.DB, MemDS,
  VirtualTable;

type
  TToolsForm = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    RzBitBtn1: TRzBitBtn;
    Memo1: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    FileOpenDialog1: TFileOpenDialog;
    StatusBar1: TStatusBar;
    RzBitBtn2: TRzBitBtn;
    Panel4: TPanel;
    ListBox1: TListBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Shape3: TShape;
    VirtualTable1: TVirtualTable;
    VirtualTable1id: TAutoIncField;
    VirtualTable1FileName: TStringField;
    VirtualTable1SName: TStringField;
    VirtualTable1SDate: TStringField;
    VirtualTable1FileDate: TDateField;
    VirtualTable1MName: TStringField;
    Memo2: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Shape4: TShape;
    procedure LoadMeterReader();
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    function GetRouteCode(ARouteAddress: String):String;
    function GetMeterReaderID(AMeterReader: String):String;
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure LoadData(APath:String);
    procedure LoadDataMysql(APath:String);
    function ConsToLedAcc(AccountNo: String): String;
  private
    { Private declarations }
  public
    { Public declarations }
    function TruncDecimal(Value:String): String;
    function GetDosOutput(CommandLine: string; Work: string = 'C:\Platform-tools\'): String;
    procedure CheckAndroid(AFilterOut:String);
  end;

var
  ToolsForm: TToolsForm;
  AFileNameUpload,ConStatus,ALocationPath:String;
  AMeterReaderId:String;
  AFromMobile:Integer;

implementation
uses ToolsDataModuleUnit,MainDataModuleUnit,CommandPromtUnit;



{$R *.dfm}

function TToolsForm.GetMeterReaderID(AMeterReader: String): String;
begin
   with ToolsDataModule do begin
    if tblMeterReader.Locate('Name',AMeterReader,[]) then begin
      Result := tblMeterReaderid.AsString;
    end;
  end;
end;

function TToolsForm.GetRouteCode(ARouteAddress: String): String;
begin
  with ToolsDataModule do begin
    if tblRoutes.Locate('RouteAddress',ARouteAddress,[]) then begin
      Result := tblRoutesroutecode.AsString;
    end;
  end;
end;

procedure TToolsForm.BitBtn1Click(Sender: TObject);
Var
  fileNamecom,lName,fname,ABillm:String;
begin

  if Length(Edit1.Text) = 0 then begin
    MessageDlg('Please Select MeterReader!',mtInformation,[mbClose],0);
    Exit;
  end;


  fname :=  UPPERCASE(SplitString(Edit1.Text,'.')[0].Substring(0,1));
  lName := UPPERCASE(TRIM(SplitString(Edit1.Text,'.')[1]));
  fileNamecom := fname+'_'+lName;
  Memo1.Lines.Clear;

  if Length(Edit2.Text) <> 6 then begin
    MessageDlg('Please Put Billmonth the Correct Way!',mtInformation,[mbClose],0);
    Exit;
  end else begin
    ABillm := Edit2.Text;
    if  strToInt(ABillm.Substring(0,2)) > 12 then begin
      MessageDlg('Please Put Billmonth the Correct Way!',mtInformation,[mbClose],0);
      Exit;
    end;
  end;


  if StatusBar1.Panels[1].Text.Contains('Location') then begin
    MessageDlg('Please Select File Before Getting Data!',mtInformation,[mbClose],0);
    Exit;
  end else begin
    Memo1.Lines.Add('Location Confirmed!');
  end;

  if not StatusBar1.Panels[1].Text.Contains(fileNamecom) then begin
    MessageDlg('Selected File is not the same with selected MeterReader!',mtError,[mbClose],0);
    Exit;
  end else begin
    Memo1.Lines.Add('Selection File Confirmed!');
  end;

  if Length(fileNamecom)=0 then begin
    MessageDlg('Please Select MeterReader Before Getting Data!',mtInformation,[mbClose],0);
    Exit;
  end else begin
    Memo1.Lines.Add('Selection MeterReader Confirmed!');
  end;
  Memo1.Lines.Add('Starting Data Transfer to');
  Memo1.Lines.Add('MYSQL Database');
  //query for mysql db
  Memo1.Lines.Add('Starting Data Transfer to');
  Memo1.Lines.Add('SQLite Database');
  //query for Sqlite db

  LoadData(ALocationPath);

  LoadDataMysql(ALocationPath);




end;

procedure TToolsForm.ComboBox1Change(Sender: TObject);
begin
   if Combobox1.Focused  then begin
    Shape2.Pen.Color := clBlue ;
  end else begin
    Shape2.Pen.Color := cl3DDkShadow;
  end;
  Edit1.Text := ComboBox1.Text;
  AMeterReaderId := GetMeterReaderID(ComboBox1.Text);
end;

procedure TToolsForm.FormShow(Sender: TObject);
begin
  MainDataModule.SqlDesktopConnect(True);
   with ToolsDataModule do begin
     OpenDataSet(tblMeterReader);
     OpenDataSet(tblRoutes);
     OpenDataSet(tblConsumerAccount);
     OpenDataSet(qryGetConsumerAccount);
   end;
  ALocationPath := 'D:\';
  LoadMeterReader();
end;

procedure TToolsForm.ListBox1DblClick(Sender: TObject);
Var
  DisPath,AMonth,AYear:String;
begin
  AFileNameUpload := ListBox1.Items.Strings[ListBox1.ItemIndex];
  Panel4.Visible := False;
  Edit1.Enabled := True;
  ComboBox1.Enabled := True;
  Memo2.Lines.Clear;
  DisPath := 'D:\JWS_READ_AND_BILL\jws_upload';
  AMonth := SplitString(AFileNameUpload,'-')[0].Substring(Length(SplitString(AFileNameUpload,'-')[0])-2,2);
  AYear := SplitString(AFileNameUpload,'-')[2].Substring(0,4);
  if Length(AFileNameUpload)<>0 then begin
    if ForceDirectories(DisPath+'\'+AMonth+AYear) then begin
      Memo2.Text := GetDosOutput('ADB pull ' + ALocationPath + AFileNameUpload + ' '+DisPath+'\'+AMonth+AYear);
      Memo1.Lines.Add('ADB <PULL> Command Started!');
    end else begin
      Memo1.Lines.Add('Creating Directory Failed!');
      MessageDlg('Directory Cannot be Created. Please Create manually!',mtInformation,[mbClose],0);
    end;
  end;
  if Memo2.Lines.Strings[0].Contains('100%') then begin
    ALocationPath:= 'D:\JWS_READ_AND_BILL\jws_upload'+'\'+AMonth+AYear+'\'+AFileNameUpload;
    StatusBar1.Panels[1].Text := UpperCase(ALocationPath);
    Memo1.Lines.Add('File Successfully Transffered to!');
    Memo1.Lines.Add('Path File : '+StatusBar1.Panels[1].Text);
    MessageDlg('Status : '+SplitString(Memo2.Lines.Strings[1],':')[1],mtInformation,[mbClose],0);
  end;
end;

procedure TToolsForm.LoadData(APath:String);
Var
  AMemo:TStringList;
  I:Integer;
  ADatePresentReading,APaymentAfterDueDate,ADisconnectionDate,ADueDate,ADateUploaded:String;
  AMonth,ADay,AYear,AAa:String;
begin
  try
    AMemo := TStringList.Create();
    AMemo.LoadFromFile(APath);
    Gauge1.MinValue := 0;
    if AMemo.Count<=0 then begin
      MessageDlg('Nothing to be Upload',mtInformation,[mbNo],0);
      Exit;
    end;
    Gauge1.MaxValue := AMemo.Count-1;
    Gauge1.Progress := 0;
    Gauge1.Visible := True;
    with ToolsDataModule do begin
      for i := 0 to AMemo.Count-1 do begin
        Gauge1.AddProgress(1);
        if tblConsumerAccount.Locate('AccountNo',SplitString(AMemo.Strings[i],'|')[0],[]) then begin
          qryConsumerAccount.Close;
          ADatePresentReading := SplitString(AMemo.Strings[i],'|')[3];
          AMonth := SplitString(ADatePresentReading,'-')[1];
          ADay := SplitString(ADatePresentReading,'-')[2];
          AYear := SplitString(ADatePresentReading,'-')[0];
          ADatePresentReading := (Amonth) + '/' + (ADay) + '/' + (AYear);

          ADueDate := SplitString(AMemo.Strings[i],'|')[13];
          AMonth := SplitString(ADueDate,'-')[1];
          ADay := SplitString(ADueDate,'-')[2];
          AYear := SplitString(ADueDate,'-')[0];
          ADueDate := (Amonth) + '/' + (ADay) + '/' + (AYear);

          APaymentAfterDueDate := SplitString(AMemo.Strings[i],'|')[14];
          AMonth := SplitString(APaymentAfterDueDate,'-')[1];
          ADay := SplitString(APaymentAfterDueDate,'-')[2];
          AYear := SplitString(APaymentAfterDueDate,'-')[0];
          APaymentAfterDueDate := (Amonth) + '/' + (ADay) + '/' + (AYear);

          ADisconnectionDate := SplitString(AMemo.Strings[i],'|')[15];
          AMonth := SplitString(ADisconnectionDate,'-')[1];
          ADay := SplitString(ADisconnectionDate,'-')[2];
          AYear := SplitString(ADisconnectionDate,'-')[0];
          ADisconnectionDate := (Amonth) + '/' + (ADay) + '/' + (AYear);

          ADateUploaded := SplitString(AMemo.Strings[i],'|')[21];
          AMonth := SplitString(ADateUploaded,'-')[1];
          ADay := SplitString(ADateUploaded,'-')[2];
          AYear := SplitString(ADateUploaded,'-')[0];
          ADateUploaded := (Amonth) + '/' + (ADay) + '/' + (AYear);
          AAa :=  SplitString(AMemo.Strings[i],'|')[0];
          qryConsumerAccount.ParamByName('AAccountNo').AsString := SplitString(AMemo.Strings[i],'|')[0];
          qryConsumerAccount.ParamByName('Anewconnectionstatus').AsString 	:= SplitString(AMemo.Strings[i],'|')[1];
          qryConsumerAccount.ParamByName('Apresentreading').AsString 	:= SplitString(AMemo.Strings[i],'|')[2];
          qryConsumerAccount.ParamByName('Apresentreadingdate').AsString 	:=  ADatePresentReading;
          qryConsumerAccount.ParamByName('Acurrentconsumption').AsString 	:= SplitString(AMemo.Strings[i],'|')[4];
          qryConsumerAccount.ParamByName('Atotalconsumption').AsString 	:= SplitString(AMemo.Strings[i],'|')[5];
          qryConsumerAccount.ParamByName('Ameterfindings').AsString 	:= SplitString(AMemo.Strings[i],'|')[6];
          qryConsumerAccount.ParamByName('Areadingremarks').AsString 	:= SplitString(AMemo.Strings[i],'|')[7];
          qryConsumerAccount.ParamByName('Acurrentamountdue').AsString 	:= ReplaceStr(SplitString(AMemo.Strings[i],'|')[8],',','');
          qryConsumerAccount.ParamByName('Atotalamountdue').AsString 	:= ReplaceStr(SplitString(AMemo.Strings[i],'|')[9],',','');
          qryConsumerAccount.ParamByName('Atotalamountafterduedate').AsString 	:= ReplaceStr(SplitString(AMemo.Strings[i],'|')[10],',','');
          qryConsumerAccount.ParamByName('Adiscountamount').AsString 	:= ReplaceStr(SplitString(AMemo.Strings[i],'|')[11],',','');
          qryConsumerAccount.ParamByName('Apenaltyamount').AsString 	:= ReplaceStr(SplitString(AMemo.Strings[i],'|')[12],',','');
          qryConsumerAccount.ParamByName('Apaymentduedate').AsString 	:=ADueDate;
          qryConsumerAccount.ParamByName('Apaymentdateafterdue').AsString 	:= APaymentAfterDueDate;
          qryConsumerAccount.ParamByName('Adisconnectiondate').AsString 	:= ADisconnectionDate;
          qryConsumerAccount.ParamByName('Areadingtime').AsString 	:= SplitString(AMemo.Strings[i],'|')[16]	;
          qryConsumerAccount.ParamByName('Ameterreadername').AsString 	:= SplitString(AMemo.Strings[i],'|')[17]	;
          qryConsumerAccount.ParamByName('Anumberofreadingretry').AsString 	:= SplitString(AMemo.Strings[i],'|')[18]	;
          qryConsumerAccount.ParamByName('Anumberofbillprinted').AsString 	:= SplitString(AMemo.Strings[i],'|')[19]	;
          qryConsumerAccount.ParamByName('Anumberofsmssent').AsString 	:= SplitString(AMemo.Strings[i],'|')[20]	;
          qryConsumerAccount.ParamByName('Adateuploaded').AsString 	:= ADateUploaded;
          qryConsumerAccount.ParamByName('AId').AsString := tblConsumerAccountid.AsString;

          qryConsumerAccount.Execute;
        end;
      end;
    end;
    //Gauge1.Visible := False;
   finally
    AMemo.Free;
  end;
    with ToolsDataModule.qryGetConsumerAccount do begin
      Close;
      Open;
      First;
    end;

end;

function TToolsForm.ConsToLedAcc(AccountNo: String): String;
begin
  Result := Replacestr(AccountNo,'-','_');
end;

procedure TToolsForm.LoadDataMysql(APath:String);
Var
  AMemo:TStringList;
  I:Integer;
  ADatePresentReading,APaymentAfterDueDate,ADisconnectionDate,ADueDate,ADateUploaded:String;
  AMonth,ADay,ADateNow,AYear,AMonth1,ADay1,AYear1,AAa,LedAcc,LedgerQuery,CheckBillMonth:String;
  LastldgId:Integer;
  MeterFee,MLP :Currency;
begin
  try
    AMemo := TStringList.Create();
    AMemo.LoadFromFile(APath);
    if AMemo.Count<=0 then begin
      memo1.Lines.Clear;
      Exit;
    end;
    Gauge1.MinValue := 0;
    Gauge1.MaxValue := AMemo.Count-1;
    Gauge1.Progress := 0;
    Gauge1.Visible := True;
    with ToolsDataModule do begin
    ADateNow := DateToStr(Now());
    AMonth1 := SplitString(ADateNow,'/')[1];
    //ADay := SplitString(ADatePresentReading,'-')[2];
    ADay1 := SplitString(ADateNow,'/')[2].Substring(0,2);
    AYear1 := SplitString(ADateNow,'/')[0];
    ADateNow := (AYear1) + '-' + (Amonth1) + '-' + (ADay1);

      for i := 0 to AMemo.Count-1 do begin
        Gauge1.AddProgress(1);
        LedAcc := 'ldg_'+ConsToLedAcc(SplitString(AMemo.Strings[i],'|')[0]);
           //CheckBillMonth := ReplaceStr('SELECT * from :ALA WHERE Month(reading_date) = :AMonth and Year(reading_date) = AYear ',':ALA',LedAcc);
           LedgerQuery := ReplaceStr('Select * from :ALA ORDER BY reading_date Desc Limit 1',':ALA',LedAcc);
           qryLedger.Open(LedgerQuery);

           //qryShowID.Open(ReplaceSTR('SHOW COLUMNS FROM ldg_2005_10_0403 LIKE "id"',':ALA',LedAcc));
           //if qryShowID.IsEmpty  then begin
           //  LastldgId := 0;
           //end else begin
           //  LastldgId := qryLedger.FieldByName('id').AsInteger+1;
           //end;

           ADatePresentReading := SplitString(AMemo.Strings[i],'|')[3];
           AMonth := LeftStr(Edit2.Text,2);
           ADay := SplitString(qryLedgerreading_date.AsString,'-')[2];
           ADay := SplitString(qryLedgerreading_date.AsString,'-')[2];
           AYear := SplitString(ADatePresentReading,'-')[0];
           ADatePresentReading := (AYear) + '-' + (Amonth) + '-' + (ADay);

           //ADatePresentReading := SplitString(ADatePresentReading,'-')[0] + '-' + SplitString(qryLedgerreading_date.AsString,'-')[1];
           //ADatePresentReading := SplitString(AMemo.Strings[i],'|')[3];
           //AMonth := SplitString(ADatePresentReading,'-')[1];
           //ADay := SplitString(ADatePresentReading,'-')[2];
           //ADay := SplitString(qryLedgerreading_date.AsString,'-')[2];
           //AYear := SplitString(ADatePresentReading,'-')[0];
           //ADatePresentReading := (AYear) + '-' + (Amonth) + '-' + (ADay);
            if length(AYear)<> 4 then begin
             MessageDLG('Year/Month/Day is Not Valid Please Check Text File!',mtError,[mbClose],0);
             Exit;
            end;

            if length(Amonth) <> 2 then begin
             MessageDLG('Year/Month/Day is Not Valid Please Check Text File!',mtError,[mbClose],0);
             Exit;
            end;

            if length(ADay) <> 2 then begin
             MessageDLG('Year/Month/Day is Not Valid Please Check Text File!',mtError,[mbClose],0);
             Exit;
            end;
            //CheckBillMonth := ReplaceStr(CheckBillMonth,':AMonth',LeftStr(Edit2.Text,2));
            //CheckBillMonth := ReplaceStr(CheckBillMonth,':AYear',RightStr(Edit2.Text,4));
            //qryCheckBillMonth.Open(CheckBillMonth);

        if qryLedger.Locate('reading_date',ADatePresentReading,[]) then begin

           //qryLedger.Edit;
           //qryLedgerreading_date.AsString := ADatePresentReading;
           //qryLedgermeter_reading.AsString := TruncDecimal(SplitString(AMemo.Strings[i],'|')[2]);
           //qryLedgercu_used.AsString := TruncDecimal(SplitString(AMemo.Strings[i],'|')[4]);
           //qryLedgerpen_fee.AsString := ReplaceStr(SplitString(AMemo.Strings[i],'|')[12],',','');
           //qryLedgerpen_fee.AsString := '0';
           //qryLedgerbill_amnt.AsString := ReplaceStr(SplitString(AMemo.Strings[i],'|')[8],',','');
           //MeterFee := dsOpenParam(qryLedgerOtherFee,'AAccountNumber',SplitString(AMemo.Strings[i],'|')[0],'AAddons','met_fee','installmentValue');

           //MLP := dsOpenParam(qryLedgerOtherFee,'AAccountNumber',SplitString(AMemo.Strings[i],'|')[0],'AAddons','MLP','installmentValue');

           //qryLedgerloans_MLP.AsString := currtostr(MLP);
           //qryLedgerloans_MF.AsString := currtostr(MeterFee);


             //try
             //  qryLedgerAF.AsString := '';
             // except on E: EDatabaseError do begin
             //     showmessage(SplitString(AMemo.Strings[i],'|')[0]);
             // end;
             //end;

           //qryLedgermisc.AsString := '' ;
           //qryLedgertotal.AsString := ReplaceStr(SplitString(AMemo.Strings[i],'|')[10],',','');
           //qryLedgerOR_num.AsString := '';
           //qryLedgerOR_date.AsString := '';
           //qryLedgerremarks.AsString := '';
           //qryLedger.Post;
        end else begin
           qryLedger.Append;
           qryLedgerreading_date.AsString := ADatePresentReading;
           qryLedgermeter_reading.AsString := TruncDecimal(SplitString(AMemo.Strings[i],'|')[2]);
           qryLedgercu_used.AsString :=  TruncDecimal(SplitString(AMemo.Strings[i],'|')[4]);
           qryLedgerpen_fee.AsString := ReplaceStr(SplitString(AMemo.Strings[i],'|')[12],',','');
           qryLedgerpen_fee.AsString := '0';
           qryLedgerbill_amnt.AsString := ReplaceStr(SplitString(AMemo.Strings[i],'|')[8],',','');
           MeterFee := dsOpenParam(qryLedgerOtherFee,'AAccountNumber',SplitString(AMemo.Strings[i],'|')[0],'AAddons','met_fee','installmentValue');
           MLP := dsOpenParam(qryLedgerOtherFee,'AAccountNumber',SplitString(AMemo.Strings[i],'|')[0],'AAddons','MLP','installmentValue');

           qryLedgerloans_MLP.AsString := currtostr(MLP);
           qryLedgerloans_MF.AsString := currtostr(MeterFee);


           //try
           // qryLedgerAF.AsString := '';
           // except on E: EDatabaseError do begin
           //  showmessage(SplitString(AMemo.Strings[i],'|')[0]);
           // end;
           //end;

           //qryLedgerAF.AsString := '';
           //qryLedgermisc.AsString := '' ;
           qryLedgertotal.AsString := ReplaceStr(SplitString(AMemo.Strings[i],'|')[10],',','');
           //qryLedgerOR_num.AsString := '';
           //qryLedgerOR_date.AsString := '';
           //qryLedgerremarks.AsString := '';
           qryLedger.Post;
        end;

        if MeterFee<>0 then begin
          fdqInstallement.Close;

          fdqInstallement.ParamByName('AAddons').AsString := 'met_fee';
          fdqInstallement.ParamByName('ABilledDate').AsString := ADateNow;
          fdqInstallement.ParamByName('AAccountNumber').AsString := SplitString(AMemo.Strings[i],'|')[0];
          fdqInstallement.ParamByName('AInsVal').AsString := CurrToStr(MeterFee);
          fdqInstallement.Execute;
        end;

         if MLP<>0 then begin
          fdqInstallement.Close;
          fdqInstallement.ParamByName('AAddons').AsString := 'MLP';
          fdqInstallement.ParamByName('ABilledDate').AsString :=ADateNow;
          fdqInstallement.ParamByName('AAccountNumber').AsString := SplitString(AMemo.Strings[i],'|')[0];
          fdqInstallement.ParamByName('AInsVal').AsString := CurrToStr(MLP);
          fdqInstallement.Execute;
        end;

      end;
      MessageDlg('Successfully Uploaded!',mtInformation,[mbClose],0);
    end;
    //Gauge1.Visible := False;
   finally
    AMemo.Free;
  end;
    with ToolsDataModule.qryGetConsumerAccount do begin
      Close;
      Open;
      First;
    end;

end;

procedure TToolsForm.LoadMeterReader;
begin
  with ToolsDataModule do begin
    tblMeterReader.Close;
    tblMeterReader.Open;
    tblMeterReader.First;
    ComboBox1.Items.Clear;
    while not tblMeterReader.EOF do begin
      ComboBox1.Items.Add(tblMeterReadername.AsString);
      tblMeterReader.Next;
    end;
  end;
end;

procedure TToolsForm.RzBitBtn1Click(Sender: TObject);
begin
 With FileOpenDialog1 do begin
   Memo1.Lines.Clear;
   Title := 'Select Text File';
   //Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem]; // YMMV
   OkButtonLabel := 'Select';
   FileName := ALocationPath;
   DefaultFolder := ALocationPath;
   if Execute then
   begin
     ALocationPath := FileName;
     StatusBar1.Panels[1].Text := UpperCase(ALocationPath);
   end;
 end;
end;

procedure TToolsForm.RzBitBtn2Click(Sender: TObject);
begin

  if Panel4.Visible then begin
    Panel4.Visible := False;
    Edit1.Enabled := True;
    ComboBox1.Enabled := True;
  end else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('Starting ADB!');
    CheckAndroid(Edit1.Text);
    Memo1.Lines.Add('ADB Listing ended!');
    if ConStatus.Contains('Initialization') then begin
      Memo1.Lines.Add('Initialization Failed');
      Exit;
    end else if not ConStatus.Contains('Not') then begin
      Memo1.Lines.Add('Getting Device Information');
      Panel4.Left := 34;
      Panel4.Top := 112;
      Panel4.Visible := True;
      Edit1.Enabled := False;
      ComboBox1.Enabled := False;
      ALocationPath := 'sdcard/Android/data/com.systems.alltech.jws/files/';

    end else begin

      MessageDlg('Please Connect Device Before initialization of Data!',mtInformation,[mbClose],0);
    end;
  end;
end;

function TToolsForm.TruncDecimal(Value: String): String;
Var
  ResultVal :string;
begin
  ResultVal := SplitString(Value,'.')[0];
  result := ResultVal;
end;

procedure TToolsForm.CheckAndroid(AFilterOut:String);
Var
  I,X:Integer;
  SFname,SDate,MName:String;
  FDate : TDate;
  MeterReader:String;
begin
  X:=0;
  if not TCMDPromtUtil.isDevicesConnected then begin
    ConStatus := 'Not Connected';
    Label8.Caption := '---';
    Label10.Caption := '---';
    Memo2.Lines.Clear;
    ListBox1.Items.Clear;
    AFileNameUpload := '';
    ALocationPath := '';
  end else begin
    ConStatus := 'Connected';
    Memo2.Lines.Clear;
    Label8.Caption := TCMDPromtUtil.GetResultQuery(CommandPromtUnit.QUERY_ADB_SHELL+CommandPromtUnit.QUERY_ADB_GETPROPERTIES+CommandPromtUnit.QUERY_ADB_DEVICE_NAME);
    Label10.Caption := TCMDPromtUtil.GetResultQuery(CommandPromtUnit.QUERY_ADB_SHELL+CommandPromtUnit.QUERY_ADB_GETPROPERTIES+CommandPromtUnit.QUERY_ADB_SERIAL);;
    Memo2.Text := GetDosOutput('adb shell ls sdcard/Android/data/com.systems.alltech.jws/files');
    ListBox1.Items.Clear;
    VirtualTable1.Clear;
    VirtualTable1.Close();
    VirtualTable1.Open();

    for I := 0 to Memo2.Lines.Count do begin
      if Memo2.Lines.Strings[i].Contains('txt') then begin
        MName := SplitString(Memo2.Lines.Strings[i],'_')[1]+'_'+SplitString(Memo2.Lines.Strings[i],'_')[2];
        SFname := SplitString(Memo2.Lines.Strings[i],'_')[0]+'_'+SplitString(Memo2.Lines.Strings[i],'_')[1]+'_'+SplitString(Memo2.Lines.Strings[i],'_')[2]+'_'+SplitString(Memo2.Lines.Strings[i],'_')[3];
        SDate := ReplaceStr(ReplaceStr(SplitString(Memo2.Lines.Strings[i],'_')[4],'-','/'),'.txt','');
        FDate := StrToDate(ReplaceStr(ReplaceStr(SplitString(Memo2.Lines.Strings[i],'_')[4],'-','/'),'.txt',''));

        VirtualTable1.Append();
        //VirtualTable1id.AsInteger :=i+1;
        VirtualTable1FileName.AsString :=Memo2.Lines.Strings[i];
        VirtualTable1SName.AsString := SFname;
        //VirtualTable1MName.AsString := UPPERCASE(MName);
        VirtualTable1SDate.AsString := SDate;
        VirtualTable1FileDate.AsDateTime :=  FDate;
        VirtualTable1.Post;
      end;
      //JWS_N_GALVAN_reading
    end;
    VirtualTable1.Filtered :=False;
       //"%N_GALVAN%"
    if Length(AFilterOut) <> 0 then begin
       //MeterReader := 'JWS_'+UPPERCASE(SplitString(AFilterOut,'.')[0].Substring(0,1) + '_' + SplitString(AFilterOut,'.')[1])+'_reading';
       MeterReader := UPPERCASE(SplitString(AFilterOut,'.')[0].Substring(0,1) + '_' + SplitString(AFilterOut,'.')[1].SubString(1,Length(SplitString(AFilterOut,'.')[1])-1));
       VirtualTable1.Filter := 'SName LIKE '+ QuotedStr('%'+MeterReader+'%');
       VirtualTable1.Filtered :=True;
    end;
    if VirtualTable1.IsEmpty then begin
       ConStatus := 'Initialization Failed';
       MessageDlg('No Meter Reader has Been Found in the Device'+#13#10+'Loading All Data Found.',mtInformation,[mbNo],0);
    end else begin
      VirtualTable1.IndexFieldNames := 'FileDate DESC;SName ASC';
      VirtualTable1.First;
      while not VirtualTable1.EOF do begin
        ListBox1.Items.Add(VirtualTable1FileName.AsString);
        VirtualTable1.Next;
      end;
    end;
  end;
end;

function TToolsForm.GetDosOutput(CommandLine, Work: string): String;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            Result := Result + Buffer;
            //Result.Add(Buffer);
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;

end.
