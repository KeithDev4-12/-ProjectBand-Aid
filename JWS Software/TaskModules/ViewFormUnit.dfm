object ViewForm: TViewForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'View Form'
  ClientHeight = 613
  ClientWidth = 1117
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    1117
    613)
  PixelsPerInch = 96
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
    object Gauge1: TGauge
      Left = 17
      Top = 6
      Width = 98
      Height = 98
      BackColor = 16570031
      BorderStyle = bsNone
      ForeColor = 16769196
      Kind = gkPie
      Progress = 0
    end
    object Shape1: TShape
      Left = -56
      Top = 112
      Width = 345
      Height = 8
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = cl3DDkShadow
    end
    object Shape2: TShape
      Left = 133
      Top = 64
      Width = 136
      Height = 1
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = cl3DDkShadow
    end
    object Label1: TLabel
      Left = 133
      Top = 16
      Width = 42
      Height = 13
      Caption = 'BillMonth'
    end
    object Label2: TLabel
      Left = 223
      Top = 16
      Width = 46
      Height = 13
      Caption = '(Preview)'
      Enabled = False
    end
    object BitBtn1: TBitBtn
      Left = 133
      Top = 74
      Width = 136
      Height = 32
      Caption = 'Preview Data'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Edit1: TEdit
      Left = 133
      Top = 31
      Width = 136
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
      TabOrder = 1
      TextHint = 'BillMonth'
      OnKeyPress = Edit1KeyPress
    end
    object Panel2: TPanel
      Left = 251
      Top = 33
      Width = 18
      Height = 1
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 249
      Top = 59
      Width = 20
      Height = 3
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 268
      Top = 31
      Width = 7
      Height = 31
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 4
    end
    object Panel4: TPanel
      Left = 8
      Top = 129
      Width = 266
      Height = 144
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 5
      DesignSize = (
        262
        140)
      object GroupBox3: TGroupBox
        Left = 4
        Top = 1
        Width = 253
        Height = 134
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Filtering Data'
        TabOrder = 0
        DesignSize = (
          253
          134)
        object Label3: TLabel
          Left = 9
          Top = 21
          Width = 78
          Height = 13
          Caption = 'Route Address :'
        end
        object Shape3: TShape
          Left = 9
          Top = 69
          Width = 236
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          Pen.Color = cl3DDkShadow
        end
        object ComboBox2: TComboBox
          Left = 9
          Top = 37
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
        object Edit2: TEdit
          Left = 9
          Top = 37
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
        end
        object Panel5: TPanel
          Left = 244
          Top = 36
          Width = 2
          Height = 31
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 2
        end
        object Panel6: TPanel
          Left = 227
          Top = 37
          Width = 26
          Height = 1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
        object Panel7: TPanel
          Left = 227
          Top = 64
          Width = 26
          Height = 1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 4
        end
        object Panel8: TPanel
          Left = 138
          Top = 83
          Width = 108
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = 'Filter Data'
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          OnClick = Panel8Click
        end
        object Panel9: TPanel
          Left = 9
          Top = 83
          Width = 108
          Height = 41
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = 'Cancel Filtration'
          Color = clWhite
          ParentBackground = False
          TabOrder = 6
          OnClick = Panel9Click
        end
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 297
    Top = 8
    Width = 812
    Height = 601
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ExplicitWidth = 488
    DesignSize = (
      812
      601)
    object DBGridEh1: TDBGridEh
      Left = 6
      Top = 17
      Width = 800
      Height = 581
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSConsumerAccount
      DynProps = <>
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
          FieldName = 'AccountNo'
          Footers = <>
          Title.Caption = 'Account Number'
          Width = 100
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
          FieldName = 'ROUTEADDRESS'
          Footers = <>
          Title.Caption = 'Route Address'
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BillMonth'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'routesequence'
          Footers = <>
          Title.Caption = 'Route Seq.'
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'routecode'
          Footers = <>
          Title.Caption = 'Route Code'
          Visible = False
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ratecode'
          Footers = <>
          Title.Caption = 'Rate Code'
          Visible = False
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ConnectionType'
          Footers = <>
          Title.Caption = 'Conn. Type'
          Width = 70
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ConnectionStatus'
          Footers = <>
          Title.Caption = 'Connection Status'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PreviousReadingDate'
          Footers = <>
          Title.Caption = 'Previous Reading Date'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PreviousReading'
          Footers = <>
          Title.Caption = 'Previous Reading'
          Width = 70
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PresentReadingDate'
          Footers = <>
          Title.Caption = 'Present Reading Date'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PresentReading'
          Footers = <>
          Title.Caption = 'Present Reading'
          Width = 70
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'currentconsumption'
          Footers = <>
          Title.Caption = 'Consumption'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalconsumption'
          Footers = <>
          Title.Caption = 'Total Consumption'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MeterFindings'
          Footers = <>
          Title.Caption = 'Meter Findings'
          Width = 120
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReadingRemarks'
          Footers = <>
          Width = 120
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'currentamountdue'
          Footers = <>
          Visible = False
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalamountdue'
          Footers = <>
          Visible = False
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalamountafterduedate'
          Footers = <>
          Visible = False
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DisconnectionDate'
          Footers = <>
          Visible = False
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReadingTime'
          Footers = <>
          Visible = False
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MeterReaderName'
          Footers = <>
          Visible = False
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DateUploaded'
          Footers = <>
          Visible = False
          Width = 150
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object qryConsumerAccount: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT ID,'
      '    CAST(AccountNo AS CHAR(100)) AS AccountNo,'
      '    CAST(AccountName AS CHAR(100)) AS AccountName,'
      '    RouteSequence,'
      '    RouteCode,'
      '    CAST(ROUTEADDRESS AS CHAR(100)) AS ROUTEADDRESS,'
      '    RateCode,'
      '    CAST(ConnectionType AS CHAR(100)) AS ConnectionType,'
      '    CAST(ConnectionStatus AS CHAR(100)) AS ConnectionStatus,'
      '    '
      '    CAST(BillMOnth AS CHAR(100)) AS BillMonth,'
      
        '    CAST(PreviousReadingDate AS CHAR(100)) AS PreviousReadingDat' +
        'e,'
      '    CAST(PreviousReading AS CHAR(100)) AS PreviousReading,'
      '    CAST(PresentReadingDate AS CHAR(100)) AS PresentReadingDate,'
      '    CAST(PresentReading AS CHAR(100)) AS PresentReading,'
      '    CurrentConsumption,'
      '    TotalConsumption,'
      '    CAST(MeterFindings AS CHAR(100)) AS MeterFindings,'
      '    CAST(ReadingRemarks AS CHAR(100)) AS ReadingRemarks,'
      '    CurrentAmountDue,'
      '    TotalAmountDue,'
      '    TotalAmountAfterDueDate,'
      '    CAST(DisconnectionDate AS CHAR(100)) AS DisconnectionDate,'
      '    CAST(ReadingTime AS CHAR(100)) AS ReadingTime,'
      '    CAST(MeterReaderName AS CHAR(100)) AS MeterReaderName,'
      '    CAST(DateUploaded AS CHAR(100)) AS DateUploaded'
      '    FROM CONSUMERACCOUNT'
      '-- WHERE'
      '-- ')
    Left = 377
    Top = 120
    object qryConsumerAccountid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConsumerAccountAccountNo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountNo'
      Origin = 'AccountNo'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountAccountName: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'AccountName'
      Origin = 'AccountName'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountroutesequence: TIntegerField
      FieldName = 'routesequence'
      Origin = 'routesequence'
      Required = True
    end
    object qryConsumerAccountroutecode: TIntegerField
      FieldName = 'routecode'
      Origin = 'routecode'
    end
    object qryConsumerAccountROUTEADDRESS: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROUTEADDRESS'
      Origin = 'ROUTEADDRESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountratecode: TIntegerField
      FieldName = 'ratecode'
      Origin = 'ratecode'
      Required = True
    end
    object qryConsumerAccountConnectionType: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ConnectionType'
      Origin = 'ConnectionType'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountConnectionStatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ConnectionStatus'
      Origin = 'ConnectionStatus'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountBillMonth: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'BillMonth'
      Origin = 'BillMonth'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountPreviousReadingDate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PreviousReadingDate'
      Origin = 'PreviousReadingDate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountPreviousReading: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PreviousReading'
      Origin = 'PreviousReading'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountPresentReadingDate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PresentReadingDate'
      Origin = 'PresentReadingDate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountPresentReading: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PresentReading'
      Origin = 'PresentReading'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountcurrentconsumption: TFloatField
      FieldName = 'currentconsumption'
      Origin = 'currentconsumption'
    end
    object qryConsumerAccounttotalconsumption: TFloatField
      FieldName = 'totalconsumption'
      Origin = 'totalconsumption'
    end
    object qryConsumerAccountMeterFindings: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'MeterFindings'
      Origin = 'MeterFindings'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountReadingRemarks: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ReadingRemarks'
      Origin = 'ReadingRemarks'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
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
    object qryConsumerAccountDisconnectionDate: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DisconnectionDate'
      Origin = 'DisconnectionDate'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountReadingTime: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ReadingTime'
      Origin = 'ReadingTime'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountMeterReaderName: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'MeterReaderName'
      Origin = 'MeterReaderName'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryConsumerAccountDateUploaded: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DateUploaded'
      Origin = 'DateUploaded'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object DSConsumerAccount: TDataSource
    DataSet = qryConsumerAccount
    Left = 377
    Top = 168
  end
  object qryRouteAddress: TFDQuery
    Connection = MainDataModule.SQLiteJWSDesktopConn
    SQL.Strings = (
      'SELECT ID, ROUTECODE,'
      'CAST(ROUTEADDRESS AS CHAR(100)) AS ROUTEADDRESS '
      'FROM ROUTES'
      'ORDER BY ROUTEADDRESS')
    Left = 377
    Top = 256
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
end
