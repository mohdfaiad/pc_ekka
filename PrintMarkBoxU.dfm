object PrintMarkBoxF: TPrintMarkBoxF
  Left = 922
  Top = 300
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PrintMarkBoxF'
  ClientHeight = 430
  ClientWidth = 516
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
    516
    430)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 4
    Top = 8
    Width = 161
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086' '#1074#1089#1077#1084' '#1074#1086#1079#1074#1088#1072#1090#1072#1084
    Visible = False
  end
  object Label1: TLabel
    Left = 5
    Top = 5
    Width = 191
    Height = 13
    Caption = #1042#1099#1073#1086#1088' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1084#1072#1088#1082#1080#1088#1086#1074#1086#1082' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 25
    Width = 515
    Height = 375
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 404
    Width = 95
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 1
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
    Left = 260
    Top = 404
    Width = 95
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
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
  object Edit1: TEdit
    Left = 172
    Top = 5
    Width = 52
    Height = 21
    TabOrder = 3
    Text = '1'
    Visible = False
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object UpDown1: TUpDown
    Left = 224
    Top = 5
    Width = 15
    Height = 21
    Associate = Edit1
    Max = 10000
    Position = 1
    TabOrder = 4
    Visible = False
  end
end
