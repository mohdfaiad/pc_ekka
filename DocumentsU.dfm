object DocumentsF: TDocumentsF
  Left = 434
  Top = 253
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'DocumentsF'
  ClientHeight = 344
  ClientWidth = 992
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
    992
    344)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 1
    Top = 5
    Width = 425
    Height = 336
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = ' '#1056#1072#1079#1076#1077#1083#1099' '
    TabOrder = 0
    DesignSize = (
      425
      336)
    object Label1: TLabel
      Left = 10
      Top = 20
      Width = 99
      Height = 13
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 40
      Width = 415
      Height = 291
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 13624016
      DataSource = DM.srFolders
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descr'
          Width = 393
          Visible = True
        end>
    end
    object RadioButton1: TRadioButton
      Left = 115
      Top = 20
      Width = 86
      Height = 17
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103#1084
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 210
      Top = 20
      Width = 76
      Height = 17
      Caption = #1040#1083#1092#1072#1074#1080#1090#1091
      TabOrder = 2
      OnClick = RadioButton1Click
    end
  end
  object BitBtn1: TBitBtn
    Left = 885
    Top = 318
    Width = 106
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = BitBtn1Click
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
  object DBGrid2: TDBGrid
    Left = 429
    Top = 10
    Width = 561
    Height = 306
    Anchors = [akTop, akRight, akBottom]
    DataSource = DM.srFiles
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'fname'
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1081#1083#1099
        Width = 525
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 430
    Top = 317
    Width = 141
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      08000000000000010000D30E0000D30E00000001000000010000944242008C4A
      4A00944A4A007B525A008C5A5A005A636B0063636B006B6B6B005A6373005A6B
      7300636B73007B6B7300CE7B73004A637B00636B7B006B737B0073737B007B73
      7B00737B7B007B7B7B00B57B7B00C67B7B0052738400737B8400847B84008C7B
      8400AD7B84007B848400848484009C848400A5848400316B8C0039738C005273
      8C00527B8C00637B8C0063848C006B848C008C848C0094848C00A5848C00AD84
      8C00948C8C00AD8C8C0031739400527B940084849400638C94008C8C94008C94
      9400949494004A849C005A849C004A8C9C00638C9C007B949C009C949C00A594
      9C00428CA500528CA5005A8CA5005A94A500949CA500A5A5A500CEA5A5002984
      AD004A94AD005294AD005A94AD006B9CAD0073A5AD0084A5AD00A5A5AD00ADA5
      AD00ADADAD00BDADAD00CEADAD00E7B5AD003194B5003994B5004294B5004A9C
      B5005A9CB500639CB5005AA5B50063A5B5006BA5B5007BA5B50073ADB5007BAD
      B50084ADB5008CADB5008CB5B500B5B5B500DEB5B5002994BD003194BD00319C
      BD00399CBD00429CBD004A9CBD004AA5BD005AA5BD005AADBD0073ADBD007BAD
      BD0073B5BD007BB5BD0084B5BD00299CC60039A5C60042A5C6006BB5C60073B5
      C6007BB5C6007BBDC60084BDC600BDC6C60031A5CE004AADCE0052ADCE006BB5
      CE007BBDCE0084C6CE0042B5D6004ABDD6006BBDD6006BC6D60084C6D60031AD
      DE0031B5DE0042B5DE0073CEDE0084CEDE007BD6DE0084D6DE008CD6DE004AC6
      E70052C6E70063CEE7006BCEE70073CEE70084D6E70084DEE7008CDEE7009CE7
      E7004AC6EF004ACEEF0052CEEF005ACEEF005AD6EF006BD6EF0073DEEF007BDE
      EF007BE7EF008CE7EF009CE7EF0094EFEF00A5EFEF004ACEF7004AD6F70052D6
      F70063DEF7006BDEF70073DEF70073E7F7007BE7F70084E7F70084EFF7008CEF
      F7009CEFF70094F7F700A5F7F700ADF7F700ADFFF700B5FFF700FF00FF007BEF
      FF0084EFFF0094EFFF008CF7FF0094F7FF009CFFFF00ADFFFF00B5FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00757575757575
      7575757575757575757575750D6F51433D362525171013327575751939237C93
      A2A3A6A79B912405757575101F4F77898B8C99A7A9AD458105755D28400B6F89
      8B8C99A7A99E59950975751D3E0333928B8C99A7A9AA5A870875482B4D045089
      8B8C99A7A9AD54412A757519360E42898B8C99A7A9AD568106753F2B5E023A93
      8B8C99A7A9AC6B980A757511203364898B8C99A7A9AC5A870A75752738347C89
      8B8C99A7A9AC58221B7575322C5077929597A6B2B3B759960775757521635152
      707E84878E9E578C0A7575757531223C68696C747B7B72980E75757575757575
      75316885A9915A371775757575757575757575315BAA5C4A7575}
  end
  object BitBtn3: TBitBtn
    Left = 574
    Top = 317
    Width = 147
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1085#1072' '#1076#1080#1089#1082
    TabOrder = 4
    OnClick = BitBtn3Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000D40E0000D40E000010000000100000009C3B3B00AD56
      5400B7605E00C8606000B1777300CA6F6B00B68D8D00D2999900C7B5B100DEAD
      AD00C6C6C600D7CFCE00DED6D600E8DFDC00F2EFED00FFFCF900A81116AAAAA6
      000AA535168BEFD70011A5332406DFE70011A5332600CEF70011A53526008AF9
      0021A533276668B70031A533353555353531A512679797979631A52DEFEEEEFE
      E931A22EEEEEFEEFE921A42DDCCCCCCBD921A52DECCCCCCCE911A52EDDDDDDDD
      E921A52DDCCBCCBCD921A42DEFEEFEEFE911A81ABBBBBBBBB718}
  end
end
