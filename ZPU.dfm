object ZpF: TZpF
  Left = 732
  Top = 456
  BorderStyle = bsDialog
  Caption = 'ZpF'
  ClientHeight = 176
  ClientWidth = 375
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
    375
    176)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 85
    Width = 112
    Height = 16
    Caption = #1057#1091#1084#1084#1072' '#1074#1099#1076#1072#1095#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbSum: TLabel
    Left = 130
    Top = 85
    Width = 29
    Height = 16
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 10
    Top = 40
    Width = 356
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = ComboBox1CloseUp
    OnCloseUp = ComboBox1CloseUp
  end
  object ComboBox2: TComboBox
    Left = 320
    Top = 10
    Width = 51
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    Visible = False
  end
  object BitBtn2: TBitBtn
    Left = 259
    Top = 146
    Width = 111
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = #1047#1072#1082#1088#1099#1090#1100
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
  object BitBtn5: TBitBtn
    Left = 10
    Top = 106
    Width = 111
    Height = 25
    Caption = #1042#1099#1076#1072#1090#1100
    TabOrder = 3
    OnClick = BitBtn5Click
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000C40E0000C40E000000000000000000000000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF91919191919191919191919191919191919191919191
      91919191919191919191919191919191919191919191919191910000FF0000FF
      0000FF0000FF0000FFC6874BE6B1610000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF919191919191919191919191919191C0C0C0E3E3E391
      91919191919191919191919191919191919191919191919191910000FF0000FF
      0000FF0000FF0000FFB56D3BD87708E7AD600000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF919191919191919191919191919191AAAAAAA5A5A5E1
      E1E19191919191919191919191919191919191919191919191910000FF0000FF
      0000FF0000FF0000FFAF612FCD6B04DD7E0CDF9B510000FF0000FF0000FF0000
      FF0000FF0000FF0000FF9191919191919191919191919191919F9F9F9B9B9BAB
      ABABD1D1D19191919191919191919191919191919191919191910000FF0000FF
      D07422E18014D9760CC86104CD6905D87403D5780FD793490000FF0000FF0000
      FF0000FF0000FF0000FF919191919191AAAAAAAFAFAFA6A6A69595959B9B9BA2
      A2A2A7A7A7C9C9C99191919191919191919191919191919191910000FF0000FF
      CC6815F3961CEC8F13E38309DC7803D67000D06902D37710D998510000FF0000
      FF0000FF0000FF0000FF9191919191919F9F9FC0C0C0B9B9B9ADADADA4A4A49E
      9E9E9A9A9AA7A7A7CECECE9191919191919191919191919191910000FF0000FF
      CF640FF39516ED900DE58205DD7901D67100CE6800CC6701D2760EDC9A480000
      FF0000FF0000FF0000FF9191919191919B9B9BBEBEBEB7B7B7ACACACA5A5A59F
      9F9F999999989898A5A5A5CDCDCD9191919191919191919191910000FF0000FF
      CE6109F1910DED8C06E38001DE7900D67000CE6700D37D28D37920D1730ADE97
      4B0000FF0000FF0000FF919191919191979797B8B8B8B3B3B3A9A9A9A4A4A49E
      9E9E989898B1B1B1ADADADA2A2A2CDCDCD9191919191919191910000FF0000FF
      D15F06F18D06ED8A02E58000DE7900D66F00CF6904E5B27EE7B88BD88323EAAB
      45EBD0AE0000FF0000FF919191919191959595B4B4B4B1B1B1A9A9A9A4A4A49E
      9E9E9A9A9AEDEDEDF4F4F4B4B4B4D8D8D8FFFFFF9191919191910000FF0000FF
      D15C03F08B02EE8A00E58000DE7900D56C00D67E24EECFB2EABD89F1C15FF7D9
      970000FF0000FF0000FF919191919191939393B2B2B2B0B0B0A9A9A9A4A4A49C
      9C9CB1B1B1FFFFFFF7F7F7EDEDEDFFFFFF9191919191919191910000FF0000FF
      D25901F18A00EE8A00E58000DE7900D67104E3A970E9BC88F0C260F7DA990000
      FF0000FF0000FF0000FF919191919191909090B0B0B0B0B0B0A9A9A9A4A4A4A0
      A0A0E3E3E3F6F6F6EEEEEEFFFFFF9191919191919191919191910000FF0000FF
      D96000F39103EE8C04E68302DC7500DB8628E6AF71F1C263F7DA960000FF0000
      FF0000FF0000FF0000FF919191919191959595B6B6B6B2B2B2ACACACA2A2A2B8
      B8B8E7E7E7EFEFEFFFFFFF9191919191919191919191919191910000FF0000FF
      F29616F8AF28F3A927D5780ECD6500E1912CF2C665F7D9970000FF0000FF0000
      FF0000FF0000FF0000FF919191919191BEBEBED3D3D3CFCFCFA7A7A7979797C0
      C0C0F2F2F2FFFFFF9191919191919191919191919191919191910000FF0000FF
      0000FF0000FF0000FFAE4E1AD9831AF3C559F7DB970000FF0000FF0000FF0000
      FF0000FF0000FF0000FF9191919191919191919191919191918D8D8DB1B1B1EE
      EEEEFFFFFF9191919191919191919191919191919191919191910000FF0000FF
      0000FF0000FF0000FFBC6520F1BF50F8DE960000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF9191919191919191919191919191919E9E9EE8E8E8FF
      FFFF9191919191919191919191919191919191919191919191910000FF0000FF
      0000FF0000FF0000FFDD9A40F6D6830000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF919191919191919191919191919191CBCBCBFFFFFF91
      9191919191919191919191919191919191919191919191919191}
    NumGlyphs = 2
  end
  object dtDate: TDateTimePicker
    Left = 10
    Top = 10
    Width = 101
    Height = 21
    Date = 42374.000000000000000000
    Time = 42374.000000000000000000
    Enabled = False
    TabOrder = 4
    OnCloseUp = ComboBox1CloseUp
  end
end
