object BillExemptionForm: TBillExemptionForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Bill Exemption'
  ClientHeight = 525
  ClientWidth = 750
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    750
    525)
  PixelsPerInch = 97
  TextHeight = 13
  object DBGridEh2: TDBGridEh
    Left = 241
    Top = 8
    Width = 501
    Height = 500
    DataSource = dsExempt
    DynProps = <>
    PopupMenu = PopupMenu1
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 3
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
        FieldName = 'AccountNo'
        Footers = <>
        Title.Caption = 'Account Number'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AccountName'
        Footers = <>
        Title.Caption = 'Account Name'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'exemptName'
        Footers = <>
        Title.Caption = 'Exempt Name'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'description'
        Footers = <>
        Title.Caption = 'Description'
        Width = 120
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
        FieldName = 'status'
        Footers = <>
        Title.Caption = 'Status'
        Width = 60
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 229
    Height = 246
    ActivePage = TabSheet1
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Multiple'
      DesignSize = (
        221
        218)
      object Label1: TLabel
        Left = 3
        Top = 5
        Width = 78
        Height = 13
        Caption = 'Route Address :'
      end
      object Shape1: TShape
        Left = 3
        Top = 53
        Width = 212
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = cl3DDkShadow
        ExplicitWidth = 208
      end
      object Label2: TLabel
        Left = 3
        Top = 61
        Width = 84
        Height = 13
        Caption = 'Exemption Type :'
      end
      object Shape2: TShape
        Left = 3
        Top = 109
        Width = 212
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = cl3DDkShadow
        ExplicitWidth = 208
      end
      object ComboBox1: TComboBox
        Left = 3
        Top = 21
        Width = 212
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'ComboBox1'
        OnChange = ComboBox1Change
      end
      object Edit1: TEdit
        Left = 3
        Top = 21
        Width = 195
        Height = 31
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = 'Route Address / Barangay'
      end
      object Panel1: TPanel
        Left = 213
        Top = 20
        Width = 2
        Height = 31
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 2
      end
      object Panel2: TPanel
        Left = 189
        Top = 21
        Width = 26
        Height = 1
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 3
      end
      object Panel3: TPanel
        Left = 189
        Top = 47
        Width = 26
        Height = 2
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 4
      end
      object ComboBox2: TComboBox
        Left = 4
        Top = 77
        Width = 212
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'ComboBox1'
        OnChange = ComboBox2Change
      end
      object Edit2: TEdit
        Left = 3
        Top = 77
        Width = 195
        Height = 31
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        TextHint = 'Bill Exemption Type'
      end
      object Panel4: TPanel
        Left = 214
        Top = 76
        Width = 2
        Height = 31
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 7
      end
      object Panel5: TPanel
        Left = 188
        Top = 77
        Width = 26
        Height = 1
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 8
      end
      object Panel6: TPanel
        Left = 188
        Top = 104
        Width = 26
        Height = 1
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 9
      end
      object BitBtn1: TBitBtn
        Left = 83
        Top = 120
        Width = 132
        Height = 36
        Caption = 'Excempt'
        TabOrder = 10
        OnClick = BitBtn1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Individual'
      ImageIndex = 1
      DesignSize = (
        221
        218)
      object Label3: TLabel
        Left = 3
        Top = 4
        Width = 78
        Height = 13
        Caption = 'Route Address :'
      end
      object Shape3: TShape
        Left = 3
        Top = 52
        Width = 212
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = cl3DDkShadow
      end
      object Label4: TLabel
        Left = 3
        Top = 117
        Width = 84
        Height = 13
        Caption = 'Exemption Type :'
      end
      object Shape4: TShape
        Left = 3
        Top = 165
        Width = 212
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = cl3DDkShadow
      end
      object Label5: TLabel
        Left = 3
        Top = 60
        Width = 78
        Height = 13
        Caption = 'Consumer Name'
      end
      object Shape5: TShape
        Left = 3
        Top = 108
        Width = 212
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = cl3DDkShadow
      end
      object ComboBox3: TComboBox
        Left = 3
        Top = 20
        Width = 212
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'ComboBox1'
        OnChange = ComboBox3Change
      end
      object Edit3: TEdit
        Left = 3
        Top = 20
        Width = 195
        Height = 31
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = 'Route Address / Barangay'
      end
      object Panel7: TPanel
        Left = 213
        Top = 19
        Width = 2
        Height = 31
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 2
      end
      object Panel8: TPanel
        Left = 189
        Top = 20
        Width = 26
        Height = 1
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 3
      end
      object Panel9: TPanel
        Left = 189
        Top = 46
        Width = 26
        Height = 2
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 4
      end
      object ComboBox4: TComboBox
        Left = 3
        Top = 133
        Width = 212
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'ComboBox1'
        OnChange = ComboBox4Change
      end
      object Edit4: TEdit
        Left = 3
        Top = 133
        Width = 195
        Height = 31
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        TextHint = 'Bill Exemption Type'
      end
      object Panel10: TPanel
        Left = 213
        Top = 132
        Width = 2
        Height = 31
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 7
      end
      object Panel11: TPanel
        Left = 189
        Top = 133
        Width = 26
        Height = 1
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 8
      end
      object Panel12: TPanel
        Left = 189
        Top = 159
        Width = 26
        Height = 2
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 9
      end
      object Edit5: TEdit
        Left = 3
        Top = 76
        Width = 185
        Height = 31
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        TextHint = 'Consumer Name'
      end
      object BitBtn2: TBitBtn
        Left = 83
        Top = 176
        Width = 132
        Height = 36
        Caption = 'Excempt'
        TabOrder = 11
        OnClick = BitBtn2Click
      end
      object RzBitBtn1: TRzBitBtn
        Left = 190
        Top = 76
        Width = 25
        Height = 31
        TabOrder = 12
        OnClick = RzBitBtn1Click
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000630D0000630D00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
          09E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E809
          1009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E809
          101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8090909
          10101009E8E8E8E8E8E8E8E8E8818181ACACAC81E8E8E8E8E8E8E8E8E8091010
          1010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8E8091010
          101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8091010
          10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
          101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8091010
          1010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8E8090909
          10101009E8E8E8E8E8E8E8E8E8818181ACACAC81E8E8E8E8E8E8E8E8E8E8E809
          101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E809
          1009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E809
          09E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 266
    Width = 225
    Height = 252
    Anchors = [akLeft, akBottom]
    Caption = 'Bill Exemption Type'
    TabOrder = 1
    ExplicitTop = 256
    DesignSize = (
      225
      252)
    object Label6: TLabel
      Left = 7
      Top = 18
      Width = 102
      Height = 13
      Caption = 'Bill Exemption Name :'
    end
    object Shape6: TShape
      Left = 7
      Top = 66
      Width = 212
      Height = 1
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = cl3DDkShadow
    end
    object Label7: TLabel
      Left = 7
      Top = 74
      Width = 60
      Height = 13
      Caption = 'Description :'
    end
    object Shape7: TShape
      Left = 5
      Top = 154
      Width = 212
      Height = 1
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = cl3DDkShadow
    end
    object Label8: TLabel
      Left = 7
      Top = 162
      Width = 38
      Height = 13
      Caption = 'Status :'
    end
    object Shape8: TShape
      Left = 5
      Top = 210
      Width = 212
      Height = 1
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = cl3DDkShadow
    end
    object ComboBox5: TComboBox
      Left = 5
      Top = 180
      Width = 212
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'ComboBox1'
      OnChange = ComboBox5Change
      Items.Strings = (
        'Active'
        'InActive')
    end
    object Panel16: TPanel
      Left = 191
      Top = 207
      Width = 26
      Height = 1
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 5
    end
    object Panel15: TPanel
      Left = 191
      Top = 180
      Width = 26
      Height = 1
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 4
    end
    object Panel14: TPanel
      Left = 215
      Top = 179
      Width = 2
      Height = 31
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 7
      Top = 33
      Width = 212
      Height = 31
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TextHint = 'Exemption Name :'
    end
    object Edit8: TEdit
      Left = 5
      Top = 177
      Width = 190
      Height = 31
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TextHint = 'Status'
    end
    object BitBtn3: TBitBtn
      Left = 152
      Top = 217
      Width = 65
      Height = 25
      Caption = 'Post'
      TabOrder = 6
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 78
      Top = 217
      Width = 66
      Height = 25
      Caption = 'Edit'
      TabOrder = 7
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 5
      Top = 217
      Width = 65
      Height = 25
      Caption = 'Insert'
      TabOrder = 8
      OnClick = BitBtn5Click
    end
    object Edit9: TEdit
      Left = 7
      Top = 89
      Width = 212
      Height = 62
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      TextHint = 'Description'
    end
  end
  object Panel17: TPanel
    Left = 256
    Top = 263
    Width = 365
    Height = 235
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    DesignSize = (
      361
      231)
    object DBGridEh3: TDBGridEh
      Left = 3
      Top = 3
      Width = 354
      Height = 224
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsExemption
      DynProps = <>
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      TabOrder = 0
      OnDblClick = DBGridEh3DblClick
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
          FieldName = 'exemptname'
          Footers = <>
          Title.Caption = 'Exemption Name'
          Width = 120
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'description'
          Footers = <>
          Title.Caption = 'Description'
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'status'
          Footers = <>
          Title.Caption = 'Status'
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel13: TPanel
    Left = 247
    Top = 140
    Width = 354
    Height = 215
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    DesignSize = (
      350
      211)
    object DBGridEh1: TDBGridEh
      Left = 3
      Top = 3
      Width = 343
      Height = 205
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsConsumer
      DynProps = <>
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      TabOrder = 0
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
          FieldName = 'AccountNo'
          Footers = <>
          Title.Caption = 'Account Number'
          Width = 90
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccountName'
          Footers = <>
          Title.Caption = 'Account Name'
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RouteSequence'
          Footers = <>
          Title.Caption = 'Route Sequence'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RouteAddress'
          Footers = <>
          Title.Caption = 'Route Address'
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel18: TPanel
    Left = 383
    Top = 116
    Width = 257
    Height = 130
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 5
    Visible = False
    object GroupBox2: TGroupBox
      Left = 5
      Top = 1
      Width = 243
      Height = 119
      Caption = 'Multiple Remove Exempt'
      TabOrder = 0
      DesignSize = (
        243
        119)
      object Label9: TLabel
        Left = 11
        Top = 18
        Width = 78
        Height = 13
        Caption = 'Route Address :'
      end
      object Shape9: TShape
        Left = 11
        Top = 66
        Width = 220
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = cl3DDkShadow
      end
      object ComboBox6: TComboBox
        Left = 11
        Top = 34
        Width = 220
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'ComboBox1'
        OnChange = ComboBox6Change
      end
      object Edit7: TEdit
        Left = 11
        Top = 33
        Width = 196
        Height = 31
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = 'Route Address / Barangay'
      end
      object Panel19: TPanel
        Left = 229
        Top = 33
        Width = 2
        Height = 31
        BevelOuter = bvNone
        TabOrder = 2
      end
      object Panel20: TPanel
        Left = 206
        Top = 34
        Width = 26
        Height = 1
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 3
      end
      object Panel21: TPanel
        Left = 206
        Top = 60
        Width = 26
        Height = 2
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 4
      end
      object BitBtn6: TBitBtn
        Left = 142
        Top = 79
        Width = 90
        Height = 25
        Caption = 'Remove'
        TabOrder = 5
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 11
        Top = 79
        Width = 94
        Height = 25
        Caption = 'Cancel / Close'
        TabOrder = 6
        OnClick = BitBtn7Click
      end
    end
  end
  object dsConsumer: TDataSource
    DataSet = qryConsumer
    Left = 648
    Top = 384
  end
  object qryConsumer: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'select '
      '   DISTINCT c.id,'
      '   CAST(c.accountno as Char(150)) as AccountNo,'
      '   CAST(c.AccountName as Char(150)) as AccountName,'
      '   CAST(c.RouteSequence as Char(150)) as RouteSequence,'
      '   CAST(c.RouteAddress as Char(150)) as RouteAddress'
      'from '
      '   consumeraccount c '
      'where'
      
        '   c.AccountNo NOT IN(select cc.AccountNo from consumeraccountwi' +
        'thbillexempt cc)'
      'and '
      '   c.RouteAddress = :ArouteAddress'
      'order by AccountNo')
    Left = 616
    Top = 216
    ParamData = <
      item
        Name = 'AROUTEADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Value = Null
      end>
    object qryConsumerid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConsumerAccountNo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountNo'
      Origin = 'AccountNo'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountName: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountName'
      Origin = 'AccountName'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerRouteSequence: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'RouteSequence'
      Origin = 'RouteSequence'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerRouteAddress: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'RouteAddress'
      Origin = 'RouteAddress'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object qryExempt: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'Select '
      '  CAST(c.AccountNo as CHAR(120)) as AccountNo,'
      '  CAST(c.AccountName as CHAR(120)) as AccountName,'
      '  c.RouteCode,'
      '  CAST(b.exemptName as CHAR(120)) as exemptName,'
      '  CAST(b.description as CHAR(120)) as description,'
      '  CAST(b.status as CHAR(120)) as status'
      'from '
      '  ConsumerAccountWithBillExempt c '
      'left join'
      '  BillExempttype b '
      'on '
      '  c.BillExempt = b.id'
      'where'
      '  c.RouteCode = :ARouteCode')
    Left = 632
    Top = 320
    ParamData = <
      item
        Name = 'AROUTECODE'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qryExemptAccountNo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountNo'
      Origin = 'AccountNo'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryExemptAccountName: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountName'
      Origin = 'AccountName'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryExemptroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object qryExemptexemptName: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'exemptName'
      Origin = 'exemptName'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryExemptdescription: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'description'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryExemptstatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object dsExempt: TDataSource
    DataSet = qryExempt
    Left = 496
    Top = 368
  end
  object qryRouteAddress: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'select * from Routes')
    Left = 408
    Top = 304
    object qryRouteAddressid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryRouteAddressroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object qryRouteAddressrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object qryExemptionView: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'Select '
      '  id,'
      '  CAST(exemptname as Char(150)) as exemptname,'
      '  CAST(description as Char(150)) as description,'
      '  CAST(status as Char(150)) as status'
      'from BillExemptType')
    Left = 416
    Top = 360
    object qryExemptionViewid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryExemptionViewexemptname: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'exemptname'
      Origin = 'exemptname'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryExemptionViewdescription: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'description'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryExemptionViewstatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object dsExemption: TDataSource
    DataSet = qryExemptionView
    Left = 440
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Left = 688
    Top = 160
    object IndividualRemove1: TMenuItem
      Caption = 'Individual Remove'
      OnClick = IndividualRemove1Click
    end
    object MultipleRemove1: TMenuItem
      Caption = 'Multiple Remove'
      OnClick = MultipleRemove1Click
    end
  end
  object tblConsumerAccountExcempt: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'consumeraccountwithbillexempt'
    TableName = 'consumeraccountwithbillexempt'
    Left = 672
    Top = 72
    object tblConsumerAccountExcemptaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountExcemptaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountExcemptroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object tblConsumerAccountExcemptbillexempt: TIntegerField
      FieldName = 'billexempt'
      Origin = 'billexempt'
      Required = True
    end
    object tblConsumerAccountExcemptid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
    end
  end
  object qryExemption: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'billexempttype'
    TableName = 'billexempttype'
    Left = 272
    Top = 384
    object qryExemptionid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
    end
    object qryExemptionexemptname: TWideMemoField
      FieldName = 'exemptname'
      Origin = 'exemptname'
      BlobType = ftWideMemo
    end
    object qryExemptiondescription: TWideMemoField
      FieldName = 'description'
      Origin = 'description'
      BlobType = ftWideMemo
    end
    object qryExemptionstatus: TWideMemoField
      FieldName = 'status'
      Origin = 'status'
      BlobType = ftWideMemo
    end
  end
  object tblConsumerExcemptDelete: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'consumeraccountwithbillexempt'
    TableName = 'consumeraccountwithbillexempt'
    Left = 680
    Top = 120
    object WideMemoField1: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      Required = True
      BlobType = ftWideMemo
    end
    object WideMemoField2: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object IntegerField1: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'billexempt'
      Origin = 'billexempt'
      Required = True
    end
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 344
    Top = 383
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
  end
end
