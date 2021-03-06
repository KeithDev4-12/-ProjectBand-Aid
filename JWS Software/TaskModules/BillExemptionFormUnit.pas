unit BillExemptionFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, RzButton, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus;

type
  TBillExemptionForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Shape1: TShape;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Shape2: TShape;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Shape3: TShape;
    ComboBox3: TComboBox;
    Edit3: TEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label4: TLabel;
    Shape4: TShape;
    ComboBox4: TComboBox;
    Edit4: TEdit;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label5: TLabel;
    Edit5: TEdit;
    Shape5: TShape;
    BitBtn2: TBitBtn;
    RzBitBtn1: TRzBitBtn;
    Panel13: TPanel;
    DBGridEh1: TDBGridEh;
    dsConsumer: TDataSource;
    qryConsumer: TFDQuery;
    DBGridEh2: TDBGridEh;
    qryExempt: TFDQuery;
    dsExempt: TDataSource;
    Label6: TLabel;
    Edit6: TEdit;
    Shape6: TShape;
    Label7: TLabel;
    Shape7: TShape;
    Label8: TLabel;
    Edit8: TEdit;
    Shape8: TShape;
    ComboBox5: TComboBox;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qryRouteAddress: TFDQuery;
    qryRouteAddressid: TFDAutoIncField;
    qryRouteAddressroutecode: TIntegerField;
    qryRouteAddressrouteaddress: TWideMemoField;
    qryExemptionView: TFDQuery;
    Panel17: TPanel;
    DBGridEh3: TDBGridEh;
    dsExemption: TDataSource;
    BitBtn5: TBitBtn;
    Panel18: TPanel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Shape9: TShape;
    ComboBox6: TComboBox;
    Edit7: TEdit;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    PopupMenu1: TPopupMenu;
    IndividualRemove1: TMenuItem;
    MultipleRemove1: TMenuItem;
    tblConsumerAccountExcempt: TFDTable;
    tblConsumerAccountExcemptaccountno: TWideMemoField;
    tblConsumerAccountExcemptaccountname: TWideMemoField;
    tblConsumerAccountExcemptroutecode: TIntegerField;
    tblConsumerAccountExcemptbillexempt: TIntegerField;
    qryConsumerid: TFDAutoIncField;
    qryConsumerAccountNo: TWideStringField;
    qryConsumerAccountName: TWideStringField;
    qryConsumerRouteSequence: TWideStringField;
    qryConsumerRouteAddress: TWideStringField;
    qryExemptAccountNo: TWideStringField;
    qryExemptAccountName: TWideStringField;
    qryExemptroutecode: TIntegerField;
    qryExemptexemptName: TWideStringField;
    qryExemptdescription: TWideStringField;
    qryExemptstatus: TWideStringField;
    Edit9: TEdit;
    qryExemption: TFDTable;
    qryExemptionid: TFDAutoIncField;
    qryExemptionexemptname: TWideMemoField;
    qryExemptiondescription: TWideMemoField;
    qryExemptionstatus: TWideMemoField;
    qryExemptionViewid: TFDAutoIncField;
    qryExemptionViewexemptname: TWideStringField;
    qryExemptionViewdescription: TWideStringField;
    qryExemptionViewstatus: TWideStringField;
    tblConsumerAccountExcemptid: TFDAutoIncField;
    tblConsumerExcemptDelete: TFDTable;
    WideMemoField1: TWideMemoField;
    WideMemoField2: TWideMemoField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FDAutoIncField1: TFDAutoIncField;
    PopupMenu2: TPopupMenu;
    Delete1: TMenuItem;
    procedure PageControl1Change(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure LoadRoutes();
    procedure BilLExempt();
    procedure FormShow(Sender: TObject);
    procedure OpenDataSet(ADataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGridEh3DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure MultipleRemove1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    Function GetBillIdExemption(AVal:String):Integer;
    procedure BitBtn7Click(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    Function GetRouteCode(AVal:String):String;
    procedure BitBtn6Click(Sender: TObject);
    procedure IndividualRemove1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillExemptionForm: TBillExemptionForm;
  BillExemptionID:Integer;
  RouteAddressCode:Integer;
  ConsumerId:Integer;
  ConsumerAccountNumber:String;


implementation
Uses MainDataModuleUnit;

{$R *.dfm}


procedure TBillExemptionForm.BilLExempt;
begin
  qryExemption.First;
    Combobox2.Items.Clear;
    Combobox4.Items.Clear;
    while Not qryExemption.Eof do begin
      Combobox2.Items.Add(qryExemptionexemptname.AsString);
      Combobox4.Items.Add(qryExemptionexemptname.AsString);
      qryExemption.Next;
    end;
end;

procedure TBillExemptionForm.BitBtn1Click(Sender: TObject);
begin

  if (Length(Edit1.Text) <= 0) or (Length(Edit2.Text) <= 0)  then begin
    MessageDlg('One of the Field are Empty Please Make'+#13#10+'it Correct to Post this Data',mtError,[mbClose],0);
    Exit;
  end;

  qryConsumer.First;
  while not qryConsumer.EOF do begin
    if tblConsumerAccountExcempt.Locate('AccountNo',qryConsumerAccountNo.AsString,[]) then begin
      tblConsumerAccountExcempt.Edit;
    end else begin
      tblConsumerAccountExcempt.Append;
    end;
    tblConsumerAccountExcemptaccountno.AsString := qryConsumerAccountNo.AsString;
    tblConsumerAccountExcemptaccountname.AsString := qryConsumerAccountName.AsString;
    tblConsumerAccountExcemptroutecode.AsString := IntToStr(RouteAddressCode);
    tblConsumerAccountExcemptbillexempt.AsInteger := BillExemptionID;
    tblConsumerAccountExcempt.Post;
    qryConsumer.Next;
  end;

  qryExempt.Close;
  qryExempt.ParamByName('ARouteCode').AsString := Trim(IntToStr(RouteAddressCode));
  qryExempt.Open();
  qryExempt.First;

  qryConsumer.Close;
  qryConsumer.ParamByName('ARouteAddress').AsString := Trim(ComboBox1.Text);
  qryConsumer.Open;

  MessageDlg('Succesfully Posted!',mtInformation,[mbClose],0);

  Edit2.Clear;


end;

procedure TBillExemptionForm.BitBtn2Click(Sender: TObject);
begin
  if (Length(Edit3.Text) <= 0) or (Length(Edit5.Text) <= 0) or (Length(Edit4.Text) <= 0)  then begin
    MessageDlg('One of the Field are Empty Please Make'+#13#10+'it Correct to Post this Data',mtError,[mbClose],0);
    Exit;
  end;

  if tblConsumerAccountExcempt.Locate('AccountNo',ConsumerAccountNumber,[]) then begin
    tblConsumerAccountExcempt.Edit;
  end else begin
    tblConsumerAccountExcempt.Append;
  end;
  tblConsumerAccountExcemptaccountno.AsString := ConsumerAccountNumber;
  tblConsumerAccountExcemptaccountname.AsString := Edit5.Text;
  tblConsumerAccountExcemptroutecode.AsString := IntToStr(RouteAddressCode);
  tblConsumerAccountExcemptbillexempt.AsInteger := BillExemptionID;
  tblConsumerAccountExcempt.Post;
  MessageDlg('Succesfully Posted!',mtInformation,[mbClose],0);

  qryExempt.Close;
  qryExempt.ParamByName('ARouteCode').AsString := Trim(IntToStr(RouteAddressCode));
  qryExempt.Open();
  qryExempt.First;

  qryConsumer.Close;
  qryConsumer.ParamByName('ARouteAddress').AsString := Trim(ComboBox3.Text);
  qryConsumer.Open;

  Edit5.Clear;
  Edit4.Clear;
end;

procedure TBillExemptionForm.BitBtn3Click(Sender: TObject);
Var
  Desction:String;
  i:Integer;
begin
  if (Length(Edit6.Text) <= 0) or (Length(Edit8.Text) <= 0) or (Length(Edit9.Text) <= 0)  then begin
    MessageDlg('One of the Field are Empty Please Make'+#13#10+'it Correct to Post this Data',mtError,[mbClose],0);
    Exit;
  end;


  qryExemptionexemptname.AsString := Edit6.Text;
  qryExemptiondescription.AsString := Edit9.Text;
  qryExemptionstatus.AsString := Edit8.Text;
  qryExemption.Post;

  OpenDataSet(qryExemption);
  OpenDataSet(qryExemptionView);
  Edit6.Clear;
  Edit9.Clear;
  Edit8.Clear;
  MessageDlg('Successfully Posted!',mtInformation,[mbClose],0);
  BilLExempt();

end;

procedure TBillExemptionForm.BitBtn4Click(Sender: TObject);
begin
  if Panel17.Visible then begin
    Panel17.Visible := False;
  end else begin
    Panel17.Visible := True;
  end;
  if PageControl1.ActivePageIndex = 0 then begin
    Panel17.Top:=219;
    Panel17.Left:=152;
  end else begin
    Panel17.Top:=263;
    Panel17.Left:=152;
  end;

  qryExemption.Cancel;

end;

procedure TBillExemptionForm.BitBtn5Click(Sender: TObject);
Var
  IdBill:Integer;
begin
  IdBill := 0;
  qryExemption.Cancel;
  qryExemption.Last;
  IdBill := qryExemptionid.AsInteger;
  IdBill := IdBill +1;
  BillExemptionID := IdBill;
  qryExemption.First;
  qryExemption.Append;
  MessageDlg('Inserting Data!',mtInformation,[mbClose],0);
end;

procedure TBillExemptionForm.BitBtn6Click(Sender: TObject);
begin
  if (Length(Edit7.Text) <= 0) then begin
    MessageDlg('Field are Empty Please Make'+#13#10+'it Correct to Enabled Deleting',mtError,[mbClose],0);
    Exit;
  end;

  tblConsumerAccountExcempt.Close;
  tblConsumerAccountExcempt.Open;
  tblConsumerAccountExcempt.Filtered:= False;
  tblConsumerAccountExcempt.Filter := 'RouteCode = ' +QuotedStr(IntToStr(RouteAddressCode));
  tblConsumerAccountExcempt.Filtered := True;
  tblConsumerAccountExcempt.First;

  if not tblConsumerAccountExcempt.IsEmpty then begin
    while not tblConsumerAccountExcempt.EOF do begin
      if tblConsumerExcemptDelete.Locate('AccountNo',tblConsumerAccountExcemptaccountno.AsString,[]) then begin
        tblConsumerExcemptDelete.Delete;
      end;
      tblConsumerAccountExcempt.Next;
    end;

  end;

  tblConsumerAccountExcempt.Filtered:= False;
  tblConsumerAccountExcempt.Filter := 'RouteCode = ' +QuotedStr(IntToStr(RouteAddressCode));
  tblConsumerAccountExcempt.Filtered := True;
  if tblConsumerAccountExcempt.IsEmpty then begin
    MessageDlg('Successfully All Selected Route are Deleted!',mtInformation,[mbClose],0);
  end;

  qryExempt.Close;
  qryExempt.ParamByName('ARouteCode').AsString := Trim(IntToStr(RouteAddressCode));
  qryExempt.Open();
  qryExempt.First;

  qryConsumer.Close;
  qryConsumer.ParamByName('ARouteAddress').AsString := Trim(ComboBox6.Text);
  qryConsumer.Open;
  Panel18.Visible := False;


end;

procedure TBillExemptionForm.BitBtn7Click(Sender: TObject);
begin
  Panel18.Visible := False;
end;

procedure TBillExemptionForm.ComboBox1Change(Sender: TObject);

begin
  Edit1.Text := ComboBox1.Text;
  RouteAddressCode := StrToInt(GetRouteCode(Edit1.Text));

  qryExempt.Close;
  qryExempt.ParamByName('ARouteCode').AsString := Trim(IntToStr(RouteAddressCode));
  qryExempt.Open();
  qryExempt.First;

  qryConsumer.Close;
  qryConsumer.ParamByName('ARouteAddress').AsString := Trim(ComboBox1.Text);
  qryConsumer.Open;


end;

procedure TBillExemptionForm.ComboBox2Change(Sender: TObject);
begin
  Edit2.Text := Combobox2.Text ;
  BillExemptionID  := GetBillIdExemption(ComboBox2.Text);
end;

procedure TBillExemptionForm.ComboBox3Change(Sender: TObject);
begin
  Edit3.Text := ComboBox3.Text;

  RouteAddressCode := StrToInt(GetRouteCode(Edit3.Text));

  qryExempt.Close;
  qryExempt.ParamByName('ARouteCode').AsString := Trim(IntToStr(RouteAddressCode));
  qryExempt.Open();
  qryExempt.First;

  qryConsumer.Close;
  qryConsumer.ParamByName('ARouteAddress').AsString := Trim(ComboBox3.Text);
  qryConsumer.Open;
end;

procedure TBillExemptionForm.ComboBox4Change(Sender: TObject);
begin
  Edit4.Text := ComboBox4.Text;
  BillExemptionID := GetBillIdExemption(ComboBox4.Text);
end;

procedure TBillExemptionForm.ComboBox5Change(Sender: TObject);
begin
  Edit8.Text := ComboBox5.Text;
end;

procedure TBillExemptionForm.ComboBox6Change(Sender: TObject);
begin
  Edit7.Text := Combobox6.Text;
  RouteAddressCode := StrToInt(GetRouteCode(Edit7.Text));
end;

procedure TBillExemptionForm.DBGridEh1DblClick(Sender: TObject);
begin
  ConsumerId:=qryConsumerid.AsInteger;
  ConsumerAccountNumber:=qryConsumeraccountno.AsString;
  Edit5.Text := qryConsumeraccountname.AsString;
  Panel13.Visible := False;
end;

procedure TBillExemptionForm.DBGridEh3DblClick(Sender: TObject);
begin
  BillExemptionID := qryExemptionViewid.AsInteger;
  if qryExemption.Locate('id',qryExemptionViewid.AsString,[]) then begin
    Edit6.Text := qryExemptionexemptname.AsString;
    Edit9.Text := qryExemptiondescription.AsString;
    Edit8.Text := qryExemptionstatus.AsString;
  end;
  Panel17.Visible := False;
  qryExemption.Edit;

end;

procedure TBillExemptionForm.Delete1Click(Sender: TObject);
begin
  qryExemptionView.Delete;
end;

procedure TBillExemptionForm.FormShow(Sender: TObject);
begin
  //with DownloadingNewReadingDataModule do begin
     OpenDataSet(qryRouteAddress);
     OpenDataSet(qryExemption);
     OpenDataSet(qryExemptionView);

     OpenDataSet(tblConsumerAccountExcempt);
     OpenDataSet(tblConsumerExcemptDelete);



   //end;
  BillExemptionID := 0;
  RouteAddressCode := 0;
  ConsumerId := 0;
  ConsumerAccountNumber := '';
  LoadRoutes();
  BilLExempt();

  PageControl1.Height := 193;
  GroupBox1.Top := 208;
end;

function TBillExemptionForm.GetBillIdExemption(AVal: String): Integer;
begin
  if qryExemption.Locate('exemptName',AVal,[]) then begin
    Result := qryExemptionid.AsInteger;
  end;
end;

function TBillExemptionForm.GetRouteCode(AVal: String): String;
begin
  if qryRouteAddress.Locate('RouteAddress',AVal,[]) then begin
    Result := qryRouteAddressroutecode.AsString;
  end;
end;

procedure TBillExemptionForm.IndividualRemove1Click(Sender: TObject);
begin
  tblConsumerAccountExcempt.Close;
  tblConsumerAccountExcempt.Open;
  //tblConsumerAccountExcempt.Filtered:= False;
  //tblConsumerAccountExcempt.Filter := 'AccountNo = ' +QuotedStr(qryExemptAccountNo.AsString);
  //tblConsumerAccountExcempt.Filtered := True;
  tblConsumerAccountExcempt.First;
  //while not tblConsumerAccountExcempt.EOF do begin
    if not tblConsumerAccountExcempt.IsEmpty then begin
      if tblConsumerExcemptDelete.Locate('AccountNo',qryExemptAccountNo.AsString,[]) then begin
        tblConsumerExcemptDelete.Delete;
      end;
    end;
  //  tblConsumerAccountExcempt.Next;
  //end;
  //tblConsumerAccountExcempt.Filtered:= False;
  //tblConsumerAccountExcempt.Filter := 'AccountNo = ' +QuotedStr(qryExemptAccountNo.AsString);
  //tblConsumerAccountExcempt.Filtered := True;
  //if tblConsumerAccountExcempt.IsEmpty then begin
    MessageDlg('Successfully Deleted!',mtInformation,[mbClose],0);
  //end;

  qryExempt.Close;
  qryExempt.ParamByName('ARouteCode').AsString := Trim(IntToStr(RouteAddressCode));
  qryExempt.Open();
  qryExempt.First;

  qryConsumer.Close;
  qryConsumer.ParamByName('ARouteAddress').AsString := Trim(ComboBox6.Text);
  qryConsumer.Open;
  Panel18.Visible := False;

end;

procedure TBillExemptionForm.OpenDataSet(ADataSet: TDataSet);
begin
  ADataSet.Close;
  ADataSet.Open;
  ADataSet.First;
end;

procedure TBillExemptionForm.LoadRoutes;
begin
  //with DownloadingNewReadingDataModule do begin
    qryRouteAddress.First;
    Combobox1.Items.Clear;
    Combobox3.Items.Clear;
    Combobox6.Items.Clear;
    while Not qryRouteAddress.Eof do begin
      Combobox1.Items.Add(qryRouteAddressrouteaddress.AsString);
      Combobox3.Items.Add(qryRouteAddressrouteaddress.AsString);
      Combobox6.Items.Add(qryRouteAddressrouteaddress.AsString);
      qryRouteAddress.Next;
    end;
  //end;
end;

procedure TBillExemptionForm.MultipleRemove1Click(Sender: TObject);
begin
  if Panel18.Visible then begin
     Panel18.Visible := False;
  end else begin
     Panel18.Visible := True;
  end;
  Panel18.Top := 116;
  Panel18.Left := 383;
end;

procedure TBillExemptionForm.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then begin
    PageControl1.height := 193;
    GroupBox1.Top := 208;
    Panel13.Visible := False;
    Panel17.Visible := False;
    Panel18.Visible := False;
    //showmessage(intToStr(BitBtn4.Top) + ':'+intToStr(BitBtn4.Left+BitBtn4.Width) ) ;
  end else if PageControl1.ActivePageIndex = 1 then begin
    PageControl1.height := 246;
    GroupBox1.Top := 256;
  end;

end;

procedure TBillExemptionForm.RzBitBtn1Click(Sender: TObject);
begin
  Panel13.Top := 140;
  Panel13.Left := 15;
  if Panel13.Visible then begin
    Panel13.Visible := False;
  end else begin
    Panel13.Visible := True;
  end;


end;

end.
