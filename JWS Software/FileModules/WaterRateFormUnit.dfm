object WaterRateForm: TWaterRateForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Water Rate Form'
  ClientHeight = 420
  ClientWidth = 807
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
  DesignSize = (
    807
    420)
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 253
    Top = 10
    Width = 1
    Height = 405
  end
  object Shape8: TShape
    Left = -3
    Top = 0
    Width = 820
    Height = 1
    Pen.Color = cl3DDkShadow
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 3
    Width = 242
    Height = 412
    Caption = 'Water Rate Entry'
    TabOrder = 0
    object Label2: TLabel
      Left = 14
      Top = 19
      Width = 58
      Height = 13
      Caption = 'Rate Code :'
    end
    object Shape17: TShape
      Left = 14
      Top = 57
      Width = 213
      Height = -1
      Pen.Color = cl3DDkShadow
    end
    object Label3: TLabel
      Left = 14
      Top = 65
      Width = 88
      Height = 13
      Caption = 'Connection Type :'
    end
    object Label4: TLabel
      Left = 14
      Top = 112
      Width = 96
      Height = 13
      Caption = 'Consumption From :'
    end
    object Label5: TLabel
      Left = 14
      Top = 159
      Width = 84
      Height = 13
      Caption = 'Consumption To :'
    end
    object Label6: TLabel
      Left = 14
      Top = 206
      Width = 96
      Height = 13
      Caption = 'Rate Base Amount :'
    end
    object Shape2: TShape
      Left = 14
      Top = 103
      Width = 213
      Height = -1
      Pen.Color = cl3DDkShadow
    end
    object Shape3: TShape
      Left = 14
      Top = 149
      Width = 213
      Height = -1
      Pen.Color = cl3DDkShadow
    end
    object Shape4: TShape
      Left = 14
      Top = 195
      Width = 213
      Height = -1
      Pen.Color = cl3DDkShadow
    end
    object Shape5: TShape
      Left = 14
      Top = 244
      Width = 213
      Height = -1
      Pen.Color = cl3DDkShadow
    end
    object Label7: TLabel
      Left = 14
      Top = 255
      Width = 92
      Height = 13
      Caption = 'Rate Add Amount :'
    end
    object Shape6: TShape
      Left = 14
      Top = 294
      Width = 213
      Height = -1
      Pen.Color = cl3DDkShadow
    end
    object Shape7: TShape
      Left = -22
      Top = 314
      Width = 294
      Height = 1
    end
    object ComboBox1: TComboBox
      Left = 15
      Top = 78
      Width = 212
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
      OnClick = DBEdit6Click
      Items.Strings = (
        'COMMERCIAL'
        'RESIDENTIAL')
    end
    object DBEdit1: TDBEdit
      Left = 14
      Top = 32
      Width = 213
      Height = 21
      BorderStyle = bsNone
      DataField = 'ratecode'
      DataSource = dsTblWaterRate
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 14
      Top = 78
      Width = 195
      Height = 23
      BorderStyle = bsNone
      DataField = 'connectiontype'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = DBEdit6Click
    end
    object DBEdit3: TDBEdit
      Left = 14
      Top = 125
      Width = 213
      Height = 21
      BorderStyle = bsNone
      DataField = 'consumptionfrom'
      DataSource = dsTblWaterRate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = DBEdit6Click
    end
    object DBEdit4: TDBEdit
      Left = 14
      Top = 172
      Width = 213
      Height = 21
      BorderStyle = bsNone
      DataField = 'consumptionto'
      DataSource = dsTblWaterRate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = DBEdit6Click
    end
    object DBEdit5: TDBEdit
      Left = 14
      Top = 219
      Width = 213
      Height = 21
      BorderStyle = bsNone
      DataField = 'ratebaseamount'
      DataSource = dsTblWaterRate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = DBEdit6Click
    end
    object DBEdit6: TDBEdit
      Left = 14
      Top = 268
      Width = 213
      Height = 21
      BorderStyle = bsNone
      DataField = 'rateaddamount'
      DataSource = dsTblWaterRate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = DBEdit6Click
    end
    object BitBtn1: TBitBtn
      Left = 14
      Top = 321
      Width = 99
      Height = 25
      Caption = 'Insert'
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 128
      Top = 321
      Width = 99
      Height = 25
      Caption = 'Update'
      TabOrder = 7
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 14
      Top = 350
      Width = 213
      Height = 25
      Caption = 'Post'
      Enabled = False
      TabOrder = 8
      OnClick = BitBtn3Click
    end
    object Panel11: TPanel
      Left = 166
      Top = 100
      Width = 76
      Height = 1
      BevelOuter = bvNone
      TabOrder = 10
    end
    object Panel1: TPanel
      Left = 166
      Top = 78
      Width = 76
      Height = 1
      BevelOuter = bvNone
      TabOrder = 11
    end
    object Panel2: TPanel
      Left = 226
      Top = 74
      Width = 26
      Height = 29
      BevelOuter = bvNone
      TabOrder = 12
    end
    object BitBtn4: TBitBtn
      Left = 15
      Top = 380
      Width = 212
      Height = 26
      Caption = 'Cancel'
      TabOrder = 13
      OnClick = BitBtn4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 260
    Top = 10
    Width = 541
    Height = 405
    Anchors = [akLeft, akTop, akRight]
    DataSource = dsQryWaterRate
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = pmWaterRate
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 1
    OnCellClick = DBGridEh1CellClick
    OnDblClick = DBGridEh1DblClick
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
        FieldName = 'ratecode'
        Footers = <>
        MaxWidth = 55
        MinWidth = 55
        Title.Caption = 'Rate Code'
        Width = 55
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ConnectionType'
        Footers = <>
        MaxWidth = 85
        MinWidth = 60
        Title.Caption = 'Connection Type'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'consumptionfrom'
        Footers = <>
        MaxWidth = 92
        MinWidth = 80
        Title.Caption = 'Consumption From'
        Width = 92
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'consumptionto'
        Footers = <>
        MaxWidth = 80
        MinWidth = 70
        Title.Caption = 'Consumption To'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ratebaseamount'
        Footers = <>
        MaxWidth = 95
        MinWidth = 80
        Title.Caption = 'Rate Base Amount'
        Width = 95
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'rateaddamount'
        Footers = <>
        Title.Caption = 'Rate Add Amount'
        Width = 93
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object dsQryWaterRate: TDataSource
    DataSet = WaterDataModule.qryWaterRate
    Left = 504
    Top = 160
  end
  object dsTblWaterRate: TDataSource
    DataSet = WaterDataModule.tblWaterRate
    Left = 400
    Top = 208
  end
  object pmWaterRate: TPopupMenu
    Left = 640
    Top = 200
    object DeleteSelected1: TMenuItem
      Caption = 'Delete Selected'
      OnClick = DeleteSelected1Click
    end
  end
end
