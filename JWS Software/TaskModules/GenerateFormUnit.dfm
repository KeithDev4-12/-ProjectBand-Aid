object GenerateForm: TGenerateForm
  Left = 0
  Top = 0
  Caption = 'Generate Schedule'
  ClientHeight = 674
  ClientWidth = 789
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    789
    674)
  PixelsPerInch = 97
  TextHeight = 13
  object Label10: TLabel
    Left = 8
    Top = 8
    Width = 79
    Height = 13
    Caption = '(Generate Here)'
  end
  object Shape5: TShape
    Left = 90
    Top = 15
    Width = 129
    Height = 1
    Pen.Color = cl3DDkShadow
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 25
    Width = 211
    Height = 234
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 52
      Height = 13
      Caption = 'Bill Month :'
    end
    object Shape1: TShape
      Left = 8
      Top = 57
      Width = 195
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Label2: TLabel
      Left = 155
      Top = 10
      Width = 48
      Height = 13
      Caption = '(MMYYYY)'
    end
    object Label3: TLabel
      Left = 8
      Top = 68
      Width = 78
      Height = 13
      Caption = 'Route Address :'
    end
    object Shape2: TShape
      Left = 8
      Top = 116
      Width = 195
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Label5: TLabel
      Left = 149
      Top = 68
      Width = 54
      Height = 13
      Caption = '(Barangay)'
    end
    object Shape3: TShape
      Left = 84
      Top = 171
      Width = 119
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Label4: TLabel
      Left = 8
      Top = 164
      Width = 72
      Height = 13
      Caption = '(Preview Here)'
    end
    object Edit1: TEdit
      Left = 8
      Top = 28
      Width = 195
      Height = 27
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Bill Month        (MMYYYY)'
      OnClick = Edit1Click
    end
    object BitBtn1: TBitBtn
      Left = 46
      Top = 155
      Width = 157
      Height = 15
      Caption = 'LOAD FILE'
      TabOrder = 1
      Visible = False
      OnClick = BitBtn1Click
    end
    object RzBitBtn1: TRzBitBtn
      Left = 7
      Top = 155
      Width = 36
      Height = 14
      TabOrder = 2
      Visible = False
      OnClick = RzBitBtn1Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000330B0000330B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8A378787878
        787878787878AAE8E8E8E88181818181818181818181ACE8E8E8A3A3D5CECECE
        CECECECECEA378E8E8E88181E3ACACACACACACACAC8181E8E8E8A3A3CED5D5D5
        D5D5D5D5D5CE78A3E8E88181ACE3E3E3E3E3E3E3E3AC8181E8E8A3A3CED5D5D5
        D5D5D5D5D5CEAA78E8E88181ACE3E3E3E3E3E3E3E3ACAC81E8E8A3CEA3D5D5D5
        D5D5D5D5D5CED578A3E881AC81E3E3E3E3E3E3E3E3ACE38181E8A3CEAAAAD5D5
        D5D5D5D5D5CED5AA78E881ACACACE3E3E3E3E3E3E3ACE3AC81E8A3D5CEA3D6D6
        D6D6D6D6D6D5D6D678E881E3AC81E3E3E3E3E3E3E3E3E3E381E8A3D5D5CEA3A3
        A3A3A3A3A3A3A3A3CEE881E3E3AC81818181818181818181ACE8A3D6D5D5D5D5
        D6D6D6D6D678E8E8E8E881E3E3E3E3E3E3E3E3E3E381E8E8E8E8E8A3D6D6D6D6
        A3A3A3A3A3E8E8E8E8E8E881E3E3E3E38181818181E8E8E8E8E8E8E8A3A3A3A3
        E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 86
      Width = 195
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
      OnClick = ComboBox1Click
    end
    object Edit2: TEdit
      Left = 8
      Top = 85
      Width = 179
      Height = 31
      AutoSize = False
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TextHint = 'Route Address'
      OnChange = Edit2Change
    end
    object Panel1: TPanel
      Left = 202
      Top = 86
      Width = 1
      Height = 31
      BevelOuter = bvNone
      TabOrder = 5
    end
    object Panel2: TPanel
      Left = 187
      Top = 85
      Width = 28
      Height = 2
      BevelOuter = bvNone
      TabOrder = 6
    end
    object RzBitBtn2: TRzBitBtn
      Left = 8
      Top = 183
      Width = 195
      Height = 42
      Caption = 'Preview Record'
      TabOrder = 7
      OnClick = RzBitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 8
      Top = 122
      Width = 195
      Height = 39
      Caption = 'Get Data From MYSQL'
      TabOrder = 8
      OnClick = BitBtn4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 226
    Top = 8
    Width = 557
    Height = 635
    AllowedOperations = [alopUpdateEh]
    Anchors = [akLeft, akTop, akRight, akBottom]
    Border.ExtendedDraw = False
    Ctl3D = True
    DataSource = DataSource1
    DynProps = <>
    EditActions = [geaCopyEh, geaPasteEh]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 1
    OnColExit = DBGridEh1ColExit
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
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
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ratecode'
        Footers = <>
        Title.Caption = 'Rate Code'
        Width = 78
      end
      item
        CellButtons = <>
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'isseniorcitizen'
        Footers = <>
        Title.Caption = 'Senior Citizen'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ispwd'
        Footers = <>
        Title.Caption = 'PWD'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TotalBillArrears'
        Footers = <>
        Title.Caption = 'Tota Bill Arrears'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TotalOtherFees'
        Footers = <>
        Title.Caption = 'Total Other Fees'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MobileNo'
        Footers = <>
        Title.Caption = 'Mobile No.'
        Width = 120
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn3: TBitBtn
    Left = 8
    Top = 629
    Width = 211
    Height = 41
    Anchors = [akLeft, akBottom]
    Caption = 'Close'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 265
    Width = 211
    Height = 193
    TabOrder = 3
    object Shape4: TShape
      Left = 15
      Top = 25
      Width = 188
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape6: TShape
      Left = 23
      Top = 48
      Width = 180
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape7: TShape
      Left = 15
      Top = 105
      Width = 188
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object Shape8: TShape
      Left = 15
      Top = 26
      Width = 1
      Height = 79
      Pen.Color = cl3DDkShadow
    end
    object Shape9: TShape
      Left = 23
      Top = 76
      Width = 180
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 7
      Width = 195
      Height = 17
      Caption = '   Multiple Selection'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object RadioButton1: TRadioButton
      Left = 23
      Top = 29
      Width = 180
      Height = 17
      Caption = '   Rate Code'
      Checked = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 23
      Top = 54
      Width = 180
      Height = 17
      Caption = '   Senior Citizen'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 143
      Width = 195
      Height = 41
      Caption = 'Post All Selected'
      Enabled = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object RadioButton3: TRadioButton
      Left = 23
      Top = 82
      Width = 180
      Height = 17
      Caption = '   PWD'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = RadioButton3Click
    end
    object RzComboBox1: TRzComboBox
      Left = 7
      Top = 111
      Width = 196
      Height = 27
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'Residential'
      OnChange = RzComboBox1Change
      Items.Strings = (
        'Residential'
        'Commercial')
      ItemIndex = 0
    end
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 15
    Top = 472
    Width = 196
    Height = 27
    DataField = 'isseniorcitizen'
    DataSource = DataSource1
    DropDownWidth = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'SCCode'
    ListField = 'SCValue'
    ListSource = DataSource3
    ParentFont = False
    TabOrder = 4
    OnKeyPress = DBLookupComboBox2KeyPress
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 15
    Top = 480
    Width = 196
    Height = 27
    DataField = 'ratecode'
    DataSource = DataSource1
    DropDownWidth = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'ratecode'
    ListField = 'ConnectionType'
    ListSource = DataSource2
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnKeyPress = DBLookupComboBox1KeyPress
  end
  object Memo1: TMemo
    Left = 576
    Top = 152
    Width = 185
    Height = 89
    Lines.Strings = (
      'Select * from :ALA  ORDER BY id '
      'Desc Limit 1')
    TabOrder = 6
    Visible = False
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 15
    Top = 472
    Width = 196
    Height = 27
    DataField = 'ispwd'
    DataSource = DataSource1
    DropDownWidth = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'id'
    ListField = 'pwdvalue'
    ListSource = DataSource4
    ParentFont = False
    TabOrder = 7
    Visible = False
    OnKeyPress = DBLookupComboBox3KeyPress
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 464
    Width = 211
    Height = 105
    TabOrder = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 296
    Top = 328
  end
  object tblMainConsumerAccount: TFDTable
    IndexFieldNames = 'id'
    ConstraintsEnabled = True
    Connection = MainDataModule.SQLiteJWSMainDatabaseConn
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'consumeraccount'
    TableName = 'consumeraccount'
    Left = 424
    Top = 416
    object tblMainConsumerAccountid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblMainConsumerAccountaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object tblMainConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object tblMainConsumerAccountrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object tblMainConsumerAccountconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      Required = True
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountnewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object tblMainConsumerAccountmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      Required = True
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object tblMainConsumerAccountpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object tblMainConsumerAccountpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      Required = True
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object tblMainConsumerAccountpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object tblMainConsumerAccountcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object tblMainConsumerAccounttotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object tblMainConsumerAccountoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object tblMainConsumerAccountmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountcurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
      Origin = 'currentamountdue'
    end
    object tblMainConsumerAccounttotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object tblMainConsumerAccounttotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object tblMainConsumerAccountdiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object tblMainConsumerAccountpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object tblMainConsumerAccounttotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object tblMainConsumerAccounttotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object tblMainConsumerAccountpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountreadingtime: TWideMemoField
      FieldName = 'readingtime'
      Origin = 'readingtime'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      BlobType = ftWideMemo
    end
    object tblMainConsumerAccountnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object tblMainConsumerAccountnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object tblMainConsumerAccountnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object tblMainConsumerAccountdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
  object qryRouteAddress: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT ID, ROUTECODE,'
      'CAST(ROUTEADDRESS AS CHAR(100)) AS ROUTEADDRESS '
      'FROM ROUTES'
      'ORDER BY ROUTEADDRESS')
    Left = 288
    Top = 416
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
    object qryRouteAddressROUTEADDRESS: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROUTEADDRESS'
      Origin = 'ROUTEADDRESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object qryConsumerAccount: TFDQuery
    ConstraintsEnabled = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    FetchOptions.AssignedValues = [evMode, evItems, evRowsetSize, evCache, evUnidirectional]
    FetchOptions.Unidirectional = True
    FetchOptions.RowsetSize = 100
    FetchOptions.Items = [fiBlobs, fiDetails]
    FetchOptions.Cache = []
    SQL.Strings = (
      
        'SELECT * FROM CONSUMERACCOUNT WHERE ROUTEADDRESS = :AROUTEADDRES' +
        'S')
    Left = 480
    Top = 416
    ParamData = <
      item
        Name = 'AROUTEADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Value = 'cogon'
      end>
    object qryConsumerAccountid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConsumerAccountaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
    end
    object qryConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
    end
    object qryConsumerAccountrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
    end
    object qryConsumerAccountconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountnewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object qryConsumerAccountmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
    end
    object qryConsumerAccountpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
    end
    object qryConsumerAccountpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object qryConsumerAccountpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object qryConsumerAccountcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object qryConsumerAccounttotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object qryConsumerAccountoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object qryConsumerAccountmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountcurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
      Origin = 'currentamountdue'
    end
    object qryConsumerAccounttotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object qryConsumerAccounttotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object qryConsumerAccountdiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object qryConsumerAccountpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object qryConsumerAccounttotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object qryConsumerAccounttotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object qryConsumerAccountpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountreadingtime: TWideMemoField
      FieldName = 'readingtime'
      Origin = 'readingtime'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object qryConsumerAccountnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object qryConsumerAccountnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object qryConsumerAccountdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      BlobType = ftWideMemo
    end
    object qryConsumerAccountispwd: TIntegerField
      FieldName = 'ispwd'
      Origin = 'ispwd'
    end
  end
  object qryDeleteConsumerAccount: TFDQuery
    ConstraintsEnabled = True
    Connection = MainDataModule.SQLiteJWSDesktopConn
    FetchOptions.AssignedValues = [evMode, evItems, evRowsetSize, evCache, evUnidirectional]
    FetchOptions.Unidirectional = True
    FetchOptions.RowsetSize = 100
    FetchOptions.Items = [fiBlobs, fiDetails]
    FetchOptions.Cache = []
    SQL.Strings = (
      'DELETE FROM CONSUMERACCOUNT WHERE ROUTEADDRESS = :AROUTEADDRESS'
      'AND BILLMONTH = :ABillMonth')
    Left = 568
    Top = 424
    ParamData = <
      item
        Name = 'AROUTEADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Value = 'cogon'
      end
      item
        Name = 'ABILLMONTH'
        ParamType = ptInput
      end>
  end
  object tblConsumerAccount: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.UpdateTableName = 'consumeraccount'
    TableName = 'consumeraccount'
    Left = 656
    Top = 424
    object tblConsumerAccountid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblConsumerAccountaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object tblConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
    end
    object tblConsumerAccountrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object tblConsumerAccountconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountnewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object tblConsumerAccountmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object tblConsumerAccountpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object tblConsumerAccountpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      Required = True
      BlobType = ftWideMemo
    end
    object tblConsumerAccountpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object tblConsumerAccountpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object tblConsumerAccountcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object tblConsumerAccounttotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object tblConsumerAccountoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object tblConsumerAccountmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountcurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
      Origin = 'currentamountdue'
    end
    object tblConsumerAccounttotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object tblConsumerAccounttotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object tblConsumerAccountdiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object tblConsumerAccountpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object tblConsumerAccounttotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object tblConsumerAccounttotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object tblConsumerAccountpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountreadingtime: TWideMemoField
      FieldName = 'readingtime'
      Origin = 'readingtime'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      BlobType = ftWideMemo
    end
    object tblConsumerAccountnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object tblConsumerAccountnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object tblConsumerAccountnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object tblConsumerAccountdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
  object vtConsumerAccount: TVirtualTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'accountno'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'accountname'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'routesequence'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'routecode'
        DataType = ftInteger
      end
      item
        Name = 'routeaddress'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'ratecode'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'connectiontype'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'connectionstatus'
        Attributes = [faRequired]
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
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'meterserialno'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'billmonth'
        Attributes = [faRequired]
        DataType = ftWideMemo
      end
      item
        Name = 'billnumber'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'previousreading'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'previousreadingdate'
        Attributes = [faRequired]
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
    Left = 240
    Top = 336
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
    object vtConsumerAccountid: TAutoIncField
      FieldName = 'id'
    end
    object vtConsumerAccountaccountno: TWideMemoField
      FieldName = 'accountno'
      Required = True
      BlobType = ftWideMemo
    end
    object vtConsumerAccountaccountname: TWideMemoField
      FieldName = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object vtConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
      Required = True
    end
    object vtConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
    end
    object vtConsumerAccountrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object vtConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      Required = True
    end
    object vtConsumerAccountconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object vtConsumerAccountconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Required = True
      BlobType = ftWideMemo
    end
    object vtConsumerAccountnewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
    end
    object vtConsumerAccountmobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountmeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Required = True
      BlobType = ftWideMemo
    end
    object vtConsumerAccountmeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Required = True
      BlobType = ftWideMemo
    end
    object vtConsumerAccountbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object vtConsumerAccountbillnumber: TIntegerField
      FieldName = 'billnumber'
      Required = True
    end
    object vtConsumerAccountpreviousreading: TFloatField
      FieldName = 'previousreading'
      Required = True
    end
    object vtConsumerAccountpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Required = True
      BlobType = ftWideMemo
    end
    object vtConsumerAccountpresentreading: TFloatField
      FieldName = 'presentreading'
    end
    object vtConsumerAccountpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
    end
    object vtConsumerAccountcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
    end
    object vtConsumerAccounttotalconsumption: TFloatField
      FieldName = 'totalconsumption'
    end
    object vtConsumerAccountoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
    end
    object vtConsumerAccountmeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountcurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
    end
    object vtConsumerAccounttotalamountdue: TFloatField
      FieldName = 'totalamountdue'
    end
    object vtConsumerAccounttotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
    end
    object vtConsumerAccountdiscountamount: TFloatField
      FieldName = 'discountamount'
    end
    object vtConsumerAccountpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
    end
    object vtConsumerAccounttotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
    end
    object vtConsumerAccounttotalotherfees: TFloatField
      FieldName = 'totalotherfees'
    end
    object vtConsumerAccountpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountreadingtime: TWideMemoField
      FieldName = 'readingtime'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountmeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountnumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
    end
    object vtConsumerAccountnumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
    end
    object vtConsumerAccountnumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
    end
    object vtConsumerAccountdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      BlobType = ftWideMemo
    end
    object vtConsumerAccountMLP: TCurrencyField
      FieldName = 'MLP'
    end
    object vtConsumerAccountMeterFee: TCurrencyField
      FieldName = 'MeterFee'
    end
  end
  object vtFields: TVirtualTable
    Left = 720
    Top = 368
    Data = {03000000000000000000}
    object vtFieldsid: TAutoIncField
      FieldName = 'id'
    end
    object vtFieldsName: TStringField
      FieldName = 'Name'
      Size = 150
    end
    object vtFieldsValue: TStringField
      FieldName = 'Value'
      Size = 150
    end
  end
  object DataSource1: TDataSource
    DataSet = qryUpdateConsumerAccount
    Left = 416
    Top = 280
  end
  object qryGetBillNumber: TFDQuery
    Connection = MainDataModule.SQLiteJWSMainDatabaseConn
    SQL.Strings = (
      
        'SELECT * FROM consumeraccount where AccountNo = :AAccountNumber ' +
        'Order by BillNumber DESC LIMIT 1')
    Left = 624
    Top = 304
    ParamData = <
      item
        Name = 'AACCOUNTNUMBER'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qryGetBillNumberid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGetBillNumberaccountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      BlobType = ftWideMemo
    end
    object qryGetBillNumberaccountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetBillNumberroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object qryGetBillNumberroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
      Required = True
    end
    object qryGetBillNumberrouteaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetBillNumberratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object qryGetBillNumberconnectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetBillNumberconnectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetBillNumbernewconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object qryGetBillNumberisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object qryGetBillNumbermobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object qryGetBillNumbermeterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      BlobType = ftWideMemo
    end
    object qryGetBillNumbermeterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetBillNumberbillmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetBillNumberbillnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object qryGetBillNumberpreviousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object qryGetBillNumberpreviousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      Required = True
      BlobType = ftWideMemo
    end
    object qryGetBillNumberpresentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object qryGetBillNumberpresentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object qryGetBillNumberaverageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object qryGetBillNumbercurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object qryGetBillNumbertotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object qryGetBillNumberoldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object qryGetBillNumbermeterfindings: TWideMemoField
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      BlobType = ftWideMemo
    end
    object qryGetBillNumberreadingremarks: TWideMemoField
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      BlobType = ftWideMemo
    end
    object qryGetBillNumbercurrentamountdue: TFloatField
      FieldName = 'currentamountdue'
      Origin = 'currentamountdue'
    end
    object qryGetBillNumbertotalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object qryGetBillNumbertotalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object qryGetBillNumberdiscountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object qryGetBillNumberpenaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object qryGetBillNumbertotalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object qryGetBillNumbertotalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object qryGetBillNumberpaymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object qryGetBillNumberpaymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object qryGetBillNumberdisconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object qryGetBillNumberreadingtime: TWideMemoField
      FieldName = 'readingtime'
      Origin = 'readingtime'
      BlobType = ftWideMemo
    end
    object qryGetBillNumbermeterreadername: TWideMemoField
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      BlobType = ftWideMemo
    end
    object qryGetBillNumbernumberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object qryGetBillNumbernumberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object qryGetBillNumbernumberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object qryGetBillNumberdateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
  object qryWaterRate: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      
        'Select DISTINCT RateCode,CAST(ConnectionType AS CHAR(10)) as Con' +
        'nectionType from WaterRate')
    Left = 664
    Top = 232
    object qryWaterRateratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object qryWaterRateConnectionType: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ConnectionType'
      Origin = 'ConnectionType'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object DataSource2: TDataSource
    DataSet = qryWaterRate
    Left = 432
    Top = 232
  end
  object qryUpdateConsumerAccount: TFDQuery
    BeforePost = qryUpdateConsumerAccountBeforePost
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    SQL.Strings = (
      'SELECT '
      'id,'
      'Cast(AccountNo as CHAR(20)) as AccountNo,'
      'Cast(AccountName as CHAR(20)) as AccountName,'
      'RateCode,'
      'IsSeniorCitizen,'
      'IsPWD,'
      'CAST(MOBILENumber as CHAR(20)) as MobileNo,'
      'Cast(TotalBillArrears as CHAR(20)) as TotalBillArrears,'
      'Cast(TotalOtherFees as CHAR(20)) as TotalOtherFees,'
      'Cast(ConnectionType as Char(20)) as ConnectionType'
      'FROM consumerAccount'
      'Where '
      'RouteAddress = :ArouteAddress')
    Left = 392
    Top = 168
    ParamData = <
      item
        Name = 'AROUTEADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object qryUpdateConsumerAccountid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryUpdateConsumerAccountAccountNo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountNo'
      Origin = 'AccountNo'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryUpdateConsumerAccountAccountName: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountName'
      Origin = 'AccountName'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryUpdateConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      LookupDataSet = qryWaterRate
      LookupKeyFields = 'ConnectionType'
      LookupResultField = 'ratecode'
      Origin = 'ratecode'
    end
    object qryUpdateConsumerAccountisseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object qryUpdateConsumerAccountMobileNo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'MobileNo'
      Origin = 'MobileNo'
      ProviderFlags = []
      Size = 32767
    end
    object qryUpdateConsumerAccountTotalBillArrears: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'TotalBillArrears'
      Origin = 'TotalBillArrears'
      ProviderFlags = []
      Size = 32767
    end
    object qryUpdateConsumerAccountTotalOtherFees: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'TotalOtherFees'
      Origin = 'TotalOtherFees'
      ProviderFlags = []
      Size = 32767
    end
    object qryUpdateConsumerAccountConnectionType: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ConnectionType'
      Origin = 'ConnectionType'
      ProviderFlags = []
      Size = 32767
    end
    object qryUpdateConsumerAccountispwd: TIntegerField
      FieldName = 'ispwd'
      Origin = 'ispwd'
    end
  end
  object tblUpdateConsumerAccount_____: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.SQLiteJWSDesktopConn
    UpdateOptions.AssignedValues = [uvEDelete, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableUpdate = False
    UpdateOptions.UpdateTableName = 'consumeraccount'
    TableName = 'consumeraccount'
    Left = 384
    Top = 80
    object tblUpdateConsumerAccount_____id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblUpdateConsumerAccount_____accountno: TWideMemoField
      FieldName = 'accountno'
      Origin = 'accountno'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____accountname: TWideMemoField
      FieldName = 'accountname'
      Origin = 'accountname'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____routesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object tblUpdateConsumerAccount_____routecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
    end
    object tblUpdateConsumerAccount_____routeaddress: TWideMemoField
      FieldName = 'routeaddress'
      Origin = 'routeaddress'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____ratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object tblUpdateConsumerAccount_____connectiontype: TWideMemoField
      FieldName = 'connectiontype'
      Origin = 'connectiontype'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____connectionstatus: TWideMemoField
      FieldName = 'connectionstatus'
      Origin = 'connectionstatus'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____newconnectionstatus: TWideMemoField
      FieldName = 'newconnectionstatus'
      Origin = 'newconnectionstatus'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____isseniorcitizen: TIntegerField
      FieldName = 'isseniorcitizen'
      Origin = 'isseniorcitizen'
    end
    object tblUpdateConsumerAccount_____mobilenumber: TWideMemoField
      FieldName = 'mobilenumber'
      Origin = 'mobilenumber'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____meterbrand: TWideMemoField
      FieldName = 'meterbrand'
      Origin = 'meterbrand'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____meterserialno: TWideMemoField
      FieldName = 'meterserialno'
      Origin = 'meterserialno'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____billmonth: TWideMemoField
      FieldName = 'billmonth'
      Origin = 'billmonth'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____billnumber: TIntegerField
      FieldName = 'billnumber'
      Origin = 'billnumber'
      Required = True
    end
    object tblUpdateConsumerAccount_____previousreading: TFloatField
      FieldName = 'previousreading'
      Origin = 'previousreading'
      Required = True
    end
    object tblUpdateConsumerAccount_____previousreadingdate: TWideMemoField
      FieldName = 'previousreadingdate'
      Origin = 'previousreadingdate'
      Required = True
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____presentreading: TFloatField
      FieldName = 'presentreading'
      Origin = 'presentreading'
    end
    object tblUpdateConsumerAccount_____presentreadingdate: TWideMemoField
      FieldName = 'presentreadingdate'
      Origin = 'presentreadingdate'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____averageconsumption: TFloatField
      FieldName = 'averageconsumption'
      Origin = 'averageconsumption'
    end
    object tblUpdateConsumerAccount_____currentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object tblUpdateConsumerAccount_____totalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object tblUpdateConsumerAccount_____oldmeterconsumption: TFloatField
      FieldName = 'oldmeterconsumption'
      Origin = 'oldmeterconsumption'
    end
    object tblUpdateConsumerAccount_____meterfindings: TWideMemoField
      FieldName = 'meterfindings'
      Origin = 'meterfindings'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____readingremarks: TWideMemoField
      FieldName = 'readingremarks'
      Origin = 'readingremarks'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____currentamountdue: TFloatField
      FieldName = 'currentamountdue'
      Origin = 'currentamountdue'
    end
    object tblUpdateConsumerAccount_____totalamountdue: TFloatField
      FieldName = 'totalamountdue'
      Origin = 'totalamountdue'
    end
    object tblUpdateConsumerAccount_____totalamountafterduedate: TFloatField
      FieldName = 'totalamountafterduedate'
      Origin = 'totalamountafterduedate'
    end
    object tblUpdateConsumerAccount_____discountamount: TFloatField
      FieldName = 'discountamount'
      Origin = 'discountamount'
    end
    object tblUpdateConsumerAccount_____penaltyamount: TFloatField
      FieldName = 'penaltyamount'
      Origin = 'penaltyamount'
    end
    object tblUpdateConsumerAccount_____totalbillarrears: TFloatField
      FieldName = 'totalbillarrears'
      Origin = 'totalbillarrears'
    end
    object tblUpdateConsumerAccount_____totalotherfees: TFloatField
      FieldName = 'totalotherfees'
      Origin = 'totalotherfees'
    end
    object tblUpdateConsumerAccount_____paymentduedate: TWideMemoField
      FieldName = 'paymentduedate'
      Origin = 'paymentduedate'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____paymentdateafterdue: TWideMemoField
      FieldName = 'paymentdateafterdue'
      Origin = 'paymentdateafterdue'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____disconnectiondate: TWideMemoField
      FieldName = 'disconnectiondate'
      Origin = 'disconnectiondate'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____readingtime: TWideMemoField
      FieldName = 'readingtime'
      Origin = 'readingtime'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____meterreadername: TWideMemoField
      FieldName = 'meterreadername'
      Origin = 'meterreadername'
      BlobType = ftWideMemo
    end
    object tblUpdateConsumerAccount_____numberofreadingretry: TIntegerField
      FieldName = 'numberofreadingretry'
      Origin = 'numberofreadingretry'
    end
    object tblUpdateConsumerAccount_____numberofbillprinted: TIntegerField
      FieldName = 'numberofbillprinted'
      Origin = 'numberofbillprinted'
    end
    object tblUpdateConsumerAccount_____numberofsmssent: TIntegerField
      FieldName = 'numberofsmssent'
      Origin = 'numberofsmssent'
    end
    object tblUpdateConsumerAccount_____dateuploaded: TWideMemoField
      FieldName = 'dateuploaded'
      Origin = 'dateuploaded'
      BlobType = ftWideMemo
    end
  end
  object vtSeniorCitizen: TVirtualTable
    FieldDefs = <
      item
        Name = 'SCCode'
        DataType = ftInteger
      end
      item
        Name = 'SCValue'
        DataType = ftString
        Size = 50
      end>
    Left = 272
    Top = 184
    Data = {
      0300020006005343436F646503000000000000000700534356616C7565010032
      00000000000000020000000400000000000000120000004E6F742053656E696F
      7220436974697A656E04000000010000000E00000053656E696F722043697469
      7A656E}
    object vtSeniorCitizenSCCode: TIntegerField
      FieldName = 'SCCode'
    end
    object vtSeniorCitizenSCValue: TStringField
      FieldName = 'SCValue'
      Size = 50
    end
  end
  object DataSource3: TDataSource
    DataSet = vtSeniorCitizen
    Left = 312
    Top = 264
  end
  object qryProfile: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    SQL.Strings = (
      'select '
      '  acct_no,'
      '  Applicant,'
      '  Serial_no,'
      '  Type_connection,'
      '  Address_brgy,'
      '  Brand,'
      '  MeterNo,'
      '  IsSenior '
      'From '
      '  Profile '
      'Where'
      '  Address_brgy = :ARouteAddress'
      'ORDER BY APPLICANT')
    Left = 688
    Top = 64
    ParamData = <
      item
        Name = 'AROUTEADDRESS'
        DataType = ftWideString
        ParamType = ptInput
        Value = Null
      end>
    object qryProfileacct_no: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'acct_no'
      Origin = 'acct_no'
      BlobType = ftMemo
    end
    object qryProfileApplicant: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Applicant'
      Origin = 'applicant'
      BlobType = ftMemo
    end
    object qryProfileSerial_no: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Serial_no'
      Origin = 'serial_no'
      BlobType = ftMemo
    end
    object qryProfileType_connection: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Type_connection'
      Origin = 'type_connection'
      BlobType = ftMemo
    end
    object qryProfileAddress_brgy: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Address_brgy'
      Origin = 'address_brgy'
      BlobType = ftMemo
    end
    object qryProfileBrand: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Brand'
      Origin = 'brand'
      BlobType = ftMemo
    end
    object qryProfileMeterNo: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'MeterNo'
      Origin = 'meterno'
      BlobType = ftMemo
    end
    object qryProfileIsSenior: TMemoField
      FieldName = 'IsSenior'
      Origin = 'isSenior'
      Required = True
      BlobType = ftMemo
    end
  end
  object qryLedgerLast: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    SQL.Strings = (
      'Select * from ldg_2006_08_0688 ORDER BY ID')
    Left = 632
    Top = 64
    object qryLedgerLastreading_date: TMemoField
      FieldName = 'reading_date'
      Origin = 'reading_date'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgerLastmeter_reading: TMemoField
      FieldName = 'meter_reading'
      Origin = 'meter_reading'
      Required = True
      BlobType = ftMemo
    end
    object qryLedgerLastremarks: TMemoField
      FieldName = 'remarks'
      Origin = 'remarks'
      Required = True
      BlobType = ftMemo
    end
  end
  object qryLedgerAverage: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    Left = 584
    Top = 64
    object qryLedgerAverageAverageCubic: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AverageCubic'
      Origin = 'AverageCubic'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryLedgerOtherFee: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    SQL.Strings = (
      
        'select sum(installment_value) as installmentValue from installme' +
        'nt where'
      ' acc_no = :AAccountNumber'
      'and not Billed_date <> '#39#39' and addons_type = :AAddOns'
      'Order by Acc_no,Addons_type')
    Left = 744
    Top = 64
    ParamData = <
      item
        Name = 'AACCOUNTNUMBER'
        DataType = ftWideString
        ParamType = ptInput
        Value = '2013-02-1394'
      end
      item
        Name = 'AADDONS'
        ParamType = ptInput
      end>
    object qryLedgerOtherFeeinstallmentValue: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'installmentValue'
      Origin = 'installmentValue'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryLedgerArrears: TFDQuery
    Connection = MainDataModule.MYSQLDatabase
    Left = 744
    Top = 112
    object qryLedgerArrearsArrear_total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Arrear_total'
      Origin = 'Arrear_total'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object vtPwd: TVirtualTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'pwdvalue'
        DataType = ftString
        Size = 150
      end>
    Left = 280
    Top = 232
    Data = {
      03000200020069640300000000000000080070776476616C7565010096000000
      0000000002000000040000000100000007000000596573205057440400000000
      000000070000004E6F7420505744}
    object vtPwdid: TIntegerField
      FieldName = 'id'
    end
    object vtPwdpwdvalue: TStringField
      FieldName = 'pwdvalue'
      Size = 150
    end
  end
  object DataSource4: TDataSource
    DataSet = vtPwd
    Left = 272
    Top = 120
  end
  object vtRecordToUpdateAll: TVirtualTable
    Left = 464
    Top = 336
    Data = {03000000000000000000}
    object vtRecordToUpdateAllAccounNumber: TStringField
      FieldName = 'AccounNumber'
      Size = 150
    end
  end
  object qryDeleteConsumer: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'delete from consumeraccount where AccountNo = :AAccountNumber')
    Left = 704
    Top = 496
    ParamData = <
      item
        Name = 'AACCOUNTNUMBER'
        ParamType = ptInput
      end>
  end
end
