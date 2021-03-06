object MeterReaderForm: TMeterReaderForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'MeterReaderForm'
  ClientHeight = 266
  ClientWidth = 554
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 253
    Top = 5
    Width = 1
    Height = 255
  end
  object Shape5: TShape
    Left = -11
    Top = 0
    Width = 593
    Height = 1
    Pen.Color = cl3DDkShadow
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 5
    Width = 241
    Height = 255
    Caption = 'Meter Reader Entry'
    TabOrder = 0
    object Shape2: TShape
      Left = 14
      Top = 70
      Width = 213
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Label1: TLabel
      Left = 14
      Top = 28
      Width = 103
      Height = 13
      Caption = 'Meter Reader Name :'
    end
    object Shape3: TShape
      Left = -53
      Top = 99
      Width = 300
      Height = 1
    end
    object Shape4: TShape
      Left = 1
      Top = 233
      Width = 240
      Height = 32
      Brush.Color = clHighlight
      Pen.Color = clHighlight
      Shape = stRoundRect
    end
    object Label3: TLabel
      Left = 10
      Top = 234
      Width = 94
      Height = 15
      Caption = 'Insert on Going'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuBar
      Font.Height = -12
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 14
      Top = 109
      Width = 213
      Height = 25
      Caption = 'Insert'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 14
      Top = 140
      Width = 213
      Height = 25
      Caption = 'Update'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 14
      Top = 172
      Width = 213
      Height = 25
      Caption = 'Post'
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 14
      Top = 203
      Width = 213
      Height = 25
      Caption = 'Cancel'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object DBEdit1: TEdit
      Left = 14
      Top = 43
      Width = 213
      Height = 27
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = DBEdit1KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 260
    Top = 11
    Width = 285
    Height = 250
    DataSource = DSQryMeterReader
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 1
    OnCellClick = DBGridEh1CellClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'METERREADERNAME'
        Footers = <>
        Title.Caption = 'Meter Reader Name'
        Width = 250
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DSTblMeterReader: TDataSource
    DataSet = MeterReaderDataModule.tblMeterReader
    Left = 304
    Top = 128
  end
  object DSQryMeterReader: TDataSource
    DataSet = MeterReaderDataModule.qryMeterReader
    Left = 472
    Top = 136
  end
  object popMeterReader: TPopupMenu
    Left = 376
    Top = 120
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      OnClick = Refresh1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DeleteSelectedRow1: TMenuItem
      Caption = 'Delete Selected Row'
      OnClick = DeleteSelectedRow1Click
    end
  end
end
