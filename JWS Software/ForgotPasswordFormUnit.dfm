object ForgotPasswordForm: TForgotPasswordForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recovery Account'
  ClientHeight = 299
  ClientWidth = 241
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
  object Shape6: TShape
    Left = -339
    Top = 0
    Width = 593
    Height = 1
    Pen.Color = cl3DDkShadow
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 2
    Width = 228
    Height = 289
    Caption = 'Form'
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 75
      Width = 70
      Height = 13
      Caption = 'New Password'
    end
    object Label1: TLabel
      Left = 12
      Top = 18
      Width = 59
      Height = 13
      Caption = 'User Name :'
    end
    object Label3: TLabel
      Left = 12
      Top = 128
      Width = 123
      Height = 13
      Caption = 'Re-Type-New-Password :'
    end
    object Shape1: TShape
      Left = 7
      Top = 221
      Width = 210
      Height = 1
      Brush.Color = clBackground
      Pen.Color = cl3DDkShadow
    end
    object Shape2: TShape
      Left = 12
      Top = 64
      Width = 201
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape3: TShape
      Left = 12
      Top = 121
      Width = 201
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape4: TShape
      Left = 12
      Top = 173
      Width = 201
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape5: TShape
      Left = 0
      Top = 263
      Width = 227
      Height = 32
      Brush.Color = clHighlight
      Pen.Color = clHighlight
      Shape = stRoundRect
    end
    object Label4: TLabel
      Left = 10
      Top = 268
      Width = 174
      Height = 15
      Caption = 'RECOVERY PASSWORD FORM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuBar
      Font.Height = -12
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 12
      Top = 188
      Width = 201
      Height = 25
      Caption = 'Recover'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 12
      Top = 231
      Width = 201
      Height = 25
      Caption = 'Close'
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object Edit2: TEdit
      Left = 12
      Top = 88
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
      TabOrder = 1
      TextHint = 'New Password'
      OnClick = Edit4Click
      OnEnter = Edit4Click
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
      TabOrder = 2
      TextHint = 'Re-Type-New-Password'
      OnClick = Edit4Click
      OnEnter = Edit4Click
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
      TabOrder = 0
      TextHint = 'User Name'
      OnClick = Edit4Click
      OnEnter = Edit4Click
    end
  end
end
