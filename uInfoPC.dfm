object fInfoPC: TfInfoPC
  Left = 0
  Top = 0
  Caption = 'Informa'#231#245'es do computador'
  ClientHeight = 237
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cb: TUCaptionBar
    Left = 0
    Top = 0
    Width = 569
    Height = 25
    Caption = '   Informa'#231#245'es do computador'
    Color = 3618764
    TabOrder = 0
    CustomBackColor.Enabled = True
    CustomBackColor.Color = 3618764
    CustomBackColor.LightColor = 3618764
    CustomBackColor.DarkColor = 3618764
    object btnClose: TUQuickButton
      Left = 522
      Top = 0
      Width = 47
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 30
      Margins.Bottom = 0
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      ButtonStyle = qbsQuit
      Caption = #57610
      ExplicitLeft = 400
    end
  end
  object pnlMain: TUPanel
    Left = 0
    Top = 25
    Width = 569
    Height = 212
    Align = alClient
    Color = 15132390
    showcaption = True
    TabOrder = 1
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15132390
    CustomBackColor.LightColor = 15132390
    CustomBackColor.DarkColor = 2039583
    object UPanel1: TUPanel
      AlignWithMargins = True
      Left = 5
      Top = 0
      Width = 156
      Height = 212
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Color = 15132390
      showcaption = True
      TabOrder = 0
      BarMargin = 0
      BarPosition = dRight
      BarThickness = 2
      BarVisible = True
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
      object UText1: TUText
        AlignWithMargins = True
        Left = 5
        Top = 120
        Width = 146
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Mem'#243'ria RAM:'
        ExplicitWidth = 75
      end
      object UText2: TUText
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 146
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Sistema operacional:'
        ExplicitWidth = 105
      end
      object UText3: TUText
        AlignWithMargins = True
        Left = 5
        Top = 28
        Width = 146
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Nome do computador:'
        ExplicitWidth = 116
      end
      object UText4: TUText
        AlignWithMargins = True
        Left = 5
        Top = 51
        Width = 146
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Nome do usu'#225'rio:'
        ExplicitWidth = 90
      end
      object UText5: TUText
        AlignWithMargins = True
        Left = 5
        Top = 74
        Width = 146
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Dom'#237'nio:'
        ExplicitWidth = 46
      end
      object UText7: TUText
        AlignWithMargins = True
        Left = 5
        Top = 97
        Width = 146
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Processador:'
        ExplicitWidth = 64
      end
      object UText11: TUText
        AlignWithMargins = True
        Left = 5
        Top = 143
        Width = 146
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Endere'#231'o de IP:'
        ExplicitWidth = 77
      end
    end
    object UPanel2: TUPanel
      Left = 161
      Top = 0
      Width = 408
      Height = 212
      Align = alClient
      Color = 15132390
      showcaption = True
      TabOrder = 1
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
      ExplicitLeft = 198
      ExplicitWidth = 371
      object lblRAM: TUText
        AlignWithMargins = True
        Left = 5
        Top = 120
        Width = 398
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Mem'#243'ria RAM'
        ExplicitWidth = 73
      end
      object lblEndIP: TUText
        AlignWithMargins = True
        Left = 5
        Top = 143
        Width = 398
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Endere'#231'o de IP'
        ExplicitWidth = 75
      end
      object lblSistemaOperacional: TUText
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 398
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Sistema operacional:'
        ExplicitWidth = 105
      end
      object lblNomePC: TUText
        AlignWithMargins = True
        Left = 5
        Top = 28
        Width = 398
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Nome do computador:'
        ExplicitWidth = 116
      end
      object lblNomeUsuario: TUText
        AlignWithMargins = True
        Left = 5
        Top = 51
        Width = 398
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Nome do usu'#225'rio:'
        ExplicitWidth = 90
      end
      object lblDominio: TUText
        AlignWithMargins = True
        Left = 5
        Top = 74
        Width = 398
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Dom'#237'nio:'
        ExplicitWidth = 46
      end
      object lblProcessador: TUText
        AlignWithMargins = True
        Left = 5
        Top = 97
        Width = 398
        Height = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Processador'
        ExplicitWidth = 62
      end
    end
  end
  object pc: TJvComputerInfoEx
    Left = 72
    Top = 208
  end
end
