object GetOldScheduleForm: TGetOldScheduleForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'GetOldScheduleForm'
  ClientHeight = 351
  ClientWidth = 554
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 15
    Top = 332
    Width = 317
    Height = 13
    Caption = 'Note : You Can Modify this Schedule After you Copy this Records.'
  end
  object Shape1: TShape
    Left = -99
    Top = 0
    Width = 653
    Height = 1
    Pen.Color = cl3DDkShadow
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 2
    Width = 541
    Height = 327
    Caption = 'Old Schedule Records (BillMonth)'
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 32
      Width = 52
      Height = 13
      Caption = 'Bill Month :'
    end
    object ComboBox1: TComboBox
      Left = 66
      Top = 25
      Width = 180
      Height = 26
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = ComboBox1Change
      OnSelect = ComboBox1Select
    end
    object DBGridEh1: TDBGridEh
      Left = 9
      Top = 60
      Width = 237
      Height = 258
      DataSource = CreateScheduleDataModule.dsScheduleName
      DynProps = <>
      TabOrder = 1
      OnCellClick = DBGridEh1CellClick
      OnSelectionChanged = DBGridEh1SelectionChanged
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
          FieldName = 'SCHEDULENAME'
          Footers = <>
          Title.Caption = 'Schedule Name'
          Width = 200
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object BitBtn1: TBitBtn
      Left = 408
      Top = 24
      Width = 123
      Height = 28
      Caption = 'Get'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object DBGridEh2: TDBGridEh
      Left = 259
      Top = 60
      Width = 272
      Height = 258
      DataSource = CreateScheduleDataModule.dsRouteAssigned
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'routecode'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ROUTEADDRESS'
          Footers = <>
          Title.Caption = 'Route Address'
          Width = 120
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'duration'
          Footers = <>
          Title.Caption = 'Duration'
          Width = 45
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'READINGSTARTDATE'
          Footers = <>
          Title.Caption = 'Reading Start Date'
          Width = 150
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
