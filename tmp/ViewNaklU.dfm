object ViewNaklF: TViewNaklF
  Left = 529
  Top = 204
  Width = 977
  Height = 514
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'ViewNaklF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    969
    487)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 1
    Width = 231
    Height = 75
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 181
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 28
      Width = 127
      Height = 13
      Caption = #1057'                          '#1087#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtStart: TDateTimePicker
      Left = 19
      Top = 25
      Width = 91
      Height = 21
      Date = 39801.000000000000000000
      Time = 39801.000000000000000000
      TabOrder = 0
    end
    object dtEnd: TDateTimePicker
      Left = 138
      Top = 25
      Width = 91
      Height = 21
      Date = 39801.999988425920000000
      Time = 39801.999988425920000000
      TabOrder = 1
    end
    object rbPr: TRadioButton
      Left = 7
      Top = 53
      Width = 71
      Height = 17
      Caption = #1055#1088#1080#1093#1086#1076
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = rbPrClick
    end
    object rbVz: TRadioButton
      Left = 77
      Top = 53
      Width = 69
      Height = 17
      Caption = #1042#1086#1079#1074#1088#1072#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = rbVzClick
    end
    object BitBtn5: TBitBtn
      Left = 151
      Top = 50
      Width = 77
      Height = 22
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 4
      OnClick = BitBtn5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 78
    Width = 231
    Height = 327
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      231
      327)
    object DBGrid1: TDBGrid
      Left = -1
      Top = -1
      Width = 232
      Height = 328
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 14672620
      DataSource = DM.srNaklList
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pmCancel
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Date_Nakl'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nn_nakl'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f'
          Width = 18
          Visible = True
        end>
    end
    object CheckBox1: TCheckBox
      Left = 192
      Top = 2
      Width = 15
      Height = 16
      TabOrder = 1
      OnClick = CheckBox1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 407
    Width = 968
    Height = 80
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      968
      80)
    object Label8: TLabel
      Left = 868
      Top = 34
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1057#1082#1080#1076#1082#1072':'
    end
    object Label9: TLabel
      Left = 954
      Top = 35
      Width = 8
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '%'
    end
    object imChp: TImage
      Left = 600
      Top = 58
      Width = 14
      Height = 14
      AutoSize = True
      Picture.Data = {
        07544269746D61709E020000424D9E0200000000000036000000280000000E00
        00000E0000000100180000000000680200000000000000000000000000000000
        0000B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B1BDB1B3BBF7B3BBF7B3BBF7
        B3BBF7B3BBF7B3BBF7B3BBF70000B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7329138
        32913877A87AB1BDB1B3BBF7B3BBF7B3BBF7B3BBF7B3BBF70000B3BBF7B3BBF7
        B3BBF7B3BBF732913832913834B43953B5559EB79EB3BBF7B3BBF7B3BBF7B3BB
        F7B3BBF70000B3BBF7B3BBF7B1BDB177A87A34B4394CD64C34B43953B55577A8
        7AB3BBF7B3BBF7B3BBF7B3BBF7B3BBF70000B3BBF7B1BDB1B1BDB132913862D6
        6562D6654CD64C4CD64C329138B5C6B5B3BBF7B3BBF7B3BBF7B3BBF70000B1BD
        B1B1BDB132913853B5557CE68162D66562D66562D66534B43977A87AB3BBF7B3
        BBF7B3BBF7B3BBF700009EB79E34B4397CE68194F79C73D27534B43932913873
        D2757CE68153B555B1BDB1B3BBF7B3BBF7B3BBF7000077A87A7CE6818CF79473
        D2753291389EB79E77A87A53B5557CE68153B55553B555B3BBF7B3BBF7B3BBF7
        00009EB79E53B55553B55577A87AB1BDB1B3BBF7B1BDB153B55573D27594F79C
        73D2759EB79EB3BBF7B3BBF70000B1BDB19EB79E9EB79EB3BBF7B3BBF7B3BBF7
        B3BBF7B3BBF777A87A94F79C8CF79453B555B1BDB1B5C6B50000B3BBF7B3BBF7
        B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF777A87A8CF7947CE68153B5
        55B1BDB10000B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BB
        F7B1BDB177A87AADFFAD8CF79453B5550000B3BBF7B3BBF7B3BBF7B3BBF7B3BB
        F7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF773D275B5FFB573D2750000B3BB
        F7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B3BBF7B1
        BDB173D27577A87A0000}
      Transparent = True
      Visible = False
    end
    object Label10: TLabel
      Left = 622
      Top = 58
      Width = 221
      Height = 13
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1087#1086#1084#1077#1095#1077#1085#1072' '#1082#1072#1082' '#1086#1090#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1085#1072#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 128
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000D40E0000D40E00001000000010000000000000001010
        10004F4F4F0077777700B8A38800D0BFB900CEC8C800E8DCCF000000FF00DEDE
        DE00EFEFEF00F7F1E800FFF7EF00FFF7F700FFFFF700FFFFFF00882222222221
        2388883222222222238885556556565542888596966666665388859B77777777
        528886DEAAAAAAAA638885900C777710538885F11FAAAA11638885BBDBD77777
        628886EFFFFAAAAA638885B000000000528885F111111111638885BBCCCBBB77
        638886EFFFFFFDFA638885B000000000628885F111111111938885BECBCCCB9B
        528886EFFFFFFFDF638885AF00000000538885FF11111111938885DFFCCBDBBB
        528885FFFFFFFFFD638885D00FECBC00538886E11FFFFF11938885AFFFFFCBB7
        438885FFFFFFFFFF638885DFFF000C44448885FFFF111F53458885CFEFEFEC74
        488886DFFFFEFF95588886757575757488888999999999958888}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 131
      Top = 3
      Width = 127
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1094#1077#1085#1085#1080#1082#1086#1074
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000010000000000000008484
        8400C6C6C600F7E7D600FFF7EF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        5555555555555555555551111111111111115111111111111111000000000000
        0001111111111111111103334466666644011222221222222211034000666616
        1401122111221212121104466666611414011221222221121211046000006666
        4401122111112212211106666666666443011222221222222211061611666430
        0301121211222221121106666666443333011222222222222211000000000000
        0005111111111111111555555555555555555555555555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object btDel: TBitBtn
      Left = 455
      Top = 28
      Width = 141
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      TabOrder = 2
      OnClick = btDelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000D40E0000D40E00001000000010000000000000000000
        FF00808080009F9F9F00C0C0C000FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000444444444444
        4444444444444444444444444444444444444444444444444444444444444444
        4444444444444444444444444444444444444444444444444444444444444444
        4444445555555555555530000000000000024222222222222224211111111111
        1110254444444444444221111111111111102544444444444442211111111111
        1110254444444444444221111111111111102455555555555552322222222222
        2222422222222222222444444444444444444444444444444444444444444444
        4444444444444444444444444444444444444444444444444444444444444444
        4444444444444444444444444444444444444444444444444444}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 858
      Top = 3
      Width = 106
      Height = 25
      Anchors = [akTop]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 3
      OnClick = BitBtn4Click
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
      Left = 258
      Top = 3
      Width = 153
      Height = 25
      Caption = #1040#1082#1090' '#1087#1088#1080#1077#1084#1072'-'#1087#1077#1088#1077#1076#1072#1095#1080
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000D40E0000D40E00001000000010000000000000001010
        10004F4F4F0077777700B8A38800D0BFB900CEC8C800E8DCCF000000FF00DEDE
        DE00EFEFEF00F7F1E800FFF7EF00FFF7F700FFFFF700FFFFFF00882222222221
        2388883222222222238885556556565542888596966666665388859B77777777
        528886DEAAAAAAAA638885900C777710538885F11FAAAA11638885BBDBD77777
        628886EFFFFAAAAA638885B000000000528885F111111111638885BBCCCBBB77
        638886EFFFFFFDFA638885B000000000628885F111111111938885BECBCCCB9B
        528886EFFFFFFFDF638885AF00000000538885FF11111111938885DFFCCBDBBB
        528885FFFFFFFFFD638885D00FECBC00538886E11FFFFF11938885AFFFFFCBB7
        438885FFFFFFFFFF638885DFFF000C44448885FFFF111F53458885CFEFEFEC74
        488886DFFFFEFF95588886757575757488888999999999958888}
      NumGlyphs = 2
    end
    object BitBtn6: TBitBtn
      Left = 3
      Top = 28
      Width = 203
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1087#1086' '#1087#1086#1083#1082#1072#1084
      TabOrder = 5
      OnClick = BitBtn6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000D40E0000D40E00001000000010000000000000001010
        10004F4F4F0077777700B8A38800D0BFB900CEC8C800E8DCCF000000FF00DEDE
        DE00EFEFEF00F7F1E800FFF7EF00FFF7F700FFFFF700FFFFFF00882222222221
        2388883222222222238885556556565542888596966666665388859B77777777
        528886DEAAAAAAAA638885900C777710538885F11FAAAA11638885BBDBD77777
        628886EFFFFAAAAA638885B000000000528885F111111111638885BBCCCBBB77
        638886EFFFFFFDFA638885B000000000628885F111111111938885BECBCCCB9B
        528886EFFFFFFFDF638885AF00000000538885FF11111111938885DFFCCBDBBB
        528885FFFFFFFFFD638885D00FECBC00538886E11FFFFF11938885AFFFFFCBB7
        438885FFFFFFFFFF638885DFFF000C44448885FFFF111F53458885CFEFEFEC74
        488886DFFFFEFF95588886757575757488888999999999958888}
      NumGlyphs = 2
    end
    object BitBtn7: TBitBtn
      Left = 411
      Top = 3
      Width = 185
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080' '#1103#1097#1080#1082#1086#1074'...'
      Enabled = False
      TabOrder = 6
      OnClick = BitBtn7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000D40E0000D40E00001000000010000000000000001010
        10004F4F4F0077777700B8A38800D0BFB900CEC8C800E8DCCF000000FF00DEDE
        DE00EFEFEF00F7F1E800FFF7EF00FFF7F700FFFFF700FFFFFF00882222222221
        2388883222222222238885556556565542888596966666665388859B77777777
        528886DEAAAAAAAA638885900C777710538885F11FAAAA11638885BBDBD77777
        628886EFFFFAAAAA638885B000000000528885F111111111638885BBCCCBBB77
        638886EFFFFFFDFA638885B000000000628885F111111111938885BECBCCCB9B
        528886EFFFFFFFDF638885AF00000000538885FF11111111938885DFFCCBDBBB
        528885FFFFFFFFFD638885D00FECBC00538886E11FFFFF11938885AFFFFFCBB7
        438885FFFFFFFFFF638885DFFF000C44448885FFFF111F53458885CFEFEFEC74
        488886DFFFFEFF95588886757575757488888999999999958888}
      NumGlyphs = 2
    end
    object BitBtn8: TBitBtn
      Tag = 1
      Left = 206
      Top = 28
      Width = 249
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1094#1077#1085#1085#1080#1082#1086#1074' '#1087#1086' '#1085#1086#1074#1086#1084#1091' '#1087#1088#1080#1093#1086#1076#1091
      TabOrder = 7
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000010000000000000008484
        8400C6C6C600F7E7D600FFF7EF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        5555555555555555555551111111111111115111111111111111000000000000
        0001111111111111111103334466666644011222221222222211034000666616
        1401122111221212121104466666611414011221222221121211046000006666
        4401122111112212211106666666666443011222221222222211061611666430
        0301121211222221121106666666443333011222222222222211000000000000
        0005111111111111111555555555555555555555555555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object ComboBox1: TComboBox
      Left = 912
      Top = 30
      Width = 40
      Height = 21
      Anchors = [akTop, akRight]
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = '0'
      Items.Strings = (
        '0'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '20'
        '25')
    end
    object CheckBox2: TCheckBox
      Left = 759
      Top = 28
      Width = 72
      Height = 17
      Caption = #1057#1090#1080#1082#1077#1088#1099
      TabOrder = 9
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 759
      Top = 8
      Width = 97
      Height = 17
      Caption = 'C '#1091#1095'. '#1091#1087#1072#1082#1086#1074#1086#1082
      Checked = True
      State = cbChecked
      TabOrder = 10
      Visible = False
    end
    object BitBtn9: TBitBtn
      Left = 3
      Top = 53
      Width = 203
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1072' '#1085#1077#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1081
      TabOrder = 11
      OnClick = BitBtn9Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000D40E0000D40E00001000000010000000000000001010
        10004F4F4F0077777700B8A38800D0BFB900CEC8C800E8DCCF000000FF00DEDE
        DE00EFEFEF00F7F1E800FFF7EF00FFF7F700FFFFF700FFFFFF00882222222221
        2388883222222222238885556556565542888596966666665388859B77777777
        528886DEAAAAAAAA638885900C777710538885F11FAAAA11638885BBDBD77777
        628886EFFFFAAAAA638885B000000000528885F111111111638885BBCCCBBB77
        638886EFFFFFFDFA638885B000000000628885F111111111938885BECBCCCB9B
        528886EFFFFFFFDF638885AF00000000538885FF11111111938885DFFCCBDBBB
        528885FFFFFFFFFD638885D00FECBC00538886E11FFFFF11938885AFFFFFCBB7
        438885FFFFFFFFFF638885DFFF000C44448885FFFF111F53458885CFEFEFEC74
        488886DFFFFEFF95588886757575757488888999999999958888}
      NumGlyphs = 2
    end
    object bbCloseBox: TBitBtn
      Left = 455
      Top = 53
      Width = 141
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1103#1097#1080#1082
      TabOrder = 12
      OnClick = bbCloseBoxClick
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000130B0000130B0000000000000000000000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        E9EEF2DCE3EACFD7E2C1CDDAAFC0D099ACC09CB4CBB3C7D8D2DFE9E1E8EEEDEF
        F100FF0000FF0000FF0000FF0000FF00EEEEEEE4E4E4D9D9D9CFCFCFC2C2C2AF
        AFAFB8B8B8C9C9C9E0E0E0E9E9E9EFEFEF00FF0000FF0000FF00D9E2E9C2CEDD
        A9B9CB8DA3BA7390AC5D7D9B4D6E924E72996792BB6794BC6C94B97FA2C197B4
        CCB5C9D9D3E1EBE9F0F5E3E3E3D1D1D1BCBCBCA7A7A795959582828275757579
        79799999999B9B9B9A9A9AA7A7A7B8B8B8CBCBCBE2E2E2F0F0F08CA2B9557597
        4D6E924B6C8F4A6B8C4462824A6A8B50739D6993BD6995BE93AFC8989EA28A99
        A6799DBE6C96BAA2BAD0A6A6A67B7B7B7575757272727171716868687070707B
        7B7B9A9A9A9C9C9CB3B3B39E9E9E9B9B9BA2A2A29C9C9CBDBDBD7893B04D6E93
        4B6B8C4765844868894664824A6A8C52749F6B96BF6D99C27EA3C596A7B68E97
        9E89A5BD6D99C290B1CE9898987575757171716B6B6B6E6E6E6969697070707D
        7D7D9D9D9DA0A0A0A9A9A9A9A9A9989898A9A9A9A0A0A0B6B6B67893B249698A
        4766844867874B6E904E70934F72975376A06E98C26F9BC36F9BC36F9BC36F9B
        C46F9BC36F9BC392B3CF9999996F6F6F6B6B6B6D6D6D7474747676767979797E
        7E7E9F9F9FA2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2B7B7B77A96B3547AA1
        567AA2567AA2557AA1567AA2557AA15579A1709BC4729EC5729FC4729FC4729F
        C4729FC4729EC494B5D29B9B9B81818182828282828281818182828281818181
        8181A2A2A2A4A4A4A5A5A5A5A5A5A5A5A5A5A5A5A4A4A4BABABA7B98B3577DA2
        577DA2577DA2577DA2577DA2577DA2577CA1739EC675A1C975A1C975A1C975A1
        C975A1C975A1C997B7D49C9C9C83838383838383838383838383838383838383
        8383A5A5A5A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8BCBCBC7D9AB45A80A3
        5A80A35A80A35A80A35A80A35A80A35980A374A0C878A4CD78A4CD78A4CD78A4
        CD78A4CD78A4CD99B9D69E9E9E86868686868686868686868686868686868686
        8686A7A7A7ABABABABABABABABABABABABABABABABABABBEBEBE7F9BB65C82A4
        5C82A45C82A45C82A45C82A45C82A45B81A476A2CA7BA7D07BA7D07BA7D07BA7
        D07BA7D07BA7CF9BBCD7A0A0A088888888888888888888888888888888888887
        8787A9A9A9AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEC0C0C07F9CB75D81A7
        5D81A75D81A75D81A75D81A75D81A75D81A87BA3CC80A9D080A9D080A9D080A9
        D080A9D080A9D09DBEDAA0A0A088888888888888888888888888888888888888
        8888AAAAAAB0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C2C2C2809DBA5D83AA
        5D83AA5D83AA5E83AA5E83AB5D83AA5D83AB7DA5CF83ACD482ACD483ACD282AC
        D283ACD483ACD49FC0DCA2A2A28A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A
        8A8AADADADB3B3B3B3B3B3B2B2B2B2B2B2B3B3B3B3B3B3C4C4C4819FBB5F85AC
        5F85AC5B79985A738D5F83A85F85AC5F85AC7FA8D085AFD685AED77FA1C17FA1
        C085AED785AED6A1C2DEA4A4A48C8C8C8C8C8C7F7F7F7878788A8A8A8C8C8C8C
        8C8CAFAFAFB6B6B6B5B5B5A6A6A6A6A6A6B5B5B5B5B5B5C6C6C6ADBFD192ABC3
        8AA5BF8198AF7A8DA27494B26D90B26789AE84ABCF8FB5D893B8DA96B0CB9DB6
        CFA5C3E0ABC8E2C2D7E8C2C2C2AFAFAFA9A9A99C9C9C91919199999996969690
        9090B1B1B1BBBBBBBEBEBEB5B5B5BABABAC8C8C8CCCCCCD9D9D900FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00}
      NumGlyphs = 2
    end
    object BitBtn10: TBitBtn
      Left = 206
      Top = 53
      Width = 249
      Height = 25
      Hint = 
        #1055#1086#1084#1077#1090#1082#1072' '#1086#1079#1085#1072#1095#1072#1077#1090', '#1095#1090#1086' '#1085#1072#1082#1083#1072#1076#1085#1072#1103' '#1086#1090#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1072' '#1080' '#1074#1089#1077' '#1103#1097#1080#1082#1080' '#1079#1072#1082#1088#1099#1090 +
        #1099'.'
      Caption = #1055#1086#1084#1077#1090#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1082#1072#1082' '#1086#1090#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1085#1091#1102' '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = BitBtn10Click
    end
    object bbVzr: TBitBtn
      Left = 596
      Top = 3
      Width = 145
      Height = 25
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080'...'
      TabOrder = 14
      Visible = False
      OnClick = bbVzrClick
    end
  end
  object Panel4: TPanel
    Left = 233
    Top = 78
    Width = 735
    Height = 327
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      735
      327)
    object DBGrid2: TDBGrid
      Left = -1
      Top = -1
      Width = 736
      Height = 328
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 15000284
      DataSource = DM.srShowNakl
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnDblClick = DBGrid2DblClick
      OnKeyDown = DBGrid2KeyDown
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'art_code'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1076
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'names'
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 398
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kol'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'isscan'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'. '#1089#1082#1072#1085'.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cena'
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1085#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'f_nds'
          Title.Alignment = taCenter
          Title.Caption = #1053#1044#1057
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'box'
          Title.Alignment = taCenter
          Title.Caption = #1071#1097#1080#1082
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 233
    Top = 1
    Width = 735
    Height = 75
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      735
      75)
    object Label3: TLabel
      Left = 10
      Top = 9
      Width = 111
      Height = 17
      Caption = ' '#1053#1072#1082#1083#1072#1076#1085#1072#1103' '#8470': '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 10
      Top = 49
      Width = 58
      Height = 17
      Caption = ' '#1057#1091#1084#1084#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 29
      Width = 50
      Height = 17
      Caption = ' '#1044#1072#1090#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 128
      Top = 50
      Width = 59
      Height = 17
      AutoSize = True
      DataField = 'Summa'
      DataSource = DM.srNaklList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 128
      Top = 30
      Width = 59
      Height = 17
      AutoSize = True
      DataField = 'Date_nakl'
      DataSource = DM.srNaklList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 128
      Top = 10
      Width = 59
      Height = 17
      AutoSize = True
      DataField = 'NN_NAKL'
      DataSource = DM.srNaklList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 230
      Top = 55
      Width = 114
      Height = 13
      Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1086#1079#1074#1088#1072#1090#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 350
      Top = 55
      Width = 378
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      DataField = 'priznak'
      DataSource = DM.srNaklList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 355
      Top = 8
      Width = 180
      Height = 16
      Caption = #1044#1072#1090#1072' '#1076#1086#1089#1090#1072#1074#1082#1080' '#1087#1086#1089#1099#1083#1082#1080':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  object pmPrnReg: TPopupMenu
    Left = 35
    Top = 133
    object N1: TMenuItem
      Tag = 1
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1072#1083#1092#1072#1074#1080#1090#1091'...'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Tag = 2
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1085#1086#1084#1077#1088#1072#1084' '#1087#1086#1083#1086#1082'...'
      OnClick = N1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 263
    Top = 133
    object pm11: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OnClick = pm11Click
    end
  end
  object pmCancel: TPopupMenu
    Left = 125
    Top = 133
    object N3: TMenuItem
      Caption = #1057#1085#1103#1090#1100' '#1087#1086#1084#1077#1090#1082#1091' '#1086#1073' '#1086#1090#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1080
      OnClick = N3Click
    end
  end
end
