object OthersForm: TOthersForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'OthersForm'
  ClientHeight = 520
  ClientWidth = 633
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    633
    520)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 617
    Height = 495
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Padlock Account / Change Name / Update Birthday'
      DesignSize = (
        609
        467)
      object Label1: TLabel
        Left = 16
        Top = 10
        Width = 86
        Height = 13
        Caption = 'Account Number :'
      end
      object Shape1: TShape
        Left = 16
        Top = 57
        Width = 233
        Height = 1
        Pen.Color = cl3DDkShadow
      end
      object Edit1: TEdit
        Left = 16
        Top = 28
        Width = 233
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
        TextHint = 'Account Number'
        OnChange = Edit1Change
      end
      object DBGridEh1: TDBGridEh
        Left = 16
        Top = 72
        Width = 578
        Height = 292
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource1
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
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
            FieldName = 'AccountNumber'
            Footers = <>
            Title.Caption = 'Account Number'
            Width = 115
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AccountName'
            Footers = <>
            Title.Caption = 'Account Name'
            Width = 180
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Birthdate'
            Footers = <>
            Title.Caption = 'Birthday'
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DateApplied'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SerialNo'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Address'
            Footers = <>
            Title.Caption = 'Street'
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TypeConnection'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Barangay'
            Footers = <>
            Width = 160
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Size'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORNO'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OrDate'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Approval'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DateInstalled'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ModePayment'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Brand'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TypeInspection'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Plumber'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InitialReading'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Inspector'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MeterNo'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IsSenior'
            Footers = <>
            Title.Caption = 'Senior'
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'isPwd'
            Footers = <>
            Title.Caption = 'PWD'
            Width = 120
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object RadioGroup1: TRadioGroup
        Left = 253
        Top = 1
        Width = 111
        Height = 66
        Caption = 'Options'
        ItemIndex = 0
        Items.Strings = (
          'Account Number'
          'Account Name')
        TabOrder = 2
        OnClick = RadioGroup1Click
      end
      object GroupBox1: TGroupBox
        Left = 368
        Top = 1
        Width = 216
        Height = 66
        Caption = 'Route Address'
        TabOrder = 3
        object ComboBox1: TComboBox
          Left = 7
          Top = 24
          Width = 201
          Height = 27
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = ComboBox1Change
        end
      end
      object BitBtn1: TBitBtn
        Left = 16
        Top = 369
        Width = 185
        Height = 40
        Caption = 'Temporary Pod Lock'
        TabOrder = 4
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 16
        Top = 413
        Width = 185
        Height = 40
        Caption = 'PodLock Account'
        TabOrder = 5
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 208
        Top = 369
        Width = 185
        Height = 40
        Caption = 'Change Name of Account'
        TabOrder = 6
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 208
        Top = 413
        Width = 185
        Height = 40
        Caption = 'Transfer to Other Route Address'
        TabOrder = 7
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 400
        Top = 369
        Width = 185
        Height = 40
        Caption = 'Update Birthdate'
        TabOrder = 8
        OnClick = BitBtn5Click
      end
      object BitBtn6: TBitBtn
        Left = 400
        Top = 413
        Width = 185
        Height = 40
        Caption = 'Remove / Insert Discounts'
        TabOrder = 9
        OnClick = BitBtn6Click
      end
      object Panel1: TPanel
        Left = 72
        Top = 312
        Width = 321
        Height = 60
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 10
        Visible = False
        object Label2: TLabel
          Left = 4
          Top = 2
          Width = 76
          Height = 13
          Caption = 'Account Name :'
        end
        object Shape2: TShape
          Left = 4
          Top = 49
          Width = 233
          Height = 1
          Pen.Color = cl3DDkShadow
        end
        object Edit2: TEdit
          Left = 4
          Top = 20
          Width = 233
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
          TextHint = 'Account Name '
          OnChange = Edit1Change
        end
        object BitBtn7: TBitBtn
          Left = 240
          Top = 4
          Width = 73
          Height = 47
          Caption = 'POST'
          TabOrder = 1
          OnClick = BitBtn7Click
        end
      end
      object Panel2: TPanel
        Left = 72
        Top = 180
        Width = 321
        Height = 123
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 11
        Visible = False
        object Label3: TLabel
          Left = 4
          Top = 2
          Width = 73
          Height = 13
          Caption = 'Address From :'
        end
        object Shape3: TShape
          Left = 4
          Top = 49
          Width = 233
          Height = 1
          Pen.Color = cl3DDkShadow
        end
        object Label4: TLabel
          Left = 4
          Top = 57
          Width = 103
          Height = 13
          Caption = 'Address to Transfer :'
        end
        object Shape4: TShape
          Left = 4
          Top = 108
          Width = 233
          Height = 1
          Pen.Color = cl3DDkShadow
        end
        object Label5: TLabel
          Left = 145
          Top = 57
          Width = 54
          Height = 13
          Caption = '(Barangay)'
        end
        object Edit3: TEdit
          Left = 1
          Top = 21
          Width = 233
          Height = 27
          AutoSize = False
          BorderStyle = bsNone
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'From'
        end
        object ComboBox2: TComboBox
          Left = 4
          Top = 74
          Width = 233
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'ComboBox1'
          OnChange = ComboBox2Change
        end
        object Edit4: TEdit
          Left = 4
          Top = 74
          Width = 214
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
          TabOrder = 3
          TextHint = 'Route Address'
        end
        object Panel3: TPanel
          Left = 218
          Top = 73
          Width = 28
          Height = 2
          BevelOuter = bvNone
          TabOrder = 4
        end
        object Panel4: TPanel
          Left = 218
          Top = 104
          Width = 28
          Height = 2
          BevelOuter = bvNone
          TabOrder = 5
        end
        object Panel5: TPanel
          Left = 236
          Top = 64
          Width = 28
          Height = 47
          BevelOuter = bvNone
          TabOrder = 6
        end
        object BitBtn8: TBitBtn
          Left = 240
          Top = 8
          Width = 73
          Height = 99
          Caption = 'Transfer '
          TabOrder = 1
          OnClick = BitBtn8Click
        end
      end
      object Panel6: TPanel
        Left = 309
        Top = 312
        Width = 276
        Height = 60
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 12
        Visible = False
        DesignSize = (
          272
          56)
        object Label6: TLabel
          Left = 4
          Top = 2
          Width = 94
          Height = 13
          Caption = 'Account BirthDate :'
        end
        object Shape5: TShape
          Left = 4
          Top = 49
          Width = 188
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          Pen.Color = cl3DDkShadow
          ExplicitWidth = 233
        end
        object DateTimePicker1: TDateTimePicker
          Left = 4
          Top = 21
          Width = 188
          Height = 26
          Anchors = [akLeft, akTop, akRight]
          Date = 44334.764517534720000000
          Time = 44334.764517534720000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = DateTimePicker1Change
        end
        object Edit5: TEdit
          Left = 4
          Top = 20
          Width = 160
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'Birthdate'
          OnChange = Edit1Change
        end
        object BitBtn9: TBitBtn
          Left = 195
          Top = 4
          Width = 73
          Height = 47
          Anchors = [akTop, akRight]
          Caption = 'POST'
          TabOrder = 1
          OnClick = BitBtn9Click
        end
        object Panel7: TPanel
          Left = 163
          Top = 21
          Width = 31
          Height = 1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
        object Panel8: TPanel
          Left = 163
          Top = 46
          Width = 31
          Height = 1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 4
        end
        object Panel9: TPanel
          Left = 191
          Top = 21
          Width = 4
          Height = 29
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 5
        end
      end
      object Panel10: TPanel
        Left = 352
        Top = 168
        Width = 233
        Height = 135
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 13
        Visible = False
        DesignSize = (
          229
          131)
        object Label7: TLabel
          Left = 4
          Top = 2
          Width = 131
          Height = 13
          Caption = 'REMOVE DISCOUNTS / PUT'
        end
        object Shape6: TShape
          Left = 4
          Top = 49
          Width = 218
          Height = 1
          Pen.Color = cl3DDkShadow
        end
        object Shape7: TShape
          Left = 4
          Top = 81
          Width = 218
          Height = 1
          Pen.Color = cl3DDkShadow
        end
        object BitBtn10: TBitBtn
          Left = 147
          Top = 85
          Width = 76
          Height = 42
          Anchors = [akTop, akRight]
          Caption = 'POST'
          TabOrder = 0
          OnClick = BitBtn10Click
        end
        object Panel11: TPanel
          Left = 120
          Top = 21
          Width = 31
          Height = 1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 1
        end
        object Panel12: TPanel
          Left = 120
          Top = 46
          Width = 31
          Height = 1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 2
        end
        object CheckBox1: TCheckBox
          Left = 4
          Top = 24
          Width = 221
          Height = 17
          Caption = 'SENIOR CITIZEN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CheckBox2: TCheckBox
          Left = 4
          Top = 56
          Width = 219
          Height = 17
          Caption = 'PERSON WITH DISABLITIES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object RadioGroup2: TRadioGroup
          Left = 4
          Top = 85
          Width = 138
          Height = 42
          Caption = 'Options'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Remove'
            'Insert')
          TabOrder = 5
        end
      end
    end
  end
  object Memo1: TMemo
    Left = 411
    Top = 107
    Width = 185
    Height = 89
    Lines.Strings = (
      'Select * from :ALA  ORDER BY id '
      'Desc Limit 1')
    TabOrder = 1
    Visible = False
  end
  object qryProfile: TFDQuery
    IndexesActive = False
    Connection = MainDataModule.MYSQLDatabase
    SQL.Strings = (
      'Select'
      '  id, '
      '  CAST(Acct_no as Char(20)) as AccountNumber,'
      '  CAST(Applicant as Char(20)) as AccountName,'
      '  CAST(Address_st as Char(20)) as Address,'
      '  CAST(date_applied as Char(20)) as DateApplied,'
      '  CAST(serial_no as Char(20)) as SerialNo,'
      '  CAST(size as Char(20)) as Size,'
      '  CAST(or_no as Char(20)) as ORNO,'
      '  CAST(or_date as Char(20)) as OrDate,'
      '  CAST(type_connection as Char(20)) as TypeConnection,'
      '  CAST(approval as Char(20)) as Approval,'
      '  CAST(date_installed as Char(20)) as DateInstalled,'
      '  CAST(mode_payment as Char(20)) as ModePayment,'
      '  CAST(address_brgy as Char(20)) as Barangay,'
      '  CAST(brand as Char(20)) as Brand,'
      '  CAST(type_inspct as Char(20)) as TypeInspection,'
      '  CAST(plumber as Char(20)) as Plumber,'
      '  CAST(initial_reading as Char(20)) as InitialReading,'
      '  CAST(inspector as Char(20)) as Inspector,'
      '  CAST(meterno as Char(20)) as MeterNo,'
      '  CAST(BDATE as Char(20)) as Birthdate,'
      '  CAST(isSenior as Char(20)) as IsSenior,'
      '  CAST(isPWDS as Char(20)) as isPwd'
      '  from Profile'
      '  ORDER BY barangay')
    Left = 324
    Top = 264
    object qryProfileid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryProfileAccountNumber: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountNumber'
      Origin = 'AccountNumber'
      ProviderFlags = []
    end
    object qryProfileAccountName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountName'
      Origin = 'AccountName'
      ProviderFlags = []
    end
    object qryProfileAddress: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Address'
      Origin = 'Address'
      ProviderFlags = []
    end
    object qryProfileDateApplied: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DateApplied'
      Origin = 'DateApplied'
      ProviderFlags = []
    end
    object qryProfileSerialNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SerialNo'
      Origin = 'SerialNo'
      ProviderFlags = []
    end
    object qryProfileSize: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Size'
      Origin = 'Size'
      ProviderFlags = []
    end
    object qryProfileORNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORNO'
      Origin = 'ORNO'
      ProviderFlags = []
    end
    object qryProfileOrDate: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OrDate'
      Origin = 'OrDate'
      ProviderFlags = []
    end
    object qryProfileTypeConnection: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TypeConnection'
      Origin = 'TypeConnection'
      ProviderFlags = []
    end
    object qryProfileApproval: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Approval'
      Origin = 'Approval'
      ProviderFlags = []
    end
    object qryProfileDateInstalled: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DateInstalled'
      Origin = 'DateInstalled'
      ProviderFlags = []
    end
    object qryProfileModePayment: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ModePayment'
      Origin = 'ModePayment'
      ProviderFlags = []
    end
    object qryProfileBarangay: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Barangay'
      Origin = 'Barangay'
      ProviderFlags = []
    end
    object qryProfileBrand: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Brand'
      Origin = 'Brand'
      ProviderFlags = []
    end
    object qryProfileTypeInspection: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TypeInspection'
      Origin = 'TypeInspection'
      ProviderFlags = []
    end
    object qryProfilePlumber: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Plumber'
      Origin = 'Plumber'
      ProviderFlags = []
    end
    object qryProfileInitialReading: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'InitialReading'
      Origin = 'InitialReading'
      ProviderFlags = []
    end
    object qryProfileInspector: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Inspector'
      Origin = 'Inspector'
      ProviderFlags = []
    end
    object qryProfileMeterNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MeterNo'
      Origin = 'MeterNo'
      ProviderFlags = []
    end
    object qryProfileBirthdate: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Birthdate'
      Origin = 'Birthdate'
      ProviderFlags = []
    end
    object qryProfileIsSenior: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IsSenior'
      Origin = 'IsSenior'
      ProviderFlags = []
    end
    object qryProfileisPwd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'isPwd'
      Origin = 'isPwd'
      ProviderFlags = []
    end
  end
  object DataSource1: TDataSource
    DataSet = qryProfile
    Left = 444
    Top = 256
  end
  object qryRoute: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'select id,'
      'CAST(RouteCode as Char(5)) as RouteCode,'
      'CAST(RouteAddress as Char(200)) as RouteAddress from Routes')
    Left = 500
    Top = 248
    object qryRouteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryRouteRouteCode: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'RouteCode'
      Origin = 'RouteCode'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryRouteRouteAddress: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'RouteAddress'
      Origin = 'RouteAddress'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object qryPostMe: TFDQuery
    Left = 180
    Top = 200
  end
  object qryGetBillNumber: TFDQuery
    Connection = MainDataModule.SQLiteJWSMainDatabaseConn
    SQL.Strings = (
      
        'SELECT * FROM consumeraccount where AccountNo = :AAccountNumber ' +
        'Order by BillNumber DESC LIMIT 1')
    Left = 253
    Top = 128
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
  object tblProfile: TFDTable
    IndexFieldNames = 'id'
    Connection = MainDataModule.MYSQLDatabase
    UpdateOptions.UpdateTableName = 'profile'
    TableName = 'profile'
    Left = 316
    Top = 160
    object tblProfileid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblProfileacct_no: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'acct_no'
      Origin = 'acct_no'
      BlobType = ftMemo
    end
    object tblProfileapplicant: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'applicant'
      Origin = 'applicant'
      BlobType = ftMemo
    end
    object tblProfileaddress_st: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'address_st'
      Origin = 'address_st'
      BlobType = ftMemo
    end
    object tblProfiledate_applied: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'date_applied'
      Origin = 'date_applied'
      BlobType = ftMemo
    end
    object tblProfileserial_no: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'serial_no'
      Origin = 'serial_no'
      BlobType = ftMemo
    end
    object tblProfilesize: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'size'
      Origin = 'size'
      BlobType = ftMemo
    end
    object tblProfileor_no: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'or_no'
      Origin = 'or_no'
      BlobType = ftMemo
    end
    object tblProfileor_date: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'or_date'
      Origin = 'or_date'
      BlobType = ftMemo
    end
    object tblProfiletype_connection: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'type_connection'
      Origin = 'type_connection'
      BlobType = ftMemo
    end
    object tblProfileapproval: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'approval'
      Origin = 'approval'
      BlobType = ftMemo
    end
    object tblProfiledate_installed: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'date_installed'
      Origin = 'date_installed'
      BlobType = ftMemo
    end
    object tblProfilemode_payment: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mode_payment'
      Origin = 'mode_payment'
      Size = 45
    end
    object tblProfileaddress_brgy: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'address_brgy'
      Origin = 'address_brgy'
      BlobType = ftMemo
    end
    object tblProfilebrand: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'brand'
      Origin = 'brand'
      BlobType = ftMemo
    end
    object tblProfiletype_inspct: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'type_inspct'
      Origin = 'type_inspct'
      BlobType = ftMemo
    end
    object tblProfileplumber: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'plumber'
      Origin = 'plumber'
      BlobType = ftMemo
    end
    object tblProfileinitial_reading: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'initial_reading'
      Origin = 'initial_reading'
      BlobType = ftMemo
    end
    object tblProfileinspector: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'inspector'
      Origin = 'inspector'
      BlobType = ftMemo
    end
    object tblProfilemeterno: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'meterno'
      Origin = 'meterno'
      BlobType = ftMemo
    end
    object tblProfileBDATE: TMemoField
      FieldName = 'BDATE'
      Origin = 'BDATE'
      Required = True
      BlobType = ftMemo
    end
    object tblProfileisSenior: TMemoField
      FieldName = 'isSenior'
      Origin = 'isSenior'
      Required = True
      BlobType = ftMemo
    end
    object tblProfileisPwds: TMemoField
      FieldName = 'isPwds'
      Origin = 'isPwds'
      Required = True
      BlobType = ftMemo
    end
  end
end
