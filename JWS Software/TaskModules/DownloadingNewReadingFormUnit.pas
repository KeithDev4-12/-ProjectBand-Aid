unit DownloadingNewReadingFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  CommandPromtUnit,U_usb, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, MemDS,
  VirtualTable,StrUtils, Vcl.Menus,dateUtils, RzButton, RzFilSys, Vcl.FileCtrl,
  Vcl.Samples.Gauges;

type
  TDownloadingNewReadingForm = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape1: TShape;
    Label8: TLabel;
    ListBox1: TListBox;
    Label9: TLabel;
    VirtualTable1: TVirtualTable;
    VirtualTable1id: TAutoIncField;
    VirtualTable1FileName: TStringField;
    VirtualTable1SName: TStringField;
    VirtualTable1SDate: TStringField;
    VirtualTable1FileDate: TDateField;
    VirtualTable1MName: TStringField;
    Memo1: TMemo;
    Label10: TLabel;
    Memo2: TMemo;
    pmFilesDevice: TPopupMenu;
    Unselect1: TMenuItem;
    N1: TMenuItem;
    Select1: TMenuItem;
    GroupBox3: TGroupBox;
    DBGridEh1: TDBGridEh;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    vtConsumerAccountUpload: TVirtualTable;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn3: TBitBtn;
    GroupBox5: TGroupBox;
    RzBitBtn1: TRzBitBtn;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    RzFileListBox1: TRzFileListBox;
    FileOpenDialog1: TFileOpenDialog;
    PopupMenu1: TPopupMenu;
    FilterData1: TMenuItem;
    Panel4: TPanel;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Shape2: TShape;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape3: TShape;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label18: TLabel;
    Panel13: TPanel;
    Edit3: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Shape4: TShape;
    ComboBox3: TComboBox;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Gauge1: TGauge;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    vtConsumerAccountUploadid: TAutoIncField;
    vtConsumerAccountUploadaccountno: TWideMemoField;
    vtConsumerAccountUploadaccountname: TWideMemoField;
    vtConsumerAccountUploadroutesequence: TIntegerField;
    vtConsumerAccountUploadroutecode: TIntegerField;
    vtConsumerAccountUploadrouteaddress: TWideMemoField;
    vtConsumerAccountUploadratecode: TIntegerField;
    vtConsumerAccountUploadconnectiontype: TWideMemoField;
    vtConsumerAccountUploadconnectionstatus: TWideMemoField;
    vtConsumerAccountUploadnewconnectionstatus: TWideMemoField;
    vtConsumerAccountUploadisseniorcitizen: TIntegerField;
    vtConsumerAccountUploadmobilenumber: TWideMemoField;
    vtConsumerAccountUploadmeterbrand: TWideMemoField;
    vtConsumerAccountUploadmeterserialno: TWideMemoField;
    vtConsumerAccountUploadbillmonth: TWideMemoField;
    vtConsumerAccountUploadbillnumber: TIntegerField;
    vtConsumerAccountUploadpreviousreading: TFloatField;
    vtConsumerAccountUploadpreviousreadingdate: TWideMemoField;
    vtConsumerAccountUploadpresentreading: TFloatField;
    vtConsumerAccountUploadpresentreadingdate: TWideMemoField;
    vtConsumerAccountUploadaverageconsumption: TFloatField;
    vtConsumerAccountUploadcurrentconsumption: TFloatField;
    vtConsumerAccountUploadtotalconsumption: TFloatField;
    vtConsumerAccountUploadoldmeterconsumption: TFloatField;
    vtConsumerAccountUploadmeterfindings: TWideMemoField;
    vtConsumerAccountUploadreadingremarks: TWideMemoField;
    vtConsumerAccountUploadcurrentamountdue: TFloatField;
    vtConsumerAccountUploadtotalamountdue: TFloatField;
    vtConsumerAccountUploadtotalamountafterduedate: TFloatField;
    vtConsumerAccountUploaddiscountamount: TFloatField;
    vtConsumerAccountUploadpenaltyamount: TFloatField;
    vtConsumerAccountUploadtotalbillarrears: TFloatField;
    vtConsumerAccountUploadtotalotherfees: TFloatField;
    vtConsumerAccountUploadpaymentduedate: TWideMemoField;
    vtConsumerAccountUploadpaymentdateafterdue: TWideMemoField;
    vtConsumerAccountUploaddisconnectiondate: TWideMemoField;
    vtConsumerAccountUploadreadingtime: TWideMemoField;
    vtConsumerAccountUploadmeterreadername: TWideMemoField;
    vtConsumerAccountUploadnumberofreadingretry: TIntegerField;
    vtConsumerAccountUploadnumberofbillprinted: TIntegerField;
    vtConsumerAccountUploadnumberofsmssent: TIntegerField;
    vtConsumerAccountUploaddateuploaded: TWideMemoField;
    DSConsumerAccount: TDataSource;
    ShowAllRecords1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Delete1: TMenuItem;
    procedure LoadBillMonth();
    procedure LoadRoutes();
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function GetDosOutput(CommandLine: string; Work: string = 'C:\Platform-tools\'): String;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Memo2KeyPress(Sender: TObject; var Key: Char);
    procedure Select1Click(Sender: TObject);
    procedure Unselect1Click(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
    function pullSQLiteDBToTablet(const LPathTo,
              //LPathFrom,
              AFileName,
              //AMeterReaderName,
              //ABillMonth,
              ASettingsDownload,ABillMonth: String):String;
    function GetPath(ValFieldName: String): String;
    procedure EnabledDisable(AValue:Boolean);
    procedure LoadTempBillMask(APath:String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RzFileListBox1DblClick(Sender: TObject);
    procedure FilterData1Click(Sender: TObject);
    procedure Panel8MouseEnter(Sender: TObject);
    procedure Panel8MouseLeave(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Panel9MouseEnter(Sender: TObject);
    procedure Panel9MouseLeave(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Panel14Click(Sender: TObject);
    procedure Panel14MouseEnter(Sender: TObject);
    procedure Panel14MouseLeave(Sender: TObject);
    procedure Panel15Click(Sender: TObject);
    procedure Panel15MouseEnter(Sender: TObject);
    procedure Panel15MouseLeave(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure ShowAllRecords1Click(Sender: TObject);


  private
    { Private declarations }
    procedure CheckAndroid(AFilterOut:String); Overload;
    procedure CheckAndroid(); overload;
    procedure LoadMeterReader();
    Function GetRouteCode(ARouteAddress:String):String;
  public
    { Public declarations }
    CUSB: TComponentUSB;
    procedure USBArrival(Sender: TObject);
    procedure USBRemoval(Sender: TObject);
  end;

var
  DownloadingNewReadingForm: TDownloadingNewReadingForm;
  isConnected:Boolean;
  AFileNameUpload:String;
  ControlProcedure:Integer = 0;
  AIpAddressAvailable : String;
  APathDirectory:String;
  ADefaultDirectory:String;
  ARouteCode:String;
implementation

Uses DownloadingNewReadingDataModuleUnit,UploadDownloadUnit,SettingsDataModuleUnit,MainDataModuleUnit;

{$R *.dfm}


function TDownloadingNewReadingForm.GetPath(ValFieldName: String): String;
begin
  with SettingsDataModule do begin
  qrySettings.Close;
  qrySettings.Open();
    if qrySettings.Locate('SettingsName',ValFieldName,[]) then begin
      result := qrySettingssettingsvalue.AsString;
    end;
  end;
end;

function TDownloadingNewReadingForm.GetRouteCode(ARouteAddress: String): String;
begin
  with DownLoadingNewReadingDataModule do begin
    if tblRoutes.Locate('RouteAddress',ARouteAddress,[]) then begin
      Result := tblRoutesroutecode.AsString;
    end;
  end;
end;

procedure TDownloadingNewReadingForm.BitBtn1Click(Sender: TObject);
Var
  LocationPathTo,ASettingsDownload,ABMonth:string;
Const Located='Found';
begin
  if Length(AFileNameUpload)<=3 then
    Exit;

  if Label12.Caption = 'None' then
    raise Exception.Create('Please select a File');

  LocationPathTo := GetPath('default_location_path_sqlite_to');

  if SettingsDataModule.qrySettings.Locate('settingsname','ftp_server_base_upload_dir',[]) then begin
    ASettingsDownload := SettingsDataModule.qrySettings.FieldByName('SettingsValue').AsString ;
  end
  else begin
    ASettingsDownload := 'jws_upload';
  end;
  ABMonth := SplitString(AFileNameUpload,'-')[0].Substring(Length(SplitString(AFileNameUpload,'-')[0])-2,2) + ReplaceStr(SplitString(AFileNameUpload,'-')[2],'.txt','');
   with DownloadingNewReadingDataModule do begin
     if RadioButton1.Checked  then begin
//       try
//         APathDirectory := 'D:\JWS_READ_AND_BILL\jws_upload';
//         LoadTempBillMask(APathDirectory+'\'+AFileNameUpload)
//       except on E:
//         Exception do
//         begin
//          Showmessage(E.Message)
//         end;
//       end;
        if Not pullSQLiteDBToTablet(LocationPathTo,AFileNameUpload,ASettingsDownload,ABMonth).Contains('Not') then begin

          with DownloadingNewReadingDataModule do begin
            try
              LoadTempBillMask(APathDirectory+'\'+AFileNameUpload);
              MessageDlg('Transferring data Successfully!',mtInformation,[mbClose],0);
            except on E: Exception do begin
             Showmessage(E.Message)
            end;

            end;
          end;
        end else begin
          MessageDlg('Transferring data Failed!',mtError,[mbClose],0);
        end;
     end else begin
       if FileExists(APathDirectory+'\'+AFileNameUpload) then begin
         with DownloadingNewReadingDataModule do begin
            try
              LoadTempBillMask(APathDirectory+'\'+AFileNameUpload);
              MessageDlg('Transferring data Successfully!',mtInformation,[mbClose],0);
            except on E: Exception do
              begin
               Showmessage(E.Message)
              end;
            end;
         end;
       end else begin
         MessageDlg('Transferring data Failed!',mtError,[mbClose],0);
       end;
     end;
   end;


end;

procedure TDownloadingNewReadingForm.CheckAndroid(AFilterOut:String);
Var
  I,X:Integer;
  SFname,SDate,MName:String;
  FDate : TDate;
  MeterReader:String;
begin
  X:=0;
  if not TCMDPromtUtil.isDevicesConnected then begin
    Label2.Caption := 'Not Connected';
    Label2.Font.Color := clRed;
    Label6.Caption := '---';
    Label7.Caption := '---';
    Memo1.Lines.Clear;
    ListBox1.Items.Clear;
    Memo2.Text := 'None';
    Memo2.Font.Color := clRed;
    Label12.Font.Color := clRed;
    AFileNameUpload := '';
    Timer1.Enabled := True;
  end else begin
    Label2.Caption := 'Connected';
    Label2.Font.Color := clGreen;
    Label6.Caption := TCMDPromtUtil.GetResultQuery(CommandPromtUnit.QUERY_ADB_SHELL+CommandPromtUnit.QUERY_ADB_GETPROPERTIES+CommandPromtUnit.QUERY_ADB_DEVICE_NAME);
    Label7.Caption := TCMDPromtUtil.GetResultQuery(CommandPromtUnit.QUERY_ADB_SHELL+CommandPromtUnit.QUERY_ADB_GETPROPERTIES+CommandPromtUnit.QUERY_ADB_SERIAL);;
    Memo1.Text := GetDosOutput('adb shell ls sdcard/Android/data/com.systems.alltech.jws/files');
    ListBox1.Items.Clear;
    VirtualTable1.Clear;
    VirtualTable1.Close();
    VirtualTable1.Open();
    //if Memo1.Text.contains('more than one device') then begin
    //  Timer1.Enabled := False;
    //  Exit;
    //end;
    if not Memo1.Lines.Strings[0].Contains('.txt') then begin
      Timer1.Enabled := False;
      Exit;
    end;

    for I := 0 to Memo1.Lines.Count do begin
      if Memo1.Lines.Strings[i].Contains('txt') then begin
        MName := SplitString(Memo1.Lines.Strings[i],'_')[1]+'_'+SplitString(Memo1.Lines.Strings[i],'_')[2];
        SFname := SplitString(Memo1.Lines.Strings[i],'_')[0]+'_'+SplitString(Memo1.Lines.Strings[i],'_')[1]+'_'+SplitString(Memo1.Lines.Strings[i],'_')[2]+'_'+SplitString(Memo1.Lines.Strings[i],'_')[3];
        SDate := ReplaceStr(ReplaceStr(SplitString(Memo1.Lines.Strings[i],'_')[4],'-','/'),'.txt','');
        FDate := StrToDate(ReplaceStr(ReplaceStr(SplitString(Memo1.Lines.Strings[i],'_')[4],'-','/'),'.txt',''));

        VirtualTable1.Append();
        //VirtualTable1id.AsInteger :=i+1;
        VirtualTable1FileName.AsString :=Memo1.Lines.Strings[i];
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
       MessageDlg('No Meter Reader has Been Found in the Device'+#13#10+'Loading All Data Found.',mtInformation,[mbNo],0);
    end else begin
      VirtualTable1.IndexFieldNames := 'FileDate DESC;SName ASC';
      VirtualTable1.First;
      while not VirtualTable1.EOF do begin
        ListBox1.Items.Add(VirtualTable1FileName.AsString);
        VirtualTable1.Next;
      end;
    end;

    Timer1.Enabled := False;
  end;
end;

procedure TDownloadingNewReadingForm.BitBtn2Click(Sender: TObject);
begin
  CheckAndroid(Edit2.Text);
end;

procedure TDownloadingNewReadingForm.BitBtn3Click(Sender: TObject);
Var LocationAvailable:String;
begin
 With FileOpenDialog1 do begin
   Title := 'Select Directory';
   Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem]; // YMMV
   OkButtonLabel := 'Select';
   if Execute then
   begin
     LocationAvailable := FileName;
     Label15.Caption := LocationAvailable.Substring(0,3);
     RzFileListBox1.Directory := FileOpenDialog1.FileName;
   end;
 end;
end;

procedure TDownloadingNewReadingForm.CheckAndroid;
Var
  I,X:Integer;
  SFname,SDate,MName:String;
  FDate : TDate;
  MeterReader:String;
begin
  X:=0;
  if not TCMDPromtUtil.isDevicesConnected then begin
    Label2.Caption := 'Not Connected';
    Label2.Font.Color := clRed;
    Label6.Caption := '---';
    Label7.Caption := '---';
    Memo1.Lines.Clear;
    ListBox1.Items.Clear;
    Memo2.Text := 'None';
    Memo2.Font.Color := clRed;
    Label12.Font.Color := clRed;
    AFileNameUpload := '';
    Timer1.Enabled := True;
  end else begin
    Label2.Caption := 'Connected';
    Label2.Font.Color := clGreen;
    Label6.Caption := TCMDPromtUtil.GetResultQuery(CommandPromtUnit.QUERY_ADB_SHELL+CommandPromtUnit.QUERY_ADB_GETPROPERTIES+CommandPromtUnit.QUERY_ADB_DEVICE_NAME);
    Label7.Caption := TCMDPromtUtil.GetResultQuery(CommandPromtUnit.QUERY_ADB_SHELL+CommandPromtUnit.QUERY_ADB_GETPROPERTIES+CommandPromtUnit.QUERY_ADB_SERIAL);;
    Memo1.Text := GetDosOutput('adb shell ls sdcard/Android/data/com.systems.alltech.jws/files');
    ListBox1.Items.Clear;
    VirtualTable1.Clear;
    VirtualTable1.Close();
    VirtualTable1.Open();
    //if Memo1.Text.contains('more than one device') then begin
    //  Timer1.Enabled := False;
    //  Exit;
    //end;
    for I := 0 to Memo1.Lines.Count do begin
      if Memo1.Lines.Strings[i].Contains('txt') then begin
        MName := SplitString(Memo1.Lines.Strings[i],'_')[1]+'_'+SplitString(Memo1.Lines.Strings[i],'_')[2];
        SFname := SplitString(Memo1.Lines.Strings[i],'_')[0]+'_'+SplitString(Memo1.Lines.Strings[i],'_')[1]+'_'+SplitString(Memo1.Lines.Strings[i],'_')[2]+'_'+SplitString(Memo1.Lines.Strings[i],'_')[3];
        SDate := ReplaceStr(ReplaceStr(SplitString(Memo1.Lines.Strings[i],'_')[4],'-','/'),'.txt','');
        FDate := StrToDate(ReplaceStr(ReplaceStr(SplitString(Memo1.Lines.Strings[i],'_')[4],'-','/'),'.txt',''));

        VirtualTable1.Append();
        //VirtualTable1id.AsInteger :=i+1;
        VirtualTable1FileName.AsString :=Memo1.Lines.Strings[i];
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

    if VirtualTable1.IsEmpty then begin
       MessageDlg('No Meter Reader has Been Found in the Device'+#13#10+'Loading All Data Found.',mtInformation,[mbNo],0);
    end else begin
      VirtualTable1.IndexFieldNames := 'FileDate DESC;SName ASC';
      VirtualTable1.First;
      while not VirtualTable1.EOF do begin
        ListBox1.Items.Add(VirtualTable1FileName.AsString);
        VirtualTable1.Next;
      end;
    end;

    Timer1.Enabled := False;
  end;
end;

procedure TDownloadingNewReadingForm.ComboBox1Click(Sender: TObject);
begin
  if Combobox1.Focused  then begin
    Shape3.Pen.Color := clBlue ;
  end else begin
    Shape3.Pen.Color := cl3DDkShadow;
  end;
  CheckAndroid(Edit2.Text);
end;

procedure TDownloadingNewReadingForm.ComboBox2Change(Sender: TObject);
begin
  Edit1.Text := Combobox2.Text;
  ARouteCode := GetRouteCode(Edit1.Text)
end;

procedure TDownloadingNewReadingForm.ComboBox3Change(Sender: TObject);
begin
  Edit3.Text := Combobox3.Text;
end;

procedure TDownloadingNewReadingForm.ComboBox3Click(Sender: TObject);
begin
  if Combobox3.Focused  then begin
    Shape4.Pen.Color := clBlue ;
  end else begin
    Shape4.Pen.Color := cl3DDkShadow;
  end
end;

procedure TDownloadingNewReadingForm.Edit1Click(Sender: TObject);
begin
  if Edit1.Text = EmptyStr then begin
    Combobox2.DroppedDown := True;
  end;
end;

procedure TDownloadingNewReadingForm.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TDownloadingNewReadingForm.Edit2Click(Sender: TObject);
begin
  if Edit2.Text = EmptyStr then begin
    Combobox1.DroppedDown := True;
  end;
end;

procedure TDownloadingNewReadingForm.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TDownloadingNewReadingForm.Edit3Click(Sender: TObject);
begin
  if Edit3.Text = EmptyStr then begin
    Combobox3.DroppedDown := True;
  end;
end;

procedure TDownloadingNewReadingForm.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key IN ['0'..'9',#8,#9,#13,#27,#127]) then Key := #0;
  if Length(Edit3.Text)>=6 then Key := #0;
end;

procedure TDownloadingNewReadingForm.EnabledDisable(AValue: Boolean);
begin

 BitBtn3.Enabled := AValue;
 BitBtn1.Enabled := AValue;
 ListBox1.Enabled := AValue;
 RzFileListBox1.Enabled := AValue;
 DBGridEh1.Enabled := AValue;
 RadioButton1.Enabled := AValue;
 RadioButton2.Enabled := True;
 Combobox1.Enabled := AValue;
 Combobox2.Enabled := AValue;
 Combobox3.Enabled := True;
end;

procedure TDownloadingNewReadingForm.FilterData1Click(Sender: TObject);
begin
  With Panel4 do begin
    if Visible then begin
      Visible := False;
    end else begin
      Visible := True;
    end;
    Left := (DBGridEh1.Width - Width) div 2;
    Top := (DBGridEh1.Height - Height) div 2;
  end;
end;

procedure TDownloadingNewReadingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainDataModule.SqlDesktopConnect(False);
end;

procedure TDownloadingNewReadingForm.FormCreate(Sender: TObject);
begin
  CUSB := TComponentUSB.Create(Self);
  CUSB.OnUSBArrival := USBArrival;
  CUSB.OnUSBRemove :=  USBRemoval;
end;

procedure TDownloadingNewReadingForm.FormShow(Sender: TObject);
begin
  MainDataModule.SqlDesktopConnect(True);
   with DownloadingNewReadingDataModule do begin
     OpenDataSet(tblMeterReader);
     OpenDataSet(tblConsumerAccount);
     OpenDataSet(qryBillMonth);
     OpenDataSet(tblRoutes);
   end;
  LoadMeterReader();
  LoadBillMonth();
  LoadRoutes();
  GroupBox5.Visible := False;
  with GroupBox2 do begin
    Visible := True;
    Top := GroupBox5.Top;
    Left := GroupBox5.Left;
    Width := GroupBox5.Width;
    Height := GroupBox5.Height;
  end;
  BitBtn3.Enabled := False;
  RzBitBtn1.Enabled := False;
  With SettingsDataModule do begin
  qrySettings.Open();
    if qrySettings.Locate('settingsname','default_location_path_sqlite_to',[]) then begin
      RzFileListBox1.FileName := SettingsDataModule.qrySettingssettingsvalue.AsString + 'JWS_READ_AND_BILL\jws_upload\';
    end else begin
      try
        if not DirectoryExists('D:\JWS_READ_AND_BILL\jws_upload\') then begin
          ForceDirectories('D:\JWS_READ_AND_BILL\jws_upload\');
        end;

        RzFileListBox1.FileName := 'D:\JWS_READ_AND_BILL\jws_upload\'
      Except on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
    end;

    Label15.Caption := 'D:\';
  end;

  CheckAndroid();

end;

function TDownloadingNewReadingForm.GetDosOutput(CommandLine, Work: string): String;
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

procedure TDownloadingNewReadingForm.ListBox1DblClick(Sender: TObject);
begin
  AFileNameUpload := ListBox1.Items.Strings[ListBox1.ItemIndex];
  Memo2.Text := AFileNameUpload;
  Memo2.Font.Color := clGreen;
  Label12.Font.Color := clGreen;
end;

procedure TDownloadingNewReadingForm.LoadBillMonth;
begin
  With DownloadingNewReadingDataModule do begin
    qryBillMonth.First;
    Combobox3.Items.Clear;
    while not qryBillMonth.EOF do begin
      Combobox3.Items.Add(qryBillMonthBillMonth.AsString);
      qryBillMonth.Next;
    end;
  end;
end;

procedure TDownloadingNewReadingForm.LoadMeterReader;
begin
  with DownloadingNewReadingDataModule do begin
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

procedure TDownloadingNewReadingForm.LoadRoutes;
begin
  with DownloadingNewReadingDataModule do begin
    tblRoutes.First;
    Combobox2.Items.Clear;
    while Not tblRoutes.Eof do begin
      Combobox2.Items.Add(tblRoutesrouteaddress.AsString);
      tblRoutes.Next;
    end;
  end;
end;

procedure TDownloadingNewReadingForm.LoadTempBillMask(APath: String);
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
    Gauge1.MaxValue := AMemo.Count-1;
    Gauge1.Progress := 0;
    Gauge1.Visible := True;
    //vtConsumerAccountUpload.Clear;
    //vtConsumerAccountUpload.Open;
    with DownloadingNewReadingDataModule do begin
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
    with DownloadingNewReadingDataModule.qryGetConsumerAccount do begin
      Close;
      Open;
      First;
    end;

//  vtConsumerAccountUpload.Filtered := False;
//  vtConsumerAccountUpload.Filter := '';
//  vtConsumerAccountUpload.Filtered := True;
end;

procedure TDownloadingNewReadingForm.Memo2Change(Sender: TObject);
Var
 APath :String;
begin
  APath := '';
  if Memo2.Text <> 'None' then begin
    APath := 'sdcard/Android/data/com.systems.alltech.jws/files/'
  end else begin
    Label12.Font.Color := clred;
  end;
  Label12.Caption := APath+Memo2.Text;
  Label12.Font.Color := Memo2.Font.Color;
end;

procedure TDownloadingNewReadingForm.Memo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TDownloadingNewReadingForm.Panel14Click(Sender: TObject);
Var
  APathTo,ASettingsUpload,AFullPath:String;
Const
  JWS_Default : String = 'JWS_READ_AND_BILL\';
begin
  Panel14.Color := $00FFE0AC;
  if  Length(Edit3.Text)<>6 then begin
    raise Exception.Create('Bill Month is Not Presented to Look For Default Storage.');
  end;

  with SettingsDataModule do begin
    qrySettings.Close;
    qrySettings.Open;
    if qrySettings.Locate('settingsName','default_location_path_sqlite_to',[]) then begin
      APathTo := qrySettingssettingsvalue.AsString;
    end else begin
      APathTo := 'D:\' ;
    end;

    if qrySettings.Locate('settingsName','ftp_server_base_upload_dir',[]) then begin
      ASettingsUpload := qrySettingssettingsvalue.AsString;
    end else begin
      ASettingsUpload := 'jws_upload' ;
    end;
  end;
  AFullPath := APathTo + JWS_Default + ASettingsUpload+'\'+Trim(Edit3.Text)+'\';
  ADefaultDirectory := AFullPath;
  RzFileListBox1.Directory := ADefaultDirectory;
  Label15.Caption := APathTo;
  Panel13.Visible := False;
  EnabledDisable(not Panel13.Visible);
end;

procedure TDownloadingNewReadingForm.Panel14MouseEnter(Sender: TObject);
begin
  Panel14.Color := $00FFE0AC;
end;

procedure TDownloadingNewReadingForm.Panel14MouseLeave(Sender: TObject);
begin
  Panel14.Color := clWhite;
end;

procedure TDownloadingNewReadingForm.Panel15Click(Sender: TObject);
begin
  Panel15.Color := $00FFE0AC;
  Panel13.Visible := False;
  EnabledDisable(not Panel13.Visible);
end;

procedure TDownloadingNewReadingForm.Panel15MouseEnter(Sender: TObject);
begin
  Panel15.Color := $00FFE0AC;
end;

procedure TDownloadingNewReadingForm.Panel15MouseLeave(Sender: TObject);
begin
  Panel15.Color := clWhite;
end;

procedure TDownloadingNewReadingForm.Panel8Click(Sender: TObject);
begin
  Panel8.Color := $00FFE0AC;
  with DownloadingNewReadingDataModule do begin
    qryGetConsumerAccount.Filtered := False;
    qryGetConsumerAccount.Filter := 'RouteCode = '+QuotedStr(ARouteCode)+' AND MeterFindings <> "NONE" OR RouteCode = '+QuotedStr(ARouteCode)+' AND ReadingRemarks <> "NONE"';
    qryGetConsumerAccount.Filtered := True;

    if qryGetConsumerAccount.IsEmpty then begin
      MessageDlg('Cannot Be Filtered, Because Nothing needs to be Filtered!',mtInformation,[mbOK],0);
      qryGetConsumerAccount.Filtered := False;
    end;
    Panel4.Visible := False;
  end;
end;

procedure TDownloadingNewReadingForm.Panel8MouseEnter(Sender: TObject);
begin
  Panel8.Color := $00FFE0AC;
end;

procedure TDownloadingNewReadingForm.Panel8MouseLeave(Sender: TObject);
begin
  Panel8.Color := clWhite;
end;

procedure TDownloadingNewReadingForm.Panel9Click(Sender: TObject);
begin
 Panel9.Color := $00FFE0AC ;
 Panel4.Visible := False;
end;

procedure TDownloadingNewReadingForm.Panel9MouseEnter(Sender: TObject);
begin
  Panel9.Color := $00FFE0AC;
end;

procedure TDownloadingNewReadingForm.Panel9MouseLeave(Sender: TObject);
begin
  Panel9.Color := clWhite;
end;

function TDownloadingNewReadingForm.pullSQLiteDBToTablet(
const LPathTo,
  //LPathFrom,
  AFileName,
  //AMeterReaderName,
  //ABillMonth,
  ASettingsDownload,ABillMonth: String):String;
  Var
  //LastName,FNameLetter,CharName,
  LDestDir,SaveDir,AResult :String;
begin
    //LastName := Trim(SplitString(AMeterReaderName,'.')[1]);
    //FNameLetter :=Trim(SplitString(AMeterReaderName,'.')[0].Substring(0,1));
    //CharName :=  FNameLetter + '_' + LastName;
    if Length(LPathTo)<=3 then begin
      SaveDir := LPathTo.Substring(0,2) ;
    end else begin
      SaveDir := LPathTo;
    end;
    LDestDir := SaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY + ASettingsDownload + '\' + ABillMonth ; //+ ABillMonth + '\' + CharName ;

    if not DirectoryExists(LDestDir) then begin
      ForceDirectories(LDestDir);
    end;
    APathDirectory :=LDestDir;
  TDataDownloader.Download(Application.Handle,
    LDestDir + '\', //AppPath
    LDestDir + '\', //DestPath
    AFileName); //FileName

  if FileExists(LDestDir+'\'+AFileName) then begin
    AResult := 'Found';
  end else begin
    AResult := 'Not Found';
  end;

   Result := AResult;
end;

procedure TDownloadingNewReadingForm.RadioButton1Click(Sender: TObject);
begin
  GroupBox5.Visible := False;
  with GroupBox2 do begin
    Visible := True;
    Top := GroupBox5.Top;
    Left := GroupBox5.Left;
    Width := GroupBox5.Width;
    Height := GroupBox5.Height;
  end;
  BitBtn3.Enabled := False;
  RzBitBtn1.Enabled := False;
  Combobox2.Enabled := False;
  Edit3.Enabled := False;
  BitBtn2.Enabled := True;

end;

procedure TDownloadingNewReadingForm.RadioButton2Click(Sender: TObject);
begin
  GroupBox5.Visible := True;
  with GroupBox2 do begin
    Visible := False;
    Top := GroupBox5.Top;
    Left := GroupBox5.Left;
    Width := GroupBox5.Width;
    Height := GroupBox5.Height;
  end;
  BitBtn3.Enabled := True;
  RzBitBtn1.Enabled := True;
  Combobox2.Enabled := True;
  Edit3.Enabled := True;
  BitBtn2.Enabled := False;
end;

procedure TDownloadingNewReadingForm.RzBitBtn1Click(Sender: TObject);

begin
  with Panel13 do begin
    Left := 30;
    Top := 226;
  end;
  if Panel13.Visible then begin
    Panel13.Visible := False;
  end else begin
    Panel13.Visible := True;
    BitBtn3.Enabled := False;
  end;
  EnabledDisable(not Panel13.Visible);
end;

procedure TDownloadingNewReadingForm.RzFileListBox1DblClick(Sender: TObject);
begin
  AFileNameUpload := RzFileListBox1.Items[rzFileListBox1.ItemIndex];
  APathDirectory := RzFileListBox1.Directory;
  Label12.Caption := RzFileListBox1.FileName;

end;

procedure TDownloadingNewReadingForm.Select1Click(Sender: TObject);
begin
  if RadioButton1.Checked then begin
    AFileNameUpload := ListBox1.Items.Strings[ListBox1.ItemIndex];
    Memo2.Text := AFileNameUpload;
    Memo2.Font.Color := clGreen;
    Label12.Font.Color := clGreen;
  end else begin
    AFileNameUpload := RzFileListBox1.Items.ValueFromIndex[RzFileListBox1.ItemIndex];

  end;

end;

procedure TDownloadingNewReadingForm.ShowAllRecords1Click(Sender: TObject);
begin
  with DownloadingNewReadingDataModule.qryGetConsumerAccount do begin
    Close;
    Open;
    First;
  end;
end;

procedure TDownloadingNewReadingForm.Timer1Timer(Sender: TObject);

begin
  //Memo2.Text := 'None';
  //Memo2.Font.Color := clred;
  //Label12.Font.Color := clred;
  //AIpAddressAvailable := TCMDPromtUtil.getWlanIpAddress();
  //if TCMDPromtUtil.ConnectIpAddress(AIpAddressAvailable) then begin
  //  MessageDlg('WIRELESS CONNECT SUCCESSFULLY CONNECTED WITH DEVICE: '+AIpAddressAvailable+':5555',mtInformation,[mbClose],0);
  //  CheckAndroid('');
  //end else if AIpAddressAvailable.Contains('False') then begin
  //  Timer1.Enabled := False;
  //  MessageDlg('PLEASE DISCONNECT USB CORD TO CONNECT WIRELESSLY',mtInformation,[mbClose],0);
  //end else begin
   //CheckAndroid(Edit2.Text);
  //end;

end;

procedure TDownloadingNewReadingForm.Unselect1Click(Sender: TObject);
begin
  if RadioButton1.Checked then begin
    AFileNameUpload := '';
    Memo2.Text := 'None';
    Memo2.Font.Color := clRed;
    Label12.Font.Color := clred;
  end else begin

  end;
end;

procedure TDownloadingNewReadingForm.USBArrival(Sender: TObject);
begin
  if RadioButton1.Checked then begin
    Memo2.Text := 'None';
    Memo2.Font.Color := clred;
    Label12.Font.Color := clred;
    CheckAndroid('');
  end else begin

  end;
end;

procedure TDownloadingNewReadingForm.USBRemoval(Sender: TObject);
begin
  if RadioButton1.Checked then begin
    Memo2.Text := 'None';
    Memo2.Font.Color := clred;
    Label12.Font.Color := clred;
    CheckAndroid('');
  end else begin

  end;
end;

end.
