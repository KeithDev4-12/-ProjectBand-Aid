unit CreateScheduleFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, Vcl.Mask, RzEdit, RzDTP,
  Data.DB, MemDS, VirtualTable, RzButton, Vcl.Menus, Vcl.ExtCtrls, Vcl.FileCtrl,
  Vcl.Imaging.pngimage,UploadDownloadUnit,StrUtils;

type
  TCreateScheduleForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    edtBillMonth: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    BitBtn4: TBitBtn;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    popRouteAddress: TPopupMenu;
    Delete1: TMenuItem;
    Edit4: TMenuItem;
    popSchedule: TPopupMenu;
    Delete2: TMenuItem;
    Rename1: TMenuItem;
    Timer1: TTimer;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label6: TLabel;
    ComboBox3: TComboBox;
    GroupBox4: TGroupBox;
    DBGridEh1: TDBGridEh;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Shape1: TShape;
    GroupBox5: TGroupBox;
    DBGridEh4: TDBGridEh;
    GroupBox2: TGroupBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    Edit1: TEdit;
    Label8: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    BitBtn8: TBitBtn;
    ComboBox4: TComboBox;
    Edit3: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox6: TGroupBox;
    Memo1: TMemo;
    Shape5: TShape;
    Shape6: TShape;
    Label9: TLabel;
    Label10: TLabel;
    FileOpenDialog1: TFileOpenDialog;
    DataSource1: TDataSource;
    Shape7: TShape;
    BitBtn10: TBitBtn;
    Image1: TImage;
    Memo2: TMemo;
    Edit5: TEdit;
    Edit6: TEdit;
    Shape8: TShape;
    Shape9: TShape;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape10: TShape;
    Shape11: TShape;
    Edit7: TEdit;
    Shape12: TShape;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    N1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    vtCopyPaste: TVirtualTable;
    vtCopyPasteroutecode: TIntegerField;
    vtCopyPasteROUTEADDRESS: TWideStringField;
    vtCopyPastescheduleid: TIntegerField;
    vtCopyPasteREADINGSTARTDATE: TWideStringField;
    vtCopyPasteduration: TIntegerField;
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure BitBtn4Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure LoadRoutes();
    Procedure LoadMeterReader();
    procedure LoadScheduleName();

    procedure DBGridEh2SelectionChanged(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Delete2Click(Sender: TObject);
    procedure Rename1Click(Sender: TObject);
    Procedure RefreshSchedule(BillMonthVal,ScheduleIdVal:String);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure DBGridEh4SelectionChanged(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    Function GetPath(ValFieldName:String):String;
    procedure InitSQLiteDB(LPathTo,LPathFrom,AFileName,AMeterReaderName,ABillMonth,ASettingsDownload:String);
    function GetTheMeterReaderID(AString:String):String ;
    procedure pushSQLiteDBToTablet(const LPathTo,LPathFrom,AFileName,AMeterReaderName,ABillMonth,ASettingsDownload:String);
    procedure BitBtn10Click(Sender: TObject);
    procedure dsOpen(ADataSet:TDataSet);
    procedure openDataSetsAll();
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure edtBillMonthEnter(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  CreateScheduleForm: TCreateScheduleForm;
  CannotBeModified:Boolean;
  ScheduleId,MeterReaderId:String;
  FolderName,FileName:String;
  CopyTrigger:Boolean;

implementation

Uses CreateScheduleDataModuleUnit,InsertOtherParametersFormUnit,SettingsDataModuleUnit,
MainFormUnit,GetOldScheduleFormUnit,CommandPromtUnit,
GenerateDataModuleUnit,SQLiteFileUtilUnit,MainDataModuleUnit;

{$R *.dfm}

procedure TCreateScheduleForm.BitBtn10Click(Sender: TObject);
Var LocationPathFrom,LocationPathTo,ASettingsDownload: String;
begin
  LocationPathFrom := '';
  LocationPathTo := '';
  LocationPathFrom := GetPath('default_location_path_sqlite_from');
  LocationPathTo := GetPath('default_location_path_sqlite_to');
  with SettingsDataModule do begin
    qrySettings.Close;
    qrySettings.Open;
    qrySettings.First;
    if qrySettings.Locate('settingsname','ftp_server_base_download_dir',[]) then begin
      ASettingsDownload := qrySettings.FieldByName('SettingsValue').AsString ;
    end
    else begin
      ASettingsDownload := 'jws_download';
    end;
  end;

  if Length(Edit3.Text)<=4 then
    raise Exception.Create('Please select a Meter Reader!');

  if Edit3.Text = 'ALL METERREADER' then
    raise Exception.Create('Invalid Selection of Meter Reader!'+#13#10+'You selected All MeterReader');

  pushSQLiteDBToTablet(LocationPathTo,LocationPathFrom,'JWS_'+Edit1.Text,Edit3.Text,Edit1.Text,ASettingsDownload);
end;

procedure TCreateScheduleForm.BitBtn1Click(Sender: TObject);
Var
  LForm:TForm;
begin
   LForm := TGetOldScheduleForm.Create(Nil);
   try
     LForm.ShowModal;
   finally
     LForm.Free;
   end;
end;

procedure TCreateScheduleForm.BitBtn3Click(Sender: TObject);
begin
  if CannotBeModified=True then begin
   MessageDlg('Schedule Cannot be Modified',MtWarning,mbAbortIgnore,0);
   Exit;
  end;
end;

procedure TCreateScheduleForm.BitBtn4Click(Sender: TObject);
Var
 MonthVal,YearVal:Integer;
begin
  with CreateScheduleDataModule do begin
    if not (tblReadingSchedule.Locate('BillMonth',edtBillMonth.Text,[])) and (Length(edtBillMonth.Text) = 6) then begin
       tblReadingSchedule.Append;
       tblReadingSchedulebillmonth.AsString := edtBillMonth.Text;
       tblReadingScheduleroutecode.AsInteger := 0;
       tblReadingSchedulerouteaddress.AsString := '0';
       tblReadingSchedulereadingstartdate.AsString := '0';
       tblReadingSchedulescheduleid.AsInteger := 0;
       tblReadingScheduleposted.AsInteger := 0;
       tblReadingSchedule.Post;
       CannotBeModified:=False;
       Self.Caption := 'CreateScheduleForm (Inserting Data)';
    end else begin
    qryCheckReadingSchedule.Close;
    qryCheckReadingSchedule.ParamByName('ABILLMONTH').AsString := edtBillMonth.Text;
    qryCheckReadingSchedule.Open;
      if not qryCheckReadingSchedule.IsEmpty then begin
        if MessageDlg('Same BillMonth is Already Used, Want to Update?',mtWarning,mbYesNo,0) = mrYes then begin
           {MonthVal:=StrToInt(tblReadingSchedulebillmonth.AsString.Substring(0,2));
           YearVal:=StrToInt(tblReadingSchedulebillmonth.AsString.Substring(2,4));
           if (YearVal <= StrToInt(FormatDateTime('yyyy',Now()))) and (YearVal >= StrToInt(FormatDateTime('yyyy',Now()))-1) then begin
              if (MonthVal <= StrToInt(FormatDateTime('mm',Now()))) and (MonthVal >= StrToInt(FormatDateTime('mm',Now()))-1) then begin

              end else begin

              end;
           end else begin

           end;  }

           RefreshSchedule(edtBillMonth.Text,DBGridEh2.Columns.Items[0].DisplayText);
           if mainForm.BillMonthpass=edtBillMonth.Text then begin
             Self.Caption := 'CreateScheduleForm (Updating Get Data)';
             BitBtn2.Enabled := True;
           end else begin
             Self.Caption := 'CreateScheduleForm (Updating Data)' ;
             BitBtn2.Enabled := False;
           end;


           CannotBeModified:=False;
        end;
      end else begin
        MessageDlg('This Schedule Cannot be Updated/Modified.'+ #13#10+'Because this Schedule is Already Been Assigned to a Reader',MtInformation,mbOKCancel,0) ;
        Self.Caption := 'CreateScheduleForm (Viewing Only)';
        RefreshSchedule(edtBillMonth.Text,DBGridEh2.Columns.Items[0].DisplayText);
        CannotBeModified:=True;
      end;
    end;
  end;
end;

procedure TCreateScheduleForm.BitBtn5Click(Sender: TObject);
begin
  if CannotBeModified=True then begin
   MessageDlg('Schedule Cannot be Modified',MtWarning,mbAbortIgnore,0);
   Exit;
  end;

  with CreateScheduleDataModule do begin
    tblReadingSchedule.Filtered := False;
    if tblReadingSchedule.Locate('BillMonth;MeterReaderId',VarArrayOf([edtBillMonth.Text,MeterReaderId]),[]) then begin
      if MessageDlg('This will Change the Current Schedule '+#13#10+'to the selected Schedule in the Combobox.'+#13#10+'Want to Continue?',mtWarning,mbYesNo,0) = mrYes then begin
        if tblReadingSchedule.Locate('BillMonth;ScheduleId',VarArrayOf([edtBillMonth.Text,ScheduleId]),[]) then begin
           tblReadingSchedule.Filter := 'METERREADERID = ' + QuotedStr(MeterReaderId) + ' AND BILLMONTH LIKE ' + QuotedStr('%'+edtBillMonth.text+'%');
           tblReadingSchedule.Filtered := True;
           tblReadingSchedule.First;
           vtReadingSchedule.Clear;
           vtReadingSchedule.Close;
           vtReadingSchedule.Open;
           vtReadingSchedule.First;
           if not tblReadingSchedule.IsEmpty then begin
              while not tblReadingSchedule.EOF do begin
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
              while not vtReadingSchedule.EOF do begin
                 if tblReadingSchedule.Locate('BillMonth;MeterReaderId',VarArrayOf([edtBillMonth.Text,MeterReaderId]),[]) then begin
                   tblReadingSchedule.Edit;
                   tblReadingSchedulemeterreaderid.AsString := '0';
                   tblReadingSchedule.Post;
                 end;
                 vtReadingSchedule.Next;
              end;
               qryMeterReaderAssigned.Close;
               qryMeterReaderAssigned.ParamByName('ABillMonth').AsString := edtBillMonth.Text;
               qryMeterReaderAssigned.Open;
               qryMeterReaderAssigned.First;
           end;
        end;
      end;
    end;
    tblReadingSchedule.Filtered := False;
    if tblReadingSchedule.Locate('BillMonth;ScheduleId',VarArrayOf([edtBillMonth.Text,ScheduleId]),[]) then begin
       tblReadingSchedule.Filter := 'SCHEDULEID = ' + QuotedStr(ScheduleId) + ' AND BILLMONTH LIKE ' + QuotedStr('%'+edtBillMonth.text+'%');
       tblReadingSchedule.Filtered := True;
       tblReadingSchedule.First;
       vtReadingSchedule.Clear;
       vtReadingSchedule.Close;
       vtReadingSchedule.Open;
       vtReadingSchedule.First;
       if not tblReadingSchedule.IsEmpty then begin
          while not tblReadingSchedule.EOF do begin
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
          while not vtReadingSchedule.EOF do begin
             //showmessage(MeterReaderId);
             if tblReadingSchedule.Locate('BillMonth;ScheduleId;RouteCode',VarArrayOf([edtBillMonth.Text,ScheduleId,vtReadingScheduleroutecode.AsString]),[]) then begin
               tblReadingSchedule.Edit;
               tblReadingSchedulemeterreaderid.AsString := MeterReaderId;
               tblReadingSchedule.Post;
             end;
             vtReadingSchedule.Next;
          end;
           qryMeterReaderAssigned.Close;
           qryMeterReaderAssigned.ParamByName('ABillMonth').AsString := edtBillMonth.Text;
           qryMeterReaderAssigned.Open;
           qryMeterReaderAssigned.First;
       end;
    end;
  end;
end;

procedure TCreateScheduleForm.BitBtn6Click(Sender: TObject);
begin
  Self.Close;
  
end;

procedure TCreateScheduleForm.BitBtn7Click(Sender: TObject);
begin
  With CreateScheduleDataModule do begin
    qryPostAllRecord.Close;
    qryPostAllRecord.ParamByName('ABillMonth').AsString := edtBillMonth.Text;
    qryPostAllRecord.Open();
    qryPostAllRecord.First;
    qryPosted.Close;
    qryPosted.ParamByName('ABillMonth').AsString := edtBillMonth.Text;
    qryPosted.Open();
    qryPosted.First;

    if not qryPostAllRecord.IsEmpty then begin
      while not qryPostAllRecord.EOF do begin
        if qryPosted.Locate('id',qryPostAllRecordid.AsString,[]) then begin
          qryPosted.Edit;
          qryPostedPosted.AsInteger := 1;
          qryPosted.Post;
        end;
        qryPostAllRecord.Next;
      end;
      MessageDlg('Scheduling is Posted',mtInformation,mbOKCancel,0);
      tblReadingSchedule.Close;
      tblReadingSchedule.Open();
    end;
  end;
end;

procedure TCreateScheduleForm.BitBtn8Click(Sender: TObject);
Var LocationPathFrom,LocationPathTo,ASettingsDownload,ABillMOnth: String;

begin
  ABillMOnth := Edit1.Text;

  LocationPathFrom := '';
  LocationPathTo := '';
  LocationPathFrom := GetPath('default_location_path_sqlite_from');
  LocationPathTo := GetPath('default_location_path_sqlite_to');
  with SettingsDataModule do begin
    dsOpen(qrySettings);
    if qrySettings.Locate('settingsname','ftp_server_base_download_dir',[]) then begin
      ASettingsDownload := qrySettings.FieldByName('SettingsValue').AsString ;
    end
    else begin
      ASettingsDownload := 'jws_download';
    end;
    if qrySettings.Locate('settingsname','read_and_bill_settings_billing_month',[]) then begin
      qrySettings.Edit;
      qrySettingssettingsvalue.AsString := ABillMOnth.SubString(0,2);
      qrySettings.Post;
    end;

    if qrySettings.Locate('settingsname','read_and_bill_settings_billing_year',[]) then begin
      qrySettings.Edit;
      qrySettingssettingsvalue.AsString := ABillMOnth.SubString(2,4);
      qrySettings.Post;
    end;
  end;

  if not (CreateScheduleDataModule.tblReadingSchedule.Locate('BillMonth;Posted',VarArrayOf([Edit1.Text,'1']),[]))
  then begin
    Memo1.Lines.Add('Nothing to Generate.!') ;
    Memo1.Lines.Add('Please Create Schedule First, Before Generating This Bill Month') ;
    Exit;
  end;

  GenerateDataModule.tblSettings.CLose;
  GenerateDataModule.tblSettings.Open;
  GenerateDataModule.tblSettings.First;


  Memo1.Lines.Add('Generating Sqlite Database!!') ;
  with GenerateDataModule do begin
    if UPPERCASE(Edit3.Text) <> 'ALL METERREADER' then begin
      // meaning Selected Meter Reader Only

      tblReadingSchedule.Close;
      tblReadingSchedule.ParamByName('AMeterReaderID').AsString := MeterReaderId;
      tblReadingSchedule.ParamByName('ABillmonth').AsString := Edit1.Text;
      //tblReadingSchedule.Filter := 'SCHEDULEID = ' + QuotedStr(ScheduleId) + ' AND BILLMONTH LIKE ' + QuotedStr('%'+edtBillMonth.text+'%');
      tblReadingSchedule.Open ;
      tblReadingSchedule.First;

      if not tblReadingSchedule.IsEmpty then begin
        //TSQLiteFileUtil.CreateSQLiteDB();


        InitSQLiteDB(LocationPathTo,LocationPathFrom,'JWS_'+Edit1.Text,Combobox4.Text,Edit1.Text,ASettingsDownload);
        qeyDeleteRec.Close;
        qeyDeleteRec.Execute();
        vtConsumerAccount.Clear;
        vtConsumerAccount.Close;
        vtConsumerAccount.Open;
        //INSERT CONSUMER ACCOUNT
        while not tblReadingSchedule.Eof do begin
          ExecuteConsumerAccount(tblReadingSchedulerouteaddress.AsString);
          tblReadingSchedule.Next;
        end;
        ConsumerBatchMove.Execute;
        //INSERT Field Findings
        ExecuteFieldFindings();
        //INSERT METER READER
        ExecuteMeterReader(MeterReaderId);
        //INSERT READING SCHEDULE (NOT = NOT ALL METERREADER ; ALL = ALL METERREADER)
        ExecuteReadingSchedule(MeterReaderId,Edit1.Text);
        //INSERT ROUTE
        ExecuteRoute ;
        //INSERT SETTINGS
        ExecuteSettings;
        //INSERT WATER RATE
        ExecuteWaterRate;
        //INSERT BILLEXEMPT
        ExecuteBillExempt;
        //INSERT CONSUMER EXEMPT
        ExecuteConsumerExempt;
        Memo1.Lines.Add('Path File : '+TSQLiteFileUtil.GetSqliteDirectory(LocationPathTo,Edit3.Text,Edit1.text,ASettingsDownload));
        Memo1.Lines.Add('Done Generating Data For Meter Reader ['+ ComboBox4.Text +'] !!') ;

        //InitSQLiteDB(LocationPathTo,LocationPathFrom,'JWS_'+Edit1.Text,Combobox4.Text,Edit1.Text,ASettingsDownload);
      end;
    end else begin
      // meaning ALL METERREADER
      with CreateScheduleDataModule do begin
        qryMeterReader.First;
        while Not qryMeterReader.EOF do begin

          GenerateDataModule.tblReadingSchedule.Close;
          GenerateDataModule.tblReadingSchedule.ParamByName('AMeterReaderID').AsString := qryMeterReaderid.AsString;
          GenerateDataModule.tblReadingSchedule.ParamByName('ABillmonth').AsString := Edit1.Text;
          //tblReadingSchedule.Filter := 'SCHEDULEID = ' + QuotedStr(ScheduleId) + ' AND BILLMONTH LIKE ' + QuotedStr('%'+edtBillMonth.text+'%');
          GenerateDataModule.tblReadingSchedule.Open ;
          GenerateDataModule.tblReadingSchedule.First;
          if not GenerateDataModule.tblReadingSchedule.IsEmpty then begin

            InitSQLiteDB(LocationPathTo,LocationPathFrom,'JWS_'+Edit1.Text,qryMeterReaderName.AsString,Edit1.Text,ASettingsDownload);
            GenerateDataModule.qeyDeleteRec.Close;
            GenerateDataModule.qeyDeleteRec.Execute();
            vtConsumerAccount.Clear;
            vtConsumerAccount.Close;
            vtConsumerAccount.Open;
            //INSERT CONSUMER ACCOUNT
            while not GenerateDataModule.tblReadingSchedule.Eof do begin
              ExecuteConsumerAccount(GenerateDataModule.tblReadingSchedulerouteaddress.AsString);
              GenerateDataModule.tblReadingSchedule.Next;
            end;
            ConsumerBatchMove.Execute;
            //INSERT Field Findings
            ExecuteFieldFindings();
            //INSERT METER READER
            ExecuteMeterReader(qryMeterReaderid.AsString);
            //INSERT READING SCHEDULE (NOT = NOT ALL METERREADER ; ALL = ALL METERREADER)
            ExecuteReadingSchedule(qryMeterReaderid.AsString,Edit1.Text);
            //INSERT ROUTE
            ExecuteRoute ;
            //INSERT SETTINGS
            ExecuteSettings;
            //INSERT WATER RATE
            ExecuteWaterRate;
            Memo1.Lines.Add('Path File : '+TSQLiteFileUtil.GetSqliteDirectory(LocationPathTo,qryMeterReaderNAME.AsString,Edit1.text,ASettingsDownload));

          end;
           qryMeterReader.Next;
        end;
      end;
       Memo1.Lines.Add('Done Generating Data for All Meter Reader!!') ;
    end;
  end;
  MainDataModule.SQLiteJWSMobileConn.Connected := False;
  Label9.Caption := 'Done!';
end;

procedure TCreateScheduleForm.ComboBox1Change(Sender: TObject);
begin
  Edit7.Text := ComboBox1.Text;
end;

procedure TCreateScheduleForm.ComboBox2Change(Sender: TObject);
begin

  GetTheMeterReaderID(Combobox2.Text);
  Edit5.Text := Combobox2.Text;
end;

procedure TCreateScheduleForm.ComboBox3Change(Sender: TObject);
begin
  Edit6.Text := Combobox3.Text;
  with CreateScheduleDataModule do begin
    if tblInsertScheduleName.Locate('ScheduleName',Combobox3.Text,[]) then begin
      ScheduleId := tblInsertScheduleNameid.AsString;
      RefreshSchedule(edtBillMonth.Text,ScheduleId);
    end else begin
      ScheduleId := '0';
      qryRouteAssigned.Close;
    end;
  end;
end;

procedure TCreateScheduleForm.ComboBox4Change(Sender: TObject);
begin
  Edit3.Text := Combobox4.Text;
  Memo1.Lines.Add('Selected Meter Reader Is : '+ Edit3.Text);
  GetTheMeterReaderID(ComboBox4.Text);
end;

procedure TCreateScheduleForm.ComboBox4Click(Sender: TObject);
begin
  if Edit1.Focused then begin
    Shape2.Pen.Color := clBlue;
    Shape3.Pen.Color := cl3DDkShadow;
  end else if Combobox4.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := clBlue;
  end
end;

procedure TCreateScheduleForm.Copy1Click(Sender: TObject);
begin
  CopyTrigger := True;
  vtCopyPaste.Close;
  vtCopyPaste.Open;
  vtCopyPaste.Clear;
  With CreateScheduleDataModule do begin
    qryRouteAssigned.First;
    while not qryRouteAssigned.EOF do begin
      vtCopyPaste.Insert;
      vtCopyPasteroutecode.AsInteger := qryRouteAssignedroutecode.AsInteger;
      vtCopyPasteROUTEADDRESS.AsString := qryRouteAssignedROUTEADDRESS.AsString;
      vtCopyPastescheduleid.AsInteger := qryRouteAssignedscheduleid.AsInteger;
      vtCopyPasteREADINGSTARTDATE.AsString := qryRouteAssignedREADINGSTARTDATE.AsString;
      vtCopyPasteduration.AsInteger := qryRouteAssignedduration.AsInteger;
      vtCopyPaste.Post;
      qryRouteAssigned.Next;
    end;
  end;
  Paste1.Enabled := True;
end;

procedure TCreateScheduleForm.DBGridEh2CellClick(Column: TColumnEh);
begin
  RefreshSchedule(edtBillMonth.Text,DBGridEh2.Columns.Items[0].DisplayText);
end;

procedure TCreateScheduleForm.DBGridEh2SelectionChanged(Sender: TObject);
begin
  RefreshSchedule(edtBillMonth.Text,DBGridEh2.Columns.Items[0].DisplayText);
end;

procedure TCreateScheduleForm.DBGridEh4CellClick(Column: TColumnEh);
begin
  if Length(DBGridEh4.Columns.Items[0].DisplayText)=0 then Exit;

  RefreshSchedule(edtBillMonth.Text,DBGridEh4.Columns.Items[9].DisplayText);
end;

procedure TCreateScheduleForm.DBGridEh4SelectionChanged(Sender: TObject);
begin
  RefreshSchedule(edtBillMonth.Text,DBGridEh4.Columns.Items[9].DisplayText);
end;

procedure TCreateScheduleForm.Delete1Click(Sender: TObject);
begin
  with CreateScheduleDataModule do begin
    if CannotBeModified=True then begin
      MessageDlg('Schedule Cannot be Modified',MtWarning,mbAbortIgnore,0);
      Exit;
    end;
    if tblReadingSchedule.Locate('BillMonth;RouteCode;ScheduleId',VarArrayOf([edtBillMonth.Text,DBGridEh3.Columns.Items[0].DisplayText,DBGridEh2.Columns.Items[0].DisplayText]),[]) then begin
      tblReadingSchedule.Delete;
      RefreshSchedule(edtBillMonth.Text,DBGridEh2.Columns.Items[0].DisplayText);
    end;
  end;
end;

procedure TCreateScheduleForm.Delete2Click(Sender: TObject);
begin
  if CannotBeModified=True then begin
    MessageDlg('Schedule Cannot be Modified',MtWarning,mbAbortIgnore,0);
    Exit;
  end;
  with CreateScheduleDataModule do begin
    qryCheckScheduleName.Close;
    qryCheckScheduleName.ParamByName('ScheduleId').AsString := DBGridEh2.Columns.Items[0].DisplayText  ;
    qryCheckScheduleName.Open();
    if qryCheckScheduleName.isEmpty then begin
      if tblInsertScheduleName.Locate('ScheduleId',DBGridEh2.Columns.Items[0].DisplayText,[]) then begin
         tblInsertScheduleName.Delete;
         qryInsertScheduleName.Close;
         qryInsertScheduleName.Open;
      end;
    end;
  end;
end;

procedure TCreateScheduleForm.dsOpen(ADataSet: TDataSet);
begin
  ADataSet.Close;
  ADataSet.Open;
  ADataSet.First;
end;

procedure TCreateScheduleForm.Edit1Click(Sender: TObject);
begin
  if Edit1.Focused then begin
    Shape2.Pen.Color := clBlue;
    Shape3.Pen.Color := cl3DDkShadow;
  end else if Combobox1.Focused then begin
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := clBlue;
  end

end;

procedure TCreateScheduleForm.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 Var
   OutValueBillMonth:Integer;
begin
  if TryStrToInt(Edit1.Text,OutValueBillMonth) then begin
    if Length(Edit1.Text) =6 then begin
    CreateScheduleDataModule.qryBillMonth2.Close;
    CreateScheduleDataModule.qryBillMonth2.Open;
      if not CreateScheduleDataModule.qryBillMonth2.Locate('BillMonth',Edit1.Text,[]) then begin
        MessageDlg('BillMonth is not Available'+ #13#10 +'Please Remember to Create First Before Generating Data.',mtInformation,mbOKCancel,0);
      end;
    end;
  end else begin
    if Key IN [VK_BACK] then begin
      Exit;
    end;
    Edit1.Clear;
  end;

end;


procedure TCreateScheduleForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key IN [#13] then begin
     if (Length(Edit2.Text) <> 0) And (Length(edtBillMonth.Text) <> 0)  then begin
       with CreateScheduleDataModule do begin
         if not TblInsertScheduleName.Locate('ScheduleName',Edit2.Text,[]) then begin
           TblInsertScheduleName.Close;
           TblInsertScheduleName.Open;
           TblInsertScheduleName.Append;
           tblInsertScheduleNameScheduleName.AsString := Edit2.text;
           TblInsertScheduleName.Post;
           qryInsertScheduleName.Close;
           qryInsertScheduleName.Open;
           Edit2.Clear;
         end else begin
           MessageDlg('Already Inserted Schedule Name',mtWarning,mbOKCancel,0)
         end;
       end;
    end;
  end;
end;

procedure TCreateScheduleForm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 Key := #0;
end;

procedure TCreateScheduleForm.Edit4Click(Sender: TObject);
begin
    if CannotBeModified=True then begin
      MessageDlg('Schedule Cannot be Modified',MtWarning,mbAbortIgnore,0);
      Exit;
    end;
    RzBitBtn1Click(Sender);
end;

procedure TCreateScheduleForm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TCreateScheduleForm.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TCreateScheduleForm.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TCreateScheduleForm.edtBillMonthEnter(Sender: TObject);
begin
  if edtBillMonth.Focused then begin
    Shape10.Pen.Color := clBlue;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape8.Pen.Color := cl3DDkShadow;
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
  end else if Edit2.Focused then begin
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := clBlue;
    Shape12.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape8.Pen.Color := cl3DDkShadow;
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
  end else if Combobox1.Focused then begin
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := clBlue;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape8.Pen.Color := cl3DDkShadow;
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
  end else if Combobox2.Focused then begin
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := clBlue;
    Shape8.Pen.Color := cl3DDkShadow;
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
  end else if Combobox2.Focused then begin
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape8.Pen.Color := clBlue;
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := cl3DDkShadow;
  end else if Combobox4.Focused then begin
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape8.Pen.Color := cl3DDkShadow;
    Shape2.Pen.Color := cl3DDkShadow;
    Shape3.Pen.Color := clBlue;
  end else if Edit1.Focused then begin
    Shape10.Pen.Color := cl3DDkShadow;
    Shape11.Pen.Color := cl3DDkShadow;
    Shape12.Pen.Color := cl3DDkShadow;
    Shape9.Pen.Color := cl3DDkShadow;
    Shape8.Pen.Color := cl3DDkShadow;
    Shape2.Pen.Color := clBlue;
    Shape3.Pen.Color := cl3DDkShadow;
  end;
end;

procedure TCreateScheduleForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  With CreateScheduleDataModule do begin
    qryPostAllRecord.Close;
    qryPostAllRecord.ParamByName('ABillMonth').AsString := edtBillMonth.Text;
    qryPostAllRecord.Open();
    qryPostAllRecord.First;
    qryPosted.Close;
    qryPosted.ParamByName('ABillMonth').AsString := edtBillMonth.Text;
    qryPosted.Open();
    qryPosted.First;

    if not qryPostAllRecord.IsEmpty then begin
      if MessageDlg('This will Clear all Schedule Created'+#13#10+'Are you sure you want to Close this Form?',mtWarning,[mbYes,mbNo],0) = mrYes then begin
        while not qryPostAllRecord.EOF do begin
          if qryPosted.Locate('id',qryPostAllRecordid.AsString,[]) then begin
            qryPosted.Delete;
          end;
          qryPostAllRecord.Next;
        end;
        MessageDlg('Scheduling is Cancelled',mtInformation,mbOKCancel,0);
        MainDataModule.SqlDesktopConnect(False);
      end;
    end;
  end;

end;

procedure TCreateScheduleForm.FormShow(Sender: TObject);
begin
   MainDataModule.SqlDesktopConnect(True);
   openDataSetsAll();
   PageControl1.ActivePageIndex := 0;
   LoadRoutes();
   LoadMeterReader();
   LoadScheduleName();
   CopyTrigger:=False;
   vtCopyPaste.Close;
   vtCopyPaste.Open;
end;

function TCreateScheduleForm.GetPath(ValFieldName: String): String;
begin
  with CreateScheduleDataModule do begin
  tblSettings.Close;
  tblSettings.Open();
    if tblSettings.Locate('SettingsName',ValFieldName,[]) then begin
      result := tblSettingssettingsvalue.AsString;
    end;
  end;
end;

function TCreateScheduleForm.GetTheMeterReaderID(AString:String): String;
begin
  with CreateScheduleDataModule do begin
    if qryMeterReader.Locate('Name',AString,[]) then begin
      MeterReaderId := qryMeterReaderid.AsString;
    end else begin
      MeterReaderId := '0';
    end;
  end;
  Result := MeterReaderId ;
end;

procedure TCreateScheduleForm.InitSQLiteDB(LPathTo,LPathFrom,AFileName,AMeterReaderName,ABillMonth,ASettingsDownload:String);
begin
  MainDataModule.SQLiteJWSMobileConn.Connected := false;
  TSQLiteFileUtil.CreateSQLiteDB(LPathTo,LPathFrom,AFileName,AMeterReaderName,ABillMonth,ASettingsDownload);
  MainDataModule.SQLiteJWSMobileConn.Params.Database := TSQLiteFileUtil.GetSqliteDirectory(LPathTo,AMeterReaderName,ABillMonth,ASettingsDownload);
  MainDataModule.SQLiteJWSMobileConn.Connected := True;
end;

procedure TCreateScheduleForm.LoadMeterReader;
begin
  with CreateScheduleDataModule do begin
     qryMeterReader.Close;
     qryMeterReader.Open;
     qryMeterReader.First;
     ComboBox2.Items.Clear;
     ComboBox4.Items.Clear;
     Combobox4.Items.Add('ALL METERREADER');
     while not qryMeterReader.EOF do begin
       ComboBox2.Items.Add(qryMeterReaderNAME.AsString);
       ComboBox4.Items.Add(qryMeterReaderNAME.AsString);
       qryMeterReader.Next;
     end;
   end;
end;

procedure TCreateScheduleForm.LoadScheduleName;
begin
   with CreateScheduleDataModule do begin
     qryScheduleRepresentation.Close;
     qryScheduleRepresentation.ParamByName('ABillMonth').AsString := edtBillMonth.Text;
     qryScheduleRepresentation.Open;
     qryScheduleRepresentation.First;
     ComboBox3.Items.Clear;
     while not qryScheduleRepresentation.EOF do begin
       ComboBox3.Items.Add(qryScheduleRepresentationSCHEDULENAME.AsString);
       qryScheduleRepresentation.Next;
     end;
   end;
end;

procedure TCreateScheduleForm.openDataSetsAll;
begin
 with CreateScheduleDataModule do begin
  dsOpen(qryRoute);
  dsOpen(tblInsertScheduleName);
  dsOpen(qryInsertScheduleName);
  dsOpen(tblSettings);
  dsOpen(qryMeterReader);
  dsOpen(qryScheduleRepresentation);
  dsOpen(qryCheckBillMonth);
  dsOpen(tblReadingSchedule);
  dsOpen(vtReadingSchedule);
  dsOpen(qryCheckReadingSchedule);
  dsOpen(qryBillMonth);
  dsOpen(qryCheckScheduleName);
  dsOpen(qryBillMonth2);
 end;
end;

procedure TCreateScheduleForm.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 1 then begin
     if Length(edtBillMonth.Text) >= 6 then begin
       ComboBox2.Enabled := True;
       Combobox3.Enabled := True;
       GroupBox5.Caption := 'Meter Reader Record Status ('+edtBillMonth.Text+')' ;
       with CreateScheduleDataModule do begin
         qryMeterReaderAssigned.Close;
         qryMeterReaderAssigned.ParamByName('ABillMonth').AsString := edtBillMonth.Text;
         qryMeterReaderAssigned.Open;
         qryMeterReaderAssigned.First;
       end;
       LoadScheduleName();
     end;
  end;

end;

procedure TCreateScheduleForm.Paste1Click(Sender: TObject);
Var
  StatusPost:String;
begin
  if vtCopyPastescheduleid.AsString <> DBGridEh2.Columns.Items[0].DisplayText then begin
      with CreateScheduleDataModule do begin
      vtCopyPaste.First;
      while not vtCopyPaste.EOF do begin
        if tblReadingSchedule.Locate('BillMonth;RouteCode;ScheduleId',VarArrayOf([edtBillMonth.Text,vtCopyPasteroutecode.AsString,DBGridEh2.Columns.Items[0].DisplayText]),[]) then begin
          if Messagedlg('Same Route Already Added This will Update'+#13#10+' the Old Schedule is That Okay?',mtInformation,mbOKCancel,0) = mrOk then begin
            tblReadingSchedule.Edit;
            StatusPost:='Updated';
          end else begin
            tblReadingSchedule.Cancel;
            StatusPost:='Cancel';
            Exit;
          end;
        end else begin
          if tblReadingSchedule.Locate('ScheduleId;BillMonth',VarArrayOf([0,edtBillMonth.Text]),[]) then begin
            tblReadingSchedule.Edit;
            StatusPost:='Updated';
          end else begin
            tblReadingSchedule.Append;
            StatusPost:='Inserted';
          end;
        end;




        qryCountConsumer.Close;
        qryCountConsumer.ParamByName('AROUTEADDRESS').AsString := vtCopyPasteROUTEADDRESS.AsString;
        qryCountConsumer.Open();
        qryCountConsumer.Last;


        tblReadingSchedulebillmonth.AsString := edtBillMonth.text;
        tblReadingScheduleroutecode.AsString := vtCopyPasteroutecode.AsString;
        tblReadingSchedulerouteaddress.AsString := vtCopyPasteROUTEADDRESS.AsString ;
        tblReadingScheduletotalconsumer.AsInteger := qryCountConsumerCountConsumer.AsInteger;
        tblReadingSchedulereadingstartdate.AsString  := vtCopyPasteREADINGSTARTDATE.AsString;
        tblReadingScheduleduration.AsInteger := vtCopyPasteduration.AsInteger;
        tblReadingSchedulescheduleid.AsInteger := StrToInt(DBGridEh2.Columns.Items[0].DisplayText);
        tblReadingSchedulemeterreaderid.AsInteger := 0 ;
        tblReadingScheduleposted.AsInteger := 0 ;
        tblReadingSchedule.Post;

        with CreateScheduleDataModule do begin
          qryRouteAssigned.Close;
          qryRouteAssigned.ParamByName('ABillMonth').AsString := edtBillMonth.Text;
          qryRouteAssigned.Open();
          qryRouteAssigned.Filtered := False;
          qryRouteAssigned.Filter := 'SCHEDULEID = ' + QuotedStr(DBGridEh2.Columns.Items[0].DisplayText);
          qryRouteAssigned.Filtered := True;
        end;
        if StatusPost = 'Inserted' then
          MessageDlg('Succesfully Inserted Data',mtInformation,mbOKCancel,0)
        else if StatusPost = 'Updated' then
          MessageDlg('Succesfully Updated Data',mtInformation,mbOKCancel,0);

      vtCopyPaste.Next;
      end;
    end;
    CopyTrigger:= False;
  end;
end;


procedure TCreateScheduleForm.pushSQLiteDBToTablet(const LPathTo,LPathFrom,AFileName,AMeterReaderName,ABillMonth,ASettingsDownload:String);
Var
  LastName,FNameLetter,CharName,LDestDir,SaveDir,ResultCommand :String;
Const
  TABLET_DEFAULT_UPLOAD_LOCATION = '/sdcard/Android/data/com.systems.alltech.jws/files/';
begin
    LastName := Trim(SplitString(AMeterReaderName,'.')[1]);
    FNameLetter :=Trim(SplitString(AMeterReaderName,'.')[0].Substring(0,1));
    CharName :=  FNameLetter + '_' + LastName;
    if Length(LPathTo)<=3 then begin
      SaveDir := LPathTo.Substring(0,2) ;
    end else begin
      SaveDir := LPathTo;
    end;
    LDestDir := SaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY + ASettingsDownload + '\' + ABillMonth + '\' + CharName ;

    if not FileExists(LDestDir + '\' + SQLITE_DB_FILENAME + SQLITE_DB_EXT) then begin
      Memo1.Lines.Add('Files is not Existing : Please Generate First before Pushing Data!');
      MessageDlg('Files is not Existing. '+#10#13+'Please Generate First before Pushing Data!',mtError,[mbOk],0);
      Exit;
    end;

    //TDataUploader.Upload(Application.Handle,
    //  LDestDir + '\',
    //  LDestDir + '\' + SQLITE_DB_FILENAME + SQLITE_DB_EXT);
   Memo2.Text := TCMDPromtUtil.GetDosOutput('adb push "'+LDestDir + '\' + SQLITE_DB_FILENAME + SQLITE_DB_EXT+'" "'+TABLET_DEFAULT_UPLOAD_LOCATION+'"');
   Memo1.Lines.Add('PUSHING SQLite File!');
   if ContainsText(Memo2.Text,'error') then begin
     Memo2.Text := ReplaceText(Memo2.Text,'error:','|');
     MessageDlg('An Error has occured while transferring Data'+ #13#10+'Error occured : '+SplitString(Memo2.Text,'|')[1],mtError,[mbOK],0);
     Memo1.Lines.Add('An Error has occured while transferring Data!');
   end else if StrToInt(Trim((SplitString(Memo2.Text,':')[2]).SubString(0,3))) > 0 then  begin
     MessageDlg('File Pushed Successfully ' + #13#10 + '['+ Trim(SplitString(Memo2.Text,':')[2])+']',mtInformation,[mbOK],0);
     Memo1.Lines.Add('File Pushed Successfully : '+'['+ Trim(SplitString(Memo2.Text,':')[2])+']');
   end;
end;

procedure TCreateScheduleForm.LoadRoutes;
begin
   with CreateScheduleDataModule do begin
     qryRoute.Close;
     qryRoute.Open;
     qryRoute.First;
     ComboBox1.Items.Clear;
     while not qryRoute.EOF do begin
       ComboBox1.Items.Add(qryRouteROUTEADDRESS.AsString);
       qryRoute.Next;
     end;
   end;
end;

procedure TCreateScheduleForm.RefreshSchedule(BillMonthVal,ScheduleIdVal:String);
begin
   with CreateScheduleDataModule do begin
     qryRouteAssigned.Close;
     qryRouteAssigned.ParamByName('ABILLMONTH').AsString := BillMonthVal;
     qryRouteAssigned.Open();
     qryRouteAssigned.First;
     qryRouteAssigned.Filtered := False;
     qryRouteAssigned.Filter := 'SCHEDULEID = ' + QuotedStr(ScheduleIdVal);
     qryRouteAssigned.Filtered := True;
   end;
end;

procedure TCreateScheduleForm.Rename1Click(Sender: TObject);
Var RenameScheduleValue:String;
begin
    if CannotBeModified=True then begin
      MessageDlg('Schedule Cannot be Modified',MtWarning,mbAbortIgnore,0);
      Exit;
    end;
    with CreateScheduleDataModule do begin
      if tblInsertScheduleName.Locate('ScheduleId',DBGridEh2.Columns.Items[0].DisplayText,[]) then begin
        if InputQuery('Entry Name', 'To Rename this Schedule Please Put the disired Name.', RenameScheduleValue) then begin
          tblInsertScheduleName.Edit;
          tblInsertScheduleNameScheduleName.AsString := Trim(RenameScheduleValue);
          tblInsertScheduleName.Post;
        end;
        qryInsertScheduleName.Close;
        qryInsertScheduleName.Open;
      end;
    end;

end;

procedure TCreateScheduleForm.RzBitBtn1Click(Sender: TObject);
Var
  LForm: TForm;
begin
   with CreateScheduleDataModule do begin
      with InsertOtherParametersForm do begin
         LForm := TInsertOtherParametersForm.Create(Nil);
         try
           if CannotBeModified=True then begin
             MessageDlg('Schedule Cannot be Modified',MtWarning,mbAbortIgnore,0);
             Exit;
           end;
           if qryRoute.Locate('ROUTEADDRESS',ComboBox1.Text,[]) then begin
             MainForm.BillMonth := edtBillMonth.Text;
             MainForm.ScheduleId := DBGridEh2.Columns.Items[0].DisplayText;
             MainForm.RouteCode := qryRouteroutecode.AsString;
             MainForm.RouteAddressVal := qryRouteROUTEADDRESS.AsString;
             LForm.ShowModal;
           end;
         finally
           LForm.Free;
         end;
      end;
   end;
end;

procedure TCreateScheduleForm.RzBitBtn2Click(Sender: TObject);
begin
   if (Length(Edit2.Text) <> 0) And (Length(edtBillMonth.Text) <> 0)  then begin
       with CreateScheduleDataModule do begin
         if CannotBeModified=True then begin
           MessageDlg('Schedule Cannot be Modified',MtWarning,mbAbortIgnore,0);
           Exit;
         end;
         if not TblInsertScheduleName.Locate('ScheduleName',Edit2.Text,[]) then begin
           TblInsertScheduleName.Close;
           TblInsertScheduleName.Open;
           TblInsertScheduleName.Append;
           tblInsertScheduleNameScheduleName.AsString := Edit2.text;
           TblInsertScheduleName.Post;
           qryInsertScheduleName.Close;
           qryInsertScheduleName.Open;
           Edit2.Clear;
         end else begin
           MessageDlg('Already Inserted Schedule Name',mtWarning,mbOKCancel,0)
         end;
       end;
    end;
end;

procedure TCreateScheduleForm.Timer1Timer(Sender: TObject);
begin
  if Length(MainForm.BillMonthToProcess) <> 0 then begin
     with CreateScheduleDataModule do begin
       edtBillMonth.Text := MainForm.BillMonthpass;
       RefreshSchedule(edtBillMonth.Text,DBGridEh2.Columns.Items[0].DisplayText);
       if mainForm.BillMonthpass=edtBillMonth.Text then begin
         Self.Caption := 'CreateScheduleForm (Updating Get Data)';
         BitBtn2.Enabled := True;
       end else begin
         Self.Caption := 'CreateScheduleForm (Updating Data)';
         BitBtn2.Enabled := False;
       end;
       CannotBeModified:=False;
       MainForm.BillMonthToProcess := '';
     end;

  end;
end;

end.
