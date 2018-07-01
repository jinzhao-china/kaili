object Form1: TForm1
  Left = 479
  Top = 300
  Width = 714
  Height = 493
  Caption = 'Kruger DLL Delphi Sample Application'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 11
    Width = 24
    Height = 13
    Caption = 'm3/s'
  end
  object Label2: TLabel
    Left = 136
    Top = 37
    Width = 13
    Height = 13
    Caption = 'Pa'
  end
  object txtVolume: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '5'
  end
  object txtPressure: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '900'
  end
  object Button1: TButton
    Left = 192
    Top = 26
    Width = 75
    Height = 25
    Caption = 'Select'
    TabOrder = 2
    OnClick = Button1Click
  end
  object lvResults: TListView
    Left = 8
    Top = 56
    Width = 489
    Height = 217
    Columns = <
      item
        Caption = 'Fan'
        Width = 100
      end
      item
        Caption = 'Speed'
      end
      item
        Caption = 'Absorbed Power'
        Width = 70
      end
      item
        Caption = 'Motor Size'
        Width = 70
      end
      item
        Caption = 'Motor Rating'
        Width = 75
      end
      item
        Caption = 'Lw (dB)'
      end>
    TabOrder = 3
    ViewStyle = vsReport
  end
  object txtInfo: TMemo
    Left = 8
    Top = 280
    Width = 681
    Height = 169
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    Lines.Strings = (
      'txtInfo')
    ParentFont = False
    TabOrder = 4
  end
  object bnSpectrum: TButton
    Left = 520
    Top = 48
    Width = 169
    Height = 25
    Caption = 'Get Sound Spectrum'
    TabOrder = 5
    OnClick = bnSpectrumClick
  end
  object bnPerformancePoints: TButton
    Left = 520
    Top = 80
    Width = 169
    Height = 25
    Caption = 'Get Performance Points'
    TabOrder = 6
    OnClick = bnPerformancePointsClick
  end
  object bnDrives: TButton
    Left = 520
    Top = 112
    Width = 169
    Height = 25
    Caption = 'Get Drives'
    TabOrder = 7
    OnClick = bnDrivesClick
  end
  object bnChart: TButton
    Left = 520
    Top = 144
    Width = 169
    Height = 25
    Caption = 'Get Chart'
    TabOrder = 8
    OnClick = bnChartClick
  end
  object sd: TSaveDialog
    DefaultExt = '.gif'
    Filter = 'GIF Image|.gif|BMP Image|.bmp|WMF Image|.wmf'
    Title = 'Save Chart Image'
    Left = 488
    Top = 16
  end
end
