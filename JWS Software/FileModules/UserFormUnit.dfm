object UserForm: TUserForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'User Accounts'
  ClientHeight = 384
  ClientWidth = 551
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 97
  TextHeight = 13
  object Shape2: TShape
    Left = 240
    Top = 4
    Width = 1
    Height = 372
    Brush.Color = clBackground
    Pen.Color = cl3DDkShadow
  end
  object Shape8: TShape
    Left = -13
    Top = 0
    Width = 593
    Height = 1
    Pen.Color = cl3DDkShadow
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 2
    Width = 228
    Height = 374
    Caption = 'User Input Box'
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 18
      Width = 59
      Height = 13
      Caption = 'User Name :'
    end
    object Label2: TLabel
      Left = 12
      Top = 75
      Width = 53
      Height = 13
      Caption = 'Password :'
    end
    object Label3: TLabel
      Left = 12
      Top = 128
      Width = 70
      Height = 13
      Caption = 'Re-Password :'
    end
    object Shape1: TShape
      Left = 7
      Top = 277
      Width = 210
      Height = 1
      Brush.Color = clBackground
      Pen.Color = cl3DDkShadow
    end
    object Shape3: TShape
      Left = 12
      Top = 64
      Width = 201
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape4: TShape
      Left = 12
      Top = 121
      Width = 201
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape5: TShape
      Left = 12
      Top = 173
      Width = 201
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape6: TShape
      Left = 0
      Top = 351
      Width = 227
      Height = 32
      Brush.Color = clHighlight
      Pen.Color = clHighlight
      Shape = stRoundRect
    end
    object Label5: TLabel
      Left = 10
      Top = 356
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
    object Label6: TLabel
      Left = 12
      Top = 181
      Width = 70
      Height = 13
      Caption = 'Account Role :'
    end
    object Shape7: TShape
      Left = 12
      Top = 231
      Width = 201
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object ComboBox1: TComboBox
      Left = 12
      Top = 198
      Width = 201
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
      OnClick = Edit4Click
      OnEnter = Edit4Click
      Items.Strings = (
        'Administrator'
        'Billing')
    end
    object BitBtn1: TBitBtn
      Left = 12
      Top = 244
      Width = 201
      Height = 25
      Caption = 'Post'
      Enabled = False
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 122
      Top = 288
      Width = 91
      Height = 25
      Caption = 'New'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 12
      Top = 287
      Width = 91
      Height = 25
      Caption = 'Edit'
      TabOrder = 7
      OnClick = BitBtn3Click
    end
    object BitBtn5: TBitBtn
      Left = 12
      Top = 319
      Width = 201
      Height = 25
      Caption = 'Close'
      TabOrder = 8
      OnClick = BitBtn5Click
    end
    object Edit2: TEdit
      Left = 12
      Top = 92
      Width = 201
      Height = 27
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
      TextHint = 'Password'
      OnClick = Edit4Click
      OnEnter = Edit4Click
      OnKeyPress = Edit2KeyPress
    end
    object Edit1: TEdit
      Left = 12
      Top = 144
      Width = 201
      Height = 27
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
      TextHint = 'Re-Password'
      OnClick = Edit4Click
      OnEnter = Edit4Click
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 12
      Top = 198
      Width = 184
      Height = 31
      AutoSize = False
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TextHint = 'Role'
    end
    object Panel1: TPanel
      Left = 212
      Top = 198
      Width = 35
      Height = 31
      BevelOuter = bvNone
      TabOrder = 9
    end
    object Panel2: TPanel
      Left = 193
      Top = 226
      Width = 31
      Height = 7
      BevelOuter = bvNone
      TabOrder = 10
    end
    object Panel3: TPanel
      Left = 196
      Top = 192
      Width = 31
      Height = 7
      BevelOuter = bvNone
      TabOrder = 11
    end
    object Edit4: TEdit
      Left = 12
      Top = 35
      Width = 201
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
      TextHint = 'User Name'
      OnClick = Edit4Click
      OnEnter = Edit4Click
      OnKeyPress = Edit2KeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 247
    Top = 2
    Width = 298
    Height = 374
    Caption = 'User Details Here'
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 7
      Top = 18
      Width = 283
      Height = 344
      DataSource = DSUser
      DynProps = <>
      PopupMenu = popUserForm
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
          FieldName = 'USERNAME'
          Footers = <>
          Title.Caption = 'User Name'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PASSWORD'
          Footers = <>
          Title.Caption = 'Password'
          Visible = False
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ROLE'
          Footers = <>
          Title.Caption = 'Role'
          Width = 150
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DSUser: TDataSource
    DataSet = UserDataModule.qryUser
    Left = 304
    Top = 128
  end
  object popUserForm: TPopupMenu
    Left = 407
    Top = 250
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      OnClick = Refresh1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Caption = 'Delete Selected Data'
      OnClick = Delete1Click
    end
  end
  object dsTblUser: TDataSource
    DataSet = UserDataModule.tblUser
    Left = 423
    Top = 130
  end
end
