object ConsumerAccountDataForm: TConsumerAccountDataForm
  Left = 0
  Top = 0
  Caption = 'ConsumerAccountDataForm'
  ClientHeight = 481
  ClientWidth = 634
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 97
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 9
      Width = 86
      Height = 13
      Caption = 'Account Number :'
    end
    object Label2: TLabel
      Left = 12
      Top = 30
      Width = 95
      Height = 13
      Caption = 'Consumer'#39's Name : '
    end
    object Label3: TLabel
      Left = 12
      Top = 51
      Width = 64
      Height = 13
      Caption = 'Rate Code :  '
    end
    object Label4: TLabel
      Left = 12
      Top = 72
      Width = 88
      Height = 13
      Caption = 'Connection Type :'
    end
    object Label5: TLabel
      Left = 332
      Top = 9
      Width = 102
      Height = 13
      Caption = 'Address / Barangay :'
    end
    object Label6: TLabel
      Left = 332
      Top = 72
      Width = 57
      Height = 13
      Caption = 'Mobile No. :'
    end
    object Label7: TLabel
      Left = 332
      Top = 30
      Width = 67
      Height = 13
      Caption = 'Meter Serial : '
    end
    object Label8: TLabel
      Left = 332
      Top = 51
      Width = 106
      Height = 13
      Caption = 'Senior Citizen Status :'
    end
    object Shape1: TShape
      Left = 322
      Top = 5
      Width = 1
      Height = 84
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 103
    Width = 634
    Height = 378
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      630
      374)
    object Shape2: TShape
      Left = -19
      Top = 353
      Width = 657
      Height = 1
      Anchors = [akLeft, akRight, akBottom]
      ExplicitTop = 352
    end
    object DBGridEh1: TDBGridEh
      Left = -1
      Top = -1
      Width = 632
      Height = 354
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsConsumer
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'routesequence'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ratecode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'isseniorcitizen'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'billnumber'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'numberofreadingretry'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'numberofbillprinted'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'numberofsmssent'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'previousreading'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'presentreading'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'averageconsumption'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'currentconsumption'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalconsumption'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'oldmeterconsumption'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalamountdue'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalamountafterduedate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'discountamount'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'penaltyamount'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalbillarrears'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalotherfees'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'accountno'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'accountname'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'routeaddress'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'connectiontype'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'connectionstatus'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'newconnectionstatus'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'mobilenumber'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'meterbrand'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'meterserialno'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'billmonth'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'previousreadingdate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'presentreadingdate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'meterfindings'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'readingremarks'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'paymentduedate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'paymentdateafterdue'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'disconnectiondate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'readingtime'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'meterreadername'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'dateuploaded'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object StatusBar1: TStatusBar
      Left = 0
      Top = 355
      Width = 630
      Height = 19
      Panels = <>
    end
  end
  object dsConsumer: TDataSource
    DataSet = ConsumerAccountDataModule.qrySearchRecord
    Left = 472
    Top = 239
  end
end
