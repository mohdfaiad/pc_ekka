object OstatCheckF: TOstatCheckF
  Left = 575
  Top = 318
  Width = 770
  Height = 514
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'OstatCheckF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    762
    487)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 1
    Width = 762
    Height = 26
    Alignment = taLeftJustify
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    Caption = '   '#1055#1088#1086#1074#1077#1088#1082#1072' '#1086#1089#1090#1072#1090#1082#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      762
      26)
    object Label1: TLabel
      Left = 215
      Top = 7
      Width = 5
      Height = 13
      Color = clBtnFace
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 680
      Top = 7
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Color = clBtnFace
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 468
    Width = 762
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 762
    Height = 373
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      762
      373)
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 759
      Height = 371
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      DataSource = DM.srOstatCheck
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pmOst
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'art_code'
          Title.Alignment = taCenter
          Title.Caption = 'ART_CODE'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kod_name'
          Title.Alignment = taCenter
          Title.Caption = 'KOD_NAME'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'names'
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ostat'
          Title.Alignment = taCenter
          Title.Caption = #1054#1089#1090#1072#1090#1086#1082
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cena'
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1085#1072
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'summ'
          Title.Alignment = taCenter
          Title.Caption = #1057#1091#1084#1084#1072
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ostat_korr'
          Title.Alignment = taCenter
          Title.Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1081' '#1086#1089#1090#1072#1090#1086#1082
          Width = 108
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 404
    Width = 762
    Height = 31
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 100
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
    object CheckBox1: TCheckBox
      Left = 105
      Top = 7
      Width = 106
      Height = 17
      Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' Chek'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox2: TCheckBox
      Left = 210
      Top = 7
      Width = 120
      Height = 17
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1086' '#1089#1091#1084#1084#1072#1084
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 334
      Top = 3
      Width = 106
      Height = 25
      Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1082#1086#1076#1072#1084'...'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn7: TBitBtn
      Left = 442
      Top = 3
      Width = 154
      Height = 25
      Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1087#1086' '#1082#1086#1076#1091
      TabOrder = 4
      OnClick = BitBtn7Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E000000000000000000000000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF1F1F1F90003090003090003090003090003090003090
        00309000309000309000309000309000309000309000300F0F0F0000FF700020
        5050506060606060606060606060606060606060606060606060606060606060
        6070004F7000200000FF0000FF1F1F1F70004F6F6F6F9090909F9F9F9F9F9F9F
        9F9F9F9F9F9F9F9F9F9F9F8080806F6F6F9000300F0F0F0000FF0000FF0000FF
        3F3F3F505050808080AFAFAFC0C0C0C0C0C0C0C0C0C0C0C0A0A0A07F7F7F4F4F
        4F7000200000FF0000FF0000FF0000FF1F1F1F70004F6F6F6F909090C0C0C0F0
        F0F0DFDFDFB0B0B09090906060609000300F0F0F0000FF0000FF0000FF0000FF
        0000FF500030505050808080AFAFAFDFDFDFCFCFCF9F9F9F7F7F7F4F4F4F7000
        200000FF0000FF0000FF0000FF0000FF0000FF1F1F1F70004F6F6F6F909090C0
        C0C0B0B0B08080806060609000300F0F0F0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF700020505050808080AFAFAF9F9F9F7F7F7F70004F7000200000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF1F1F1F70004F6F6F6F90
        90908080806060609000300F0F0F0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF3F3F3F4F4F4F7F7F7F7F7F7F70004F5000300000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF1F1F1F9000306F
        6F6F6060609000300F0F0F0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF50003050505070004F7000200000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF1F1F1F90
        00309000300F0F0F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF7000205000300000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF1F
        1F1F1F1F1F0000FF0000FF0000FF0000FF0000FF0000FF0000FF}
    end
    object Silent: TCheckBox
      Left = 605
      Top = 8
      Width = 66
      Height = 17
      Caption = 'Silent'
      TabOrder = 5
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 437
    Width = 762
    Height = 31
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      762
      31)
    object BitBtn6: TBitBtn
      Left = 674
      Top = 3
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = BitBtn6Click
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
    object BitBtn3: TBitBtn
      Left = 3
      Top = 3
      Width = 121
      Height = 25
      Caption = #1055#1086#1079#1080#1094#1080#1102' '#1085#1072' '#1086#1089#1090#1072#1090#1082#1080
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 124
      Top = 3
      Width = 142
      Height = 25
      Caption = #1042#1089#1077' '#1087#1086#1079#1080#1094#1080#1080' '#1085#1072' '#1086#1089#1090#1072#1090#1082#1080
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 266
      Top = 3
      Width = 145
      Height = 25
      Caption = #1057#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1080#1085#1091#1089
      TabOrder = 3
      OnClick = BitBtn5Click
    end
  end
  object pmOst: TPopupMenu
    Left = 100
    Top = 114
    object N1: TMenuItem
      Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'...'
      ShortCut = 120
      OnClick = N1Click
    end
  end
end
