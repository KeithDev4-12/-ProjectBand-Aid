object ConsumerAccountForm: TConsumerAccountForm
  Left = 0
  Top = 0
  Caption = 'Consumer Account'
  ClientHeight = 522
  ClientWidth = 685
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 65
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 23
      Width = 78
      Height = 17
      Caption = 'Search Here :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SearchBox1: TSearchBox
      Left = 105
      Top = 22
      Width = 340
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Account No./Name/Mobile No./Meter Serial No.'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 71
    Width = 685
    Height = 451
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 1
    object StatusBar1: TStatusBar
      Left = 0
      Top = 428
      Width = 681
      Height = 19
      Panels = <>
    end
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 0
      Width = 681
      Height = 428
      Align = alClient
      DataSource = DSConsumerAccount
      DynProps = <>
      TabOrder = 1
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'accountno'
          Footers = <>
          Title.Caption = 'Account Number'
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'accountname'
          Footers = <>
          Title.Caption = 'Consumer Name'
          Width = 160
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'routesequence'
          Footers = <>
          Title.Caption = 'Sequence'
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ratecode'
          Footers = <>
          Title.Caption = 'Rate Code'
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'isseniorcitizen'
          Footers = <>
          Title.Caption = 'Senior Citizen'
          Width = 68
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'billnumber'
          Footers = <>
          Title.Caption = 'Bill Number'
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'numberofreadingretry'
          Footers = <>
          Title.Caption = 'No of Reading Try'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'numberofbillprinted'
          Footers = <>
          Title.Caption = 'No of Bill Printed'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'numberofsmssent'
          Footers = <>
          Title.Caption = 'No of SMS Sent'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'previousreading'
          Footers = <>
          Title.Caption = 'Prev. Reading'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'presentreading'
          Footers = <>
          Title.Caption = 'Present Reading'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'averageconsumption'
          Footers = <>
          Title.Caption = 'Ave. Consumption'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'currentconsumption'
          Footers = <>
          Title.Caption = 'Curr. Cons.'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalconsumption'
          Footers = <>
          Title.Caption = 'Total Cons.'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'oldmeterconsumption'
          Footers = <>
          Title.Caption = 'Old Meter Cons.'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalamountdue'
          Footers = <>
          Title.Caption = 'Total Amount Due'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalamountafterduedate'
          Footers = <>
          Title.Caption = 'After Due Date'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'discountamount'
          Footers = <>
          Title.Caption = 'Discount Amount'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'penaltyamount'
          Footers = <>
          Title.Caption = 'Penalty Amount'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalbillarrears'
          Footers = <>
          Title.Caption = 'Total Bill Arrears'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalotherfees'
          Footers = <>
          Title.Caption = 'Other Fees'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'routeaddress'
          Footers = <>
          Title.Caption = 'Route Address'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'connectiontype'
          Footers = <>
          Title.Caption = 'Conn. Type'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'connectionstatus'
          Footers = <>
          Title.Caption = 'Conn. Status'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'newconnectionstatus'
          Footers = <>
          Title.Caption = 'New Conn. Status'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'mobilenumber'
          Footers = <>
          Title.Caption = 'Mobile Number'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'meterbrand'
          Footers = <>
          Title.Caption = 'Meter Brand'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'meterserialno'
          Footers = <>
          Title.Caption = 'Meter Serial No.'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'billmonth'
          Footers = <>
          Title.Caption = 'Bill Month'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'previousreadingdate'
          Footers = <>
          Title.Caption = 'Previous Reading Date'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'presentreadingdate'
          Footers = <>
          Title.Caption = 'Present Reading Date'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'meterfindings'
          Footers = <>
          Title.Caption = 'Meter Findings'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'readingremarks'
          Footers = <>
          Title.Caption = 'Reading Remarks'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'paymentduedate'
          Footers = <>
          Title.Caption = 'Payment Due Date'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'paymentdateafterdue'
          Footers = <>
          Title.Caption = 'Payment Date After Due'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'disconnectiondate'
          Footers = <>
          Title.Caption = 'Disco. Date'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'readingtime'
          Footers = <>
          Title.Caption = 'Reading Time'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'meterreadername'
          Footers = <>
          Title.Caption = 'Meter Reader Name'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'dateuploaded'
          Footers = <>
          Title.Caption = 'Date Uploaded'
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DSConsumerAccount: TDataSource
    DataSet = ConsumerAccountDataModule.qryMasterRecord
    Left = 328
    Top = 215
  end
end
