object ZakazF: TZakazF
  Left = 597
  Top = 232
  Width = 1084
  Height = 501
  Caption = 'ZakazF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  DesignSize = (
    1076
    474)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 1
    Top = 0
    Width = 1074
    Height = 381
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      1074
      381)
    object dbgZakaz: TDBGrid
      Left = -1
      Top = -1
      Width = 1075
      Height = 382
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DM.srZakaz
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnColEnter = dbgZakazColEnter
      OnDrawColumnCell = dbgZakazDrawColumnCell
      OnDblClick = dbgZakazDblClick
      OnKeyDown = dbgZakazKeyDown
      OnKeyPress = dbgZakazKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'art_code'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1076
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'names'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 496
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'abc_kol'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'ABC '#1082#1086#1083'.'
          Width = 54
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'abc_sum'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'ABC '#1089#1091#1084'.'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ostat'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1054#1089#1090'.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TekOtp'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1058#1077#1082'. '#1086#1090#1087'.'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'realiz_period'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Caption = #1056#1077#1072#1083'.'#1087#1077#1088
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'realiz'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1056#1077#1072#1083'.'#1084#1077#1089'.'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPS'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = #1057#1087#1080#1089#1072#1085#1080#1077
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SummaDay'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = #1057#1091#1084'.'#1088#1077#1072#1083'.'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'plist'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1072#1081#1089
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'zakaz'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = #1047#1072#1103#1074#1082#1072
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ZakazAuto'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1040#1074#1090#1086' '#1079#1072#1082'.'
          Width = 48
          Visible = True
        end
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'FSwitch'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1080#1086#1088'.'
          Width = 34
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 1
    Top = 417
    Width = 1074
    Height = 56
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1074
      56)
    object Label1: TLabel
      Left = 799
      Top = 9
      Width = 49
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 899
      Top = 9
      Width = 27
      Height = 13
      Caption = #1076#1085#1077#1081'.'
      Visible = False
    end
    object ok1: TImage
      Left = 930
      Top = 10
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000D40E0000D40E0000000000000000
        00000000FF0000FF0000FF0000FF0000FF0000FF0000FFB1BDB10000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF32913832913877A87A0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF32913832913834B43953B5550000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF77A8
        7A34B4394CD64C34B43953B55577A87A0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF32913862D66562D6654CD64C4CD64C329138
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF32913853B5
        557CE68162D66562D66562D66534B43977A87A0000FF0000FF0000FF0000FF00
        00FF0000FF9EB79E34B4397CE68194F79C73D27534B43932913873D2757CE681
        53B555B1BDB10000FF0000FF0000FF0000FF0000FF77A87A7CE6818CF79473D2
        753291389EB79E77A87A53B5557CE68153B55553B5550000FF0000FF0000FF00
        00FF0000FF0000FF53B55553B55577A87A0000FF0000FF0000FF53B55573D275
        94F79C73D2759EB79E0000FF0000FF0000FF0000FF0000FF0000FF9EB79E0000
        FF0000FF0000FF0000FF0000FF77A87A94F79C8CF79453B555B1BDB10000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        77A87A8CF7947CE68153B555B1BDB10000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF77A87AADFFAD8CF79453B55500
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF73D275B5FFB573D2750000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF73D27577A87A00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF}
      Visible = False
    end
    object Label5: TLabel
      Left = 580
      Top = 7
      Width = 92
      Height = 16
      Caption = #1057#1088#1086#1082' '#1088#1077#1075'. '#1076#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 678
      Top = 7
      Width = 65
      Height = 17
      DataField = 'EndReg'
      DataSource = DM.srZakaz
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 301
      Top = 33
      Width = 45
      Height = 13
      Caption = 'ABC '#1082#1086#1083'.'
    end
    object Label7: TLabel
      Left = 401
      Top = 33
      Width = 46
      Height = 13
      Caption = 'ABC '#1089#1091#1084'.'
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 69
      Height = 25
      Caption = #1056#1072#1089#1095#1077#1090
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C40E0000C40E000000010000000000009C3100000063
        0000CE63000000730000D6840000008C0000009C000063313100218C42002194
        420021944A00219C4A00FFAD4A0029A5520029AD520031AD520039B552004AB5
        520029B55A0031BD5A0039BD630039C6630031CE630042C66B0052C66B005AC6
        6B0042D66B0052D67B005ADE7B0073DE940000009C00FFCE9C00009CCE000000
        DE0000A5EF00FF00FF004242FF0000BDFF009CDEFF009CFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00232323232323
        2301232323232323232323232323232323062323232323232323232323232323
        23060A0123232323232323232323232323061201232323232323232323232323
        2306120123232323232323232323232323061201232323232323232323232323
        0D1A0D0D0123232323232323232323061A130E0D08012323232323232323191D
        1412120E0D0A01232323232323061D1B120503060D0B08012323232311050327
        252626201E080303232323230105252727222021211E08012323232323070101
        27251E2121211E232323232323070202251E241E212123232323232323071F0C
        04041E1E1E232323232323232323071F0707231E232323232323}
    end
    object BitBtn2: TBitBtn
      Left = 986
      Top = 3
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000D40E0000D40E00001000000010000000000059002424
        500026266900FF0000000101BD002929AF005D5DBB000707C8002828CA000000
        F5002626F4006161D300A4A4D500D1D1DA00D7D7F200E3E3E400333E20000001
        F33333E8744444441F333E874474444441F3E87844578578741F84DEC5C4EEBD
        844194EBC8D4FBCCB44077BBC8D4FBCCFC40947BC5D4FBCD6C40746F88D4FBCC
        BD4094DB88D4FBCCBD4094EBC7E4FBCCBD40A7CECCF6DDBEDC42EA8888888878
        B45F3EA74444444445E333EA777777745F33333EA9999995E333}
    end
    object edPer: TEdit
      Left = 855
      Top = 5
      Width = 25
      Height = 21
      TabOrder = 2
      Text = '10'
      Visible = False
    end
    object udPer: TUpDown
      Left = 880
      Top = 5
      Width = 15
      Height = 21
      Associate = edPer
      Min = 1
      Max = 1000
      Position = 10
      TabOrder = 3
      Visible = False
    end
    object BitBtn5: TBitBtn
      Left = 72
      Top = 3
      Width = 110
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1086#1090#1082#1072#1079#1086#1074
      TabOrder = 4
      OnClick = BitBtn5Click
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E000000000000000000000000FF0000FF
        0000FF0000FF0000FF8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BBEBEBEAEAEAEAE
        AEAEAEAEAEAEAEAE7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        0000FF8F8F8F6060604F4F4F505050605F5F8F80806060606060607F7F7F0000
        FF0000FF0000FF0000FF7B7B7B7B7B7B7B7B7BBEBEBE8F8F8F7E7E7E7F7F7F8E
        8E8EB0B0B08F8F8F8F8F8FAEAEAE7B7B7B7B7B7B7B7B7B7B7B7B0000FF8F8F8F
        606060A0A0A0F0F0F0B0B0B09F8F8FA08080B0B0B0E0E0E0BFBFBF6F6F6F6060
        600000FF0000FF0000FF7B7B7BBEBEBE8F8F8FCFCFCFFFFFFFDFDFDFBFBFBFB2
        B2B2DFDFDFFFFFFFEEEEEE9E9E9E8F8F8F7B7B7B7B7B7B7B7B7B8F8F8F9F9F9F
        EFEFEFF0F0F0EFEFEFAFAFAF9090905F5F5F6F6F6F8F8F8FBFBFBFEFEFEFB0B0
        B08080800000FF0000FFBEBEBECECECEFFFFFFFFFFFFFFFFFFDEDEDEBFBFBF8E
        8E8E9E9E9EBEBEBEEEEEEEFFFFFFDFDFDFAFAFAF7B7B7B7B7B7BD0D0D0FFFFFF
        F0F0F0DFDFDF9090907F7F7F909090B0B0B0A0A0A09090908F8F8F8F8F8F6F6F
        6F8F8F8F0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFAEAEAEBFBFBFDF
        DFDFCFCFCFBFBFBFBEBEBEBEBEBE9E9E9EBEBEBE7B7B7B7B7B7BBFBFBFDFDFDF
        A0A0A09F9F9FCFCFCFAFAFAF8F8F8F8080808080809F9F9FBFBFBF7FAF8F6060
        608F8F8F0000FF0000FFEEEEEEFFFFFFCFCFCFCECECEFFFFFFDEDEDEBEBEBEAF
        AFAFAFAFAFCECECEEEEEEECFCFCF8F8F8FBEBEBE7B7B7B7B7B7B707070A0A0A0
        DFDFDFDFDFDFDFDFDFDFDFDFE0E0E0CFCFCFBFBFBF9F9F9F8F8F8F6080705F5F
        5F8F8F8F0000FF0000FF9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEEEEEECECECEBEBEBEA6A6A68E8E8EBEBEBE7B7B7B7B7B7B9F9F9FE0E0E0
        DFDFDFD0D0D0CFCFCFD0D0D0CFCFCFC0C0C0C0C0C0CFCFCFD0D0D0CFCFCF7070
        708F8F8F0000FF0000FFCECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF
        EFEFEFEFEFFFFFFFFFFFFFFFFFFF9F9F9FBEBEBE7B7B7B7B7B7BAFAFAFD0D0D0
        C0C0C0AFAFAFA0A0A0CFCFCFF0F0F0EFEFEFEFEFEFDFDFDFBFBFBFBFBFBF8F8F
        8F0000FF0000FF0000FFDEDEDEFFFFFFEFEFEFDEDEDECFCFCFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEEEEEEEEEEEEBEBEBE7B7B7B7B7B7B7B7B7B0000FFAFAFAF
        CFCFCFEFEFEFB0B0B0BFBFBFAFAFAFB0B0B0BFBFBFBFBFBFB0B0B08F8F8F0000
        FF0000FF0000FF0000FF7B7B7BDEDEDEFFFFFFFFFFFFDFDFDFEEEEEEDEDEDEDF
        DFDFEEEEEEEEEEEEDFDFDFBEBEBE7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        C0BFBFFFD0C0FFD0C0FFD0CFEFDFD0E0E0DFE0E0E08F8F8F0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7BEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFBEBEBE7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        DFCFC0FFDFBFFFDFBFFFDFBFFFD0B0FFD0AF806F6F0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7BFBFBFBFFFFFFFFFFFFFFFFFFFAFAFAFA
        FAFA9F9F9F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        D0B0A0FFE0CFFFE0CFFFE0CFFFE0CFFFDFC07F6F6F0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7BDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9F9F9F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        DFC0B0FFEFDFFFEFDFFFEFDFFFEFDFDFC0B0A0A0A00000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7BEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFED
        EDEDCFCFCF7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FFD0C0BF
        FFF0EFFFF0EFFFF0EFFFF0EFFFF0EFAFA09F0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0
        D0D07B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FFDFC0C0
        FFF0F0E0DFD0E0DFD0E0DFD0A0A0A00000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7BF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFCFCFCF7B
        7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B}
      NumGlyphs = 2
    end
    object cbZakApt: TCheckBox
      Left = 295
      Top = 7
      Width = 96
      Height = 17
      Caption = #1047#1072#1103#1074#1082#1072' '#1072#1087#1090#1077#1082#1080
      TabOrder = 5
      OnClick = cbZakAptClick
    end
    object cbAutoZak: TCheckBox
      Left = 393
      Top = 7
      Width = 76
      Height = 17
      Caption = #1040#1074#1090#1086#1079#1072#1082#1072#1079
      TabOrder = 6
      OnClick = cbAutoZakClick
    end
    object BitBtn6: TBitBtn
      Left = 182
      Top = 3
      Width = 110
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1079#1072#1103#1074#1082#1080
      TabOrder = 7
      OnClick = BitBtn6Click
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E000000000000000000000000FF0000FF
        0000FF0000FF0000FF8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BBEBEBEAEAEAEAE
        AEAEAEAEAEAEAEAE7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        0000FF8F8F8F6060604F4F4F505050605F5F8F80806060606060607F7F7F0000
        FF0000FF0000FF0000FF7B7B7B7B7B7B7B7B7BBEBEBE8F8F8F7E7E7E7F7F7F8E
        8E8EB0B0B08F8F8F8F8F8FAEAEAE7B7B7B7B7B7B7B7B7B7B7B7B0000FF8F8F8F
        606060A0A0A0F0F0F0B0B0B09F8F8FA08080B0B0B0E0E0E0BFBFBF6F6F6F6060
        600000FF0000FF0000FF7B7B7BBEBEBE8F8F8FCFCFCFFFFFFFDFDFDFBFBFBFB2
        B2B2DFDFDFFFFFFFEEEEEE9E9E9E8F8F8F7B7B7B7B7B7B7B7B7B8F8F8F9F9F9F
        EFEFEFF0F0F0EFEFEFAFAFAF9090905F5F5F6F6F6F8F8F8FBFBFBFEFEFEFB0B0
        B08080800000FF0000FFBEBEBECECECEFFFFFFFFFFFFFFFFFFDEDEDEBFBFBF8E
        8E8E9E9E9EBEBEBEEEEEEEFFFFFFDFDFDFAFAFAF7B7B7B7B7B7BD0D0D0FFFFFF
        F0F0F0DFDFDF9090907F7F7F909090B0B0B0A0A0A09090908F8F8F8F8F8F6F6F
        6F8F8F8F0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFAEAEAEBFBFBFDF
        DFDFCFCFCFBFBFBFBEBEBEBEBEBE9E9E9EBEBEBE7B7B7B7B7B7BBFBFBFDFDFDF
        A0A0A09F9F9FCFCFCFAFAFAF8F8F8F8080808080809F9F9FBFBFBF7FAF8F6060
        608F8F8F0000FF0000FFEEEEEEFFFFFFCFCFCFCECECEFFFFFFDEDEDEBEBEBEAF
        AFAFAFAFAFCECECEEEEEEECFCFCF8F8F8FBEBEBE7B7B7B7B7B7B707070A0A0A0
        DFDFDFDFDFDFDFDFDFDFDFDFE0E0E0CFCFCFBFBFBF9F9F9F8F8F8F6080705F5F
        5F8F8F8F0000FF0000FF9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEEEEEECECECEBEBEBEA6A6A68E8E8EBEBEBE7B7B7B7B7B7B9F9F9FE0E0E0
        DFDFDFD0D0D0CFCFCFD0D0D0CFCFCFC0C0C0C0C0C0CFCFCFD0D0D0CFCFCF7070
        708F8F8F0000FF0000FFCECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF
        EFEFEFEFEFFFFFFFFFFFFFFFFFFF9F9F9FBEBEBE7B7B7B7B7B7BAFAFAFD0D0D0
        C0C0C0AFAFAFA0A0A0CFCFCFF0F0F0EFEFEFEFEFEFDFDFDFBFBFBFBFBFBF8F8F
        8F0000FF0000FF0000FFDEDEDEFFFFFFEFEFEFDEDEDECFCFCFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEEEEEEEEEEEEBEBEBE7B7B7B7B7B7B7B7B7B0000FFAFAFAF
        CFCFCFEFEFEFB0B0B0BFBFBFAFAFAFB0B0B0BFBFBFBFBFBFB0B0B08F8F8F0000
        FF0000FF0000FF0000FF7B7B7BDEDEDEFFFFFFFFFFFFDFDFDFEEEEEEDEDEDEDF
        DFDFEEEEEEEEEEEEDFDFDFBEBEBE7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        C0BFBFFFD0C0FFD0C0FFD0CFEFDFD0E0E0DFE0E0E08F8F8F0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7BEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFBEBEBE7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        DFCFC0FFDFBFFFDFBFFFDFBFFFD0B0FFD0AF806F6F0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7BFBFBFBFFFFFFFFFFFFFFFFFFFAFAFAFA
        FAFA9F9F9F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        D0B0A0FFE0CFFFE0CFFFE0CFFFE0CFFFDFC07F6F6F0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7BDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9F9F9F7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FF0000FF
        DFC0B0FFEFDFFFEFDFFFEFDFFFEFDFDFC0B0A0A0A00000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7B7B7B7BEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFED
        EDEDCFCFCF7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FFD0C0BF
        FFF0EFFFF0EFFFF0EFFFF0EFFFF0EFAFA09F0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0
        D0D07B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000FFDFC0C0
        FFF0F0E0DFD0E0DFD0E0DFD0A0A0A00000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF7B7B7BF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFCFCFCF7B
        7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B}
      NumGlyphs = 2
    end
    object cbEnter: TCheckBox
      Left = 471
      Top = 7
      Width = 107
      Height = 17
      Caption = #1042#1074#1086#1076' '#1095#1077#1088#1077#1079' Enter'
      TabOrder = 8
      OnClick = cbEnterClick
    end
    object BitBtn8: TBitBtn
      Left = 3
      Top = 28
      Width = 289
      Height = 25
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1089#1086#1086#1073#1097#1077#1085#1080#1077' '#1086' '#1090#1086#1084', '#1079#1072#1103#1074#1082#1072' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1072
      TabOrder = 9
      OnClick = BitBtn8Click
    end
    object cbKol: TComboBox
      Left = 350
      Top = 30
      Width = 45
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 10
      Text = #1042#1089#1077
      OnCloseUp = cbKolCloseUp
      Items.Strings = (
        #1042#1089#1077
        'A'
        'B'
        'C')
    end
    object cbSum: TComboBox
      Left = 450
      Top = 30
      Width = 45
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 11
      Text = #1042#1089#1077
      OnCloseUp = cbSumCloseUp
      Items.Strings = (
        #1042#1089#1077
        'A'
        'B'
        'C')
    end
  end
  object Panel2: TPanel
    Left = 2
    Top = 383
    Width = 1074
    Height = 31
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 5
      Top = 9
      Width = 31
      Height = 13
      Caption = #1044#1072#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 885
      Top = 8
      Width = 65
      Height = 13
      Caption = #1043#1088#1091#1087#1087#1072' '#1087#1088#1080#1073'.'
      Visible = False
    end
    object dtZakaz: TDateTimePicker
      Left = 39
      Top = 5
      Width = 67
      Height = 21
      Date = 39801.000000000000000000
      Time = 39801.000000000000000000
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 107
      Top = 3
      Width = 55
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 162
      Top = 3
      Width = 104
      Height = 25
      Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1103#1074#1082#1072
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object cbNew: TCheckBox
      Left = 348
      Top = 7
      Width = 97
      Height = 18
      Caption = #1053#1086#1074#1099#1081' '#1090#1086#1074#1072#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = cbNewClick
    end
    object cbZatov: TCheckBox
      Left = 555
      Top = 8
      Width = 126
      Height = 17
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1090#1086#1074#1072#1088#1082#1091
      TabOrder = 4
      OnClick = cbZatovClick
    end
    object cbZero: TCheckBox
      Left = 685
      Top = 7
      Width = 51
      Height = 17
      Caption = #1053#1091#1083#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = cbZeroClick
    end
    object cbSort: TCheckBox
      Left = 737
      Top = 7
      Width = 139
      Height = 17
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1089#1091#1084#1084#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = cbSortClick
    end
    object cbGr: TComboBox
      Left = 955
      Top = 5
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = #1042#1089#1077
      Visible = False
      OnCloseUp = cbGrCloseUp
      Items.Strings = (
        #1042#1089#1077
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
    end
    object CheckBox1: TCheckBox
      Left = 452
      Top = 8
      Width = 97
      Height = 17
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103'>0'
      TabOrder = 8
      OnClick = CheckBox1Click
    end
    object BitBtn7: TBitBtn
      Left = 266
      Top = 3
      Width = 78
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      TabOrder = 9
      OnClick = BitBtn7Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 101
    Top = 85
    object N1: TMenuItem
      Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'...'
      ShortCut = 120
      OnClick = N1Click
    end
  end
  object alZakaz: TActionList
    Left = 181
    Top = 85
    object Action1: TAction
      Caption = 'CopyData'
      ShortCut = 16451
      OnExecute = Action1Execute
    end
  end
end
