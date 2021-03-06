object DownloadingNewReadingForm: TDownloadingNewReadingForm
  Left = 0
  Top = 0
  Caption = 'Downloading Reading'
  ClientHeight = 615
  ClientWidth = 783
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    783
    615)
  PixelsPerInch = 97
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 601
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    DesignSize = (
      281
      601)
    object Shape1: TShape
      Left = -24
      Top = 104
      Width = 345
      Height = 8
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = cl3DDkShadow
    end
    object Gauge1: TGauge
      Left = 18
      Top = 6
      Width = 93
      Height = 93
      BackColor = 16570031
      BorderStyle = bsNone
      ForeColor = 16769196
      Kind = gkPie
      Progress = 0
    end
    object GroupBox5: TGroupBox
      Left = 5
      Top = 226
      Width = 271
      Height = 328
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Computer Information'
      TabOrder = 3
      DesignSize = (
        271
        328)
      object Label14: TLabel
        Left = 8
        Top = 18
        Width = 73
        Height = 14
        Caption = 'Drive Letter :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 89
        Top = 18
        Width = 20
        Height = 14
        Anchors = [akLeft, akTop, akRight]
        Caption = 'D:\'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 8
        Top = 44
        Width = 155
        Height = 13
        Caption = 'Files Available in Selected Folder'
      end
      object RzFileListBox1: TRzFileListBox
        Left = 13
        Top = 63
        Width = 255
        Height = 254
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 18
        Mask = '*.txt'
        ParentFont = False
        TabOrder = 0
        OnDblClick = RzFileListBox1DblClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 228
      Width = 271
      Height = 326
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Device Information'
      TabOrder = 1
      DesignSize = (
        271
        326)
      object Label1: TLabel
        Left = 8
        Top = 73
        Width = 55
        Height = 14
        Caption = 'Device is :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 65
        Top = 73
        Width = 92
        Height = 14
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Not Connected'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 241
        Width = 79
        Height = 14
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Device Name :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 259
        Width = 99
        Height = 14
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Device Serial No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 109
        Top = 241
        Width = 15
        Height = 14
        Anchors = [akLeft, akRight, akBottom]
        Caption = '---'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 113
        Top = 259
        Width = 15
        Height = 14
        Anchors = [akLeft, akRight, akBottom]
        Caption = '---'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 120
        Width = 113
        Height = 13
        Caption = 'Files Available in Device'
      end
      object Label9: TLabel
        Left = 8
        Top = 290
        Width = 213
        Height = 25
        Anchors = [akLeft, akRight, akBottom]
        AutoSize = False
        Caption = 'Note : '#13'    Double Click To Select What to Upload '
        WordWrap = True
      end
      object Label10: TLabel
        Left = 8
        Top = 91
        Width = 60
        Height = 14
        Caption = 'File Name :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape3: TShape
        Left = 8
        Top = 64
        Width = 255
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = cl3DDkShadow
      end
      object Label3: TLabel
        Left = 8
        Top = 16
        Width = 73
        Height = 13
        Caption = 'Meter Reader :'
      end
      object Label18: TLabel
        Left = 231
        Top = 16
        Width = 32
        Height = 13
        Caption = '(Filter)'
        Enabled = False
      end
      object Memo1: TMemo
        Left = 8
        Top = 168
        Width = 248
        Height = 51
        TabOrder = 1
        Visible = False
        WordWrap = False
      end
      object ListBox1: TListBox
        Left = 8
        Top = 136
        Width = 255
        Height = 100
        Anchors = [akLeft, akTop, akRight, akBottom]
        ExtendedSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        PopupMenu = pmFilesDevice
        TabOrder = 0
        OnDblClick = ListBox1DblClick
      end
      object Memo2: TMemo
        Left = 65
        Top = 91
        Width = 198
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'None')
        ParentFont = False
        PopupMenu = pmFilesDevice
        TabOrder = 2
        OnChange = Memo2Change
        OnKeyPress = Memo2KeyPress
      end
      object ComboBox1: TComboBox
        Left = 12
        Top = 33
        Width = 251
        Height = 29
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = 'ComboBox1'
        OnClick = ComboBox1Click
      end
      object Edit2: TEdit
        Left = 8
        Top = 31
        Width = 238
        Height = 31
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TextHint = 'Meter Reader'
        OnClick = Edit2Click
        OnKeyPress = Edit2KeyPress
      end
      object Panel2: TPanel
        Left = 245
        Top = 33
        Width = 18
        Height = 1
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 6
      end
      object Panel3: TPanel
        Left = 243
        Top = 59
        Width = 20
        Height = 3
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 7
      end
      object Panel1: TPanel
        Left = 262
        Top = 31
        Width = 7
        Height = 31
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 5
      end
    end
    object BitBtn1: TBitBtn
      Left = 128
      Top = 9
      Width = 139
      Height = 53
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Get Data'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object GroupBox4: TGroupBox
      Left = 6
      Top = 119
      Width = 270
      Height = 105
      TabOrder = 2
      object RadioButton1: TRadioButton
        Left = 14
        Top = 7
        Width = 244
        Height = 17
        Caption = 'External Devices / Mobile / Tablet / Wifi Conn.'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 14
        Top = 31
        Width = 242
        Height = 24
        Caption = 'Internal Storage Path / Local Path / Computer Drive'
        TabOrder = 1
        WordWrap = True
        OnClick = RadioButton2Click
      end
      object BitBtn3: TBitBtn
        Left = 15
        Top = 61
        Width = 202
        Height = 34
        Caption = 'Browse Location'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object RzBitBtn1: TRzBitBtn
        Left = 223
        Top = 61
        Width = 32
        Height = 34
        TabOrder = 3
        OnClick = RzBitBtn1Click
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000420B0000420B00000001000000000000000000003300
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
          E8E8A3CEA3D5D5D5D5D5E8E8E8E8E8E8E8E881AC81E3E3E3E3E3E8E8E8E8E8E8
          E8E8A3CEA3D6D6D6D6D6E8E8E8E8E8E8E8E881AC81E3E3E3E3E3E8E8E8E8E8E8
          E8E8A3D5D5A3A3A3A3A3E8E8E8E8E8E8E8E881E3E38181818181E8E8E8E8DFE8
          DFE8A3D6D5D5D5D6D6D6E8E8E8E8DFE8DFE881E3E3E3E3E3E3E3E8E8E8E8E8E8
          E8E8E8A3D6D6D6A3A3A3E8E8E8E8E8E8E8E8E881E3E3E3818181E8E8E8E8DFE8
          E8E8E8E8A3A3A3E8E8E8E8E8E8E8DFE8E8E8E8E8818181E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8A378787878
          78787878E8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8A3CEA3D5CECE
          CECEA3D578E8E8E8E8E881AC81E3ACACACAC81E381E8E8E8E8E8A3CEA3D5D5D5
          D5D5CED578E8E8E8E8E881AC81E3E3E3E3E3ACE381E8E8E8E8E8A3CEA3D5D5D5
          D5D5CED578E8E8E8E8E881AC81E3E3E3E3E3ACE381E8E8E8E8E8A3CEA3D6D6D6
          D6D6D5D8D8D8D8D8E8E881AC81E3E3E3E3E3E38181818181E8E8A3D5D5A3A3A3
          A3A3A3A3D8D8D8D8E8E881E3E38181818181818181818181E8E8A3D6D5D5D5D6
          D6D678E8E8D8D8D8D8E881E3E3E3E3E3E3E381E8E881818181E8E8A3D6D6D6A3
          A3A3E8E8E8E8D8E8D8D8E881E3E3E3818181E8E8E8E881E88181E8E8A3A3A3E8
          E8E8E8E8E8E8E8E8E8D8E8E8818181E8E8E8E8E8E8E8E8E8E881}
        NumGlyphs = 2
      end
    end
    object BitBtn2: TBitBtn
      Left = 128
      Top = 68
      Width = 139
      Height = 29
      Caption = 'USB Connection Refresh'
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object CheckBox1: TCheckBox
      Left = 13
      Top = 574
      Width = 211
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'ADB Wireless Connection'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object GroupBox3: TGroupBox
    Left = 295
    Top = 8
    Width = 481
    Height = 601
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    DesignSize = (
      481
      601)
    object Label11: TLabel
      Left = 7
      Top = 4
      Width = 64
      Height = 32
      Caption = 'SELECTED '#13'PATH FILE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 84
      Top = 13
      Width = 32
      Height = 16
      Caption = 'None'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 72
      Top = 13
      Width = 5
      Height = 16
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGridEh1: TDBGridEh
      Left = 7
      Top = 39
      Width = 467
      Height = 554
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSConsumerAccount
      DynProps = <>
      PopupMenu = PopupMenu1
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      TabOrder = 0
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
          FieldName = 'Account No'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'accountname'
          Footers = <>
          Title.Caption = 'Account Name'
          Width = 100
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
          FieldName = 'routecode'
          Footers = <>
          Title.Caption = 'Route Code'
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'routeaddress'
          Footers = <>
          Title.Caption = 'Route Address'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ratecode'
          Footers = <>
          Title.Caption = 'Rate Code'
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'connectiontype'
          Footers = <>
          Title.Caption = 'Conn Type'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'connectionstatus'
          Footers = <>
          Title.Caption = 'Conn Status'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'newconnectionstatus'
          Footers = <>
          Title.Caption = 'New Conn Stat'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'isseniorcitizen'
          Footers = <>
          Title.Caption = 'Senior Citizen'
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
          Title.Caption = 'Meter Serial No'
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
          FieldName = 'billnumber'
          Footers = <>
          Title.Caption = 'Bill Number'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'previousreading'
          Footers = <>
          Title.Caption = 'Previous Reading'
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
          FieldName = 'presentreading'
          Footers = <>
          Title.Caption = 'Present Reading'
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
          Title.Caption = 'Current Consump'
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
          Title.Caption = 'Old Meter Consumption'
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
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'currentamountdue'
          Footers = <>
          Title.Caption = 'Current Amount Due'
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
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
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'discountamount'
          Footers = <>
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'penaltyamount'
          Footers = <>
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalbillarrears'
          Footers = <>
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalotherfees'
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
          FieldName = 'dateuploaded'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel4: TPanel
      Left = 144
      Top = 132
      Width = 266
      Height = 157
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      DesignSize = (
        262
        153)
      object GroupBox6: TGroupBox
        Left = 4
        Top = 1
        Width = 253
        Height = 147
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Filtering Data'
        TabOrder = 0
        DesignSize = (
          253
          147)
        object Label17: TLabel
          Left = 9
          Top = 30
          Width = 78
          Height = 13
          Caption = 'Route Address :'
        end
        object Shape2: TShape
          Left = 9
          Top = 78
          Width = 236
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          Pen.Color = cl3DDkShadow
        end
        object ComboBox2: TComboBox
          Left = 9
          Top = 46
          Width = 236
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'ComboBox1'
          OnChange = ComboBox2Change
        end
        object Edit1: TEdit
          Left = 9
          Top = 46
          Width = 220
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
          TextHint = 'Route Address / Barangay'
          OnClick = Edit1Click
          OnKeyPress = Edit1KeyPress
        end
        object Panel5: TPanel
          Left = 244
          Top = 45
          Width = 2
          Height = 31
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 2
        end
        object Panel6: TPanel
          Left = 227
          Top = 46
          Width = 26
          Height = 1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
        object Panel7: TPanel
          Left = 227
          Top = 73
          Width = 26
          Height = 1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 4
        end
        object Panel8: TPanel
          Left = 138
          Top = 96
          Width = 108
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = 'Filter Data'
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          OnClick = Panel8Click
          OnMouseEnter = Panel8MouseEnter
          OnMouseLeave = Panel8MouseLeave
        end
        object Panel9: TPanel
          Left = 9
          Top = 96
          Width = 108
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = 'Cancel'
          Color = clWhite
          ParentBackground = False
          TabOrder = 6
          OnClick = Panel9Click
          OnMouseEnter = Panel9MouseEnter
          OnMouseLeave = Panel9MouseLeave
        end
      end
    end
  end
  object Panel13: TPanel
    Left = 439
    Top = 338
    Width = 239
    Height = 102
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    DesignSize = (
      235
      98)
    object Label19: TLabel
      Left = 125
      Top = 3
      Width = 102
      Height = 13
      Caption = '(MMYYYY) / (012021)'
      Enabled = False
    end
    object Label20: TLabel
      Left = 8
      Top = 3
      Width = 50
      Height = 13
      Caption = 'Bil Month :'
    end
    object Shape4: TShape
      Left = 8
      Top = 55
      Width = 219
      Height = 1
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = cl3DDkShadow
    end
    object ComboBox3: TComboBox
      Left = 8
      Top = 25
      Width = 219
      Height = 29
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'ComboBox1'
      OnChange = ComboBox3Change
      OnClick = ComboBox3Click
    end
    object Edit3: TEdit
      Left = 8
      Top = 24
      Width = 202
      Height = 31
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TextHint = 'Bill Month'
      OnClick = Edit3Click
      OnKeyPress = Edit3KeyPress
    end
    object Panel10: TPanel
      Left = 226
      Top = 23
      Width = 1
      Height = 31
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 2
    end
    object Panel11: TPanel
      Left = 209
      Top = 25
      Width = 21
      Height = 1
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Panel12: TPanel
      Left = 209
      Top = 53
      Width = 21
      Height = 1
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 4
    end
    object Panel14: TPanel
      Left = 95
      Top = 64
      Width = 132
      Height = 28
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Find Location'
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
      OnClick = Panel14Click
      OnMouseEnter = Panel14MouseEnter
      OnMouseLeave = Panel14MouseLeave
    end
    object Panel15: TPanel
      Left = 8
      Top = 64
      Width = 82
      Height = 28
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Cancel / Close'
      Color = clWhite
      ParentBackground = False
      TabOrder = 6
      OnClick = Panel15Click
      OnMouseEnter = Panel15MouseEnter
      OnMouseLeave = Panel15MouseLeave
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 368
    Top = 272
  end
  object VirtualTable1: TVirtualTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'FileName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SName'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'SDate'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'FileDate'
        DataType = ftDate
      end
      item
        Name = 'MName'
        DataType = ftString
        Size = 150
      end>
    Left = 344
    Top = 368
    Data = {
      03000600020069640300000000000000080046696C654E616D65010032000000
      00000500534E616D650100960000000000050053446174650100960000000000
      080046696C6544617465090000000000000005004D4E616D6501009600000000
      00000000000000}
    object VirtualTable1id: TAutoIncField
      FieldName = 'id'
    end
    object VirtualTable1FileName: TStringField
      FieldName = 'FileName'
      Size = 50
    end
    object VirtualTable1SName: TStringField
      FieldName = 'SName'
      Size = 150
    end
    object VirtualTable1SDate: TStringField
      FieldName = 'SDate'
      Size = 150
    end
    object VirtualTable1FileDate: TDateField
      FieldName = 'FileDate'
    end
    object VirtualTable1MName: TStringField
      FieldName = 'MName'
      Size = 150
    end
  end
  object pmFilesDevice: TPopupMenu
    Left = 373
    Top = 415
    object Select1: TMenuItem
      Caption = 'Select'
      OnClick = Select1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Unselect1: TMenuItem
      Caption = 'Unselect'
      OnClick = Unselect1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
    end
  end
  object vtConsumerAccountUpload: TVirtualTable
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftAutoInc
      end
      item
        Name = 'accountno'
        DataType = ftWideMemo
      end
      item
        Name = 'accountname'
        DataType = ftWideMemo
      end
      item
        Name = 'routesequence'
        DataType = ftInteger
      end
      item
        Name = 'routecode'
        DataType = ftInteger
      end
      item
        Name = 'routeaddress'
        DataType = ftWideMemo
      end
      item
        Name = 'ratecode'
        DataType = ftInteger
      end
      item
        Name = 'connectiontype'
        DataType = ftWideMemo
      end
      item
        Name = 'connectionstatus'
        DataType = ftWideMemo
      end
      item
        Name = 'newconnectionstatus'
        DataType = ftWideMemo
      end
      item
        Name = 'isseniorcitizen'
        DataType = ftInteger
      end
      item
        Name = 'mobilenumber'
        DataType = ftWideMemo
      end
      item
        Name = 'meterbrand'
        DataType = ftWideMemo
      end
      item
        Name = 'meterserialno'
        DataType = ftWideMemo
      end
      item
        Name = 'billmonth'
        DataType = ftWideMemo
      end
      item
        Name = 'billnumber'
        DataType = ftInteger
      end
      item
        Name = 'previousreading'
        DataType = ftFloat
      end
      item
        Name = 'previousreadingdate'
        DataType = ftWideMemo
      end
      item
        Name = 'presentreading'
        DataType = ftFloat
      end
      item
        Name = 'presentreadingdate'
        DataType = ftWideMemo
      end
      item
        Name = 'averageconsumption'
        DataType = ftFloat
      end
      item
        Name = 'currentconsumption'
        DataType = ftFloat
      end
      item
        Name = 'totalconsumption'
        DataType = ftFloat
      end
      item
        Name = 'oldmeterconsumption'
        DataType = ftFloat
      end
      item
        Name = 'meterfindings'
        DataType = ftWideMemo
      end
      item
        Name = 'readingremarks'
        DataType = ftWideMemo
      end
      item
        Name = 'currentamountdue'
        DataType = ftFloat
      end
      item
        Name = 'totalamountdue'
        DataType = ftFloat
      end
      item
        Name = 'totalamountafterduedate'
        DataType = ftFloat
      end
      item
        Name = 'discountamount'
        DataType = ftFloat
      end
      item
        Name = 'penaltyamount'
        DataType = ftFloat
      end
      item
        Name = 'totalbillarrears'
        DataType = ftFloat
      end
      item
        Name = 'totalotherfees'
        DataType = ftFloat
      end
      item
        Name = 'paymentduedate'
        DataType = ftWideMemo
      end
      item
        Name = 'paymentdateafterdue'
        DataType = ftWideMemo
      end
      item
        Name = 'disconnectiondate'
        DataType = ftWideMemo
      end
      item
        Name = 'readingtime'
        DataType = ftWideMemo
      end
      item
        Name = 'meterreadername'
        DataType = ftWideMemo
      end
      item
        Name = 'numberofreadingretry'
        DataType = ftInteger
      end
      item
        Name = 'numberofbillprinted'
        DataType = ftInteger
      end
      item
        Name = 'numberofsmssent'
        DataType = ftInteger
      end
      item
        Name = 'dateuploaded'
        DataType = ftWideMemo
      end>
    Left = 383
    Top = 328
    Data = {
      03002A00020069640E0000000000000009006163636F756E746E6F2700000000
      0000000B006163636F756E746E616D6527000000000000000D00726F75746573
      657175656E636503000000000000000900726F757465636F6465030000000000
      00000C00726F757465616464726573732700000000000000080072617465636F
      646503000000000000000E00636F6E6E656374696F6E74797065270000000000
      00001000636F6E6E656374696F6E737461747573270000000000000013006E65
      77636F6E6E656374696F6E73746174757327000000000000000F00697373656E
      696F72636974697A656E03000000000000000C006D6F62696C656E756D626572
      27000000000000000A006D657465726272616E6427000000000000000D006D65
      74657273657269616C6E6F2700000000000000090062696C6C6D6F6E74682700
      0000000000000A0062696C6C6E756D62657203000000000000000F0070726576
      696F757372656164696E670600000000000000130070726576696F7573726561
      64696E676461746527000000000000000E0070726573656E7472656164696E67
      0600000000000000120070726573656E7472656164696E676461746527000000
      00000000120061766572616765636F6E73756D7074696F6E0600000000000000
      120063757272656E74636F6E73756D7074696F6E06000000000000001000746F
      74616C636F6E73756D7074696F6E060000000000000013006F6C646D65746572
      636F6E73756D7074696F6E06000000000000000D006D6574657266696E64696E
      677327000000000000000E0072656164696E6772656D61726B73270000000000
      0000100063757272656E74616D6F756E7464756506000000000000000E00746F
      74616C616D6F756E7464756506000000000000001700746F74616C616D6F756E
      7461667465726475656461746506000000000000000E00646973636F756E7461
      6D6F756E7406000000000000000D0070656E616C7479616D6F756E7406000000
      000000001000746F74616C62696C6C6172726561727306000000000000000E00
      746F74616C6F746865726665657306000000000000000E007061796D656E7464
      756564617465270000000000000013007061796D656E74646174656166746572
      64756527000000000000001100646973636F6E6E656374696F6E646174652700
      0000000000000B0072656164696E6774696D6527000000000000000F006D6574
      65727265616465726E616D65270000000000000014006E756D6265726F667265
      6164696E677265747279030000000000000013006E756D6265726F6662696C6C
      7072696E74656403000000000000000F006E756D6265726F66736D7373656E74
      03000000000000000C006461746575706C6F6164656427000000000000000000
      00000000}
    object vtConsumerAccountUploadid: TAutoIncField
      FieldName = 'id'
      Required = True
    end
    object vtConsumerAccountUploadaccountno: TWideMemoField
      FieldName = 'accountno'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadaccountname: TWideMemoField
      FieldName = 'accountname'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadroutesequence: TIntegerField
      FieldName = 'routesequence'
    end
    object vtConsumerAccountUploadroutecode: TIntegerField
      FieldName = 'routecode'
    end
    object vtConsumerAccountUploadrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadratecode: TIntegerField
      FieldName = 'ratecode'
    end
    object vtConsumerAccountUploadconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadnewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
    end
    object vtConsumerAccountUploadmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadbillmonth: TWideMemoField
      FieldName = 'billmonth'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadbillnumber: TIntegerField
      FieldName = 'billnumber'
    end
    object vtConsumerAccountUploadpreviousreading: TFloatField
      FieldName = 'previousreading'
    end
    object vtConsumerAccountUploadpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadpresentreading: TFloatField
      FieldName = 'presentreading'
    end
    object vtConsumerAccountUploadpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
    end
    object vtConsumerAccountUploadcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
    end
    object vtConsumerAccountUploadtotalconsumption: TFloatField
      FieldName = 'totalconsumption'
    end
    object vtConsumerAccountUploadoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
    end
    object vtConsumerAccountUploadmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadcurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
    end
    object vtConsumerAccountUploadtotalamountdue: TFloatField
      FieldName = 'totalamountdue'
    end
    object vtConsumerAccountUploadtotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
    end
    object vtConsumerAccountUploaddiscountamount: TFloatField
      FieldName = 'discountamount'
    end
    object vtConsumerAccountUploadpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
    end
    object vtConsumerAccountUploadtotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
    end
    object vtConsumerAccountUploadtotalotherfees: TFloatField
      FieldName = 'totalotherfees'
    end
    object vtConsumerAccountUploadpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploaddisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadreadingtime: TWideMemoField
      FieldName = 'readingtime'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountUploadnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
    end
    object vtConsumerAccountUploadnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
    end
    object vtConsumerAccountUploadnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
    end
    object vtConsumerAccountUploaddateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 391
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 735
    Top = 120
    object ShowAllRecords1: TMenuItem
      Caption = 'Show All Records'
      OnClick = ShowAllRecords1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object FilterData1: TMenuItem
      Caption = 'Filter Data'
      OnClick = FilterData1Click
    end
  end
  object DSConsumerAccount: TDataSource
    DataSet = DownloadingNewReadingDataModule.qryGetConsumerAccount
    Left = 383
    Top = 128
  end
end
