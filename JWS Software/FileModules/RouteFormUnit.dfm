object RouteForm: TRouteForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Routes / Address / Barangay '
  ClientHeight = 319
  ClientWidth = 609
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
    Top = 8
    Width = 1
    Height = 306
  end
  object Shape4: TShape
    Left = -11
    Top = 0
    Width = 646
    Height = 1
    Pen.Color = cl3DDkShadow
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 0
    Width = 242
    Height = 314
    Caption = 'Routes Entry'
    TabOrder = 1
    object Shape3: TShape
      Left = 1
      Top = 290
      Width = 240
      Height = 32
      Brush.Color = clHighlight
      Pen.Color = clHighlight
      Shape = stRoundRect
    end
    object Label3: TLabel
      Left = 14
      Top = 28
      Width = 64
      Height = 13
      Caption = 'Route Code :'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 14
      Top = 93
      Width = 78
      Height = 13
      Caption = 'Route Address :'
    end
    object Shape17: TShape
      Left = 14
      Top = 70
      Width = 213
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape2: TShape
      Left = 14
      Top = 137
      Width = 213
      Height = -1
      Pen.Color = cl3DDkShadow
    end
    object Label2: TLabel
      Left = 10
      Top = 295
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
    object Shape7: TShape
      Left = -36
      Top = 155
      Width = 294
      Height = 1
    end
    object DBEdit2: TDBEdit
      Left = 14
      Top = 44
      Width = 213
      Height = 21
      BorderStyle = bsNone
      DataField = 'routecode'
      DataSource = dstblRoute
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = DBEdit2Click
      OnEnter = DBEdit2Click
      OnKeyPress = DBEdit2KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 14
      Top = 164
      Width = 213
      Height = 25
      Caption = 'Insert'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 14
      Top = 196
      Width = 213
      Height = 25
      Caption = 'Update'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 14
      Top = 228
      Width = 213
      Height = 25
      Caption = 'Post'
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object DBEdit3: TEdit
      Left = 14
      Top = 108
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
      TabOrder = 1
      OnClick = DBEdit2Click
      OnEnter = DBEdit2Click
      OnKeyPress = DBEdit3KeyPress
    end
    object BitBtn4: TBitBtn
      Left = 14
      Top = 259
      Width = 213
      Height = 26
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = BitBtn4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 259
    Top = 5
    Width = 345
    Height = 309
    DataSource = dsqryRoute
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = popRouteForm
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 0
    OnCellClick = DBGridEh1CellClick
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
        FieldName = 'routecode'
        Footers = <>
        Title.Caption = 'Route Code'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ROUTEADDRESS'
        Footers = <>
        Title.Caption = 'Route Address'
        Width = 260
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object dstblRoute: TDataSource
    DataSet = RouteDataModule.tblRoute
    Left = 296
    Top = 160
  end
  object dsqryRoute: TDataSource
    DataSet = RouteDataModule.qryRoute
    Left = 424
    Top = 168
  end
  object popRouteForm: TPopupMenu
    Left = 488
    Top = 128
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
