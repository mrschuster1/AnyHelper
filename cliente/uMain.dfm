object fMain: TfMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Acesso'
  ClientHeight = 231
  ClientWidth = 488
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    488
    231)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TUPanel
    Left = 40
    Top = 28
    Width = 448
    Height = 203
    Align = alClient
    Color = 15132390
    showcaption = True
    TabOrder = 0
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15132390
    CustomBackColor.LightColor = 15132390
    CustomBackColor.DarkColor = 2039583
    object lblAlias: TUText
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 428
      Height = 176
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Alignment = taCenter
      Color = 10509099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      GlowSize = 10
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
      OnClick = lblAliasClick
      ExplicitWidth = 27
      ExplicitHeight = 52
    end
    object load: TscGPActivityBar
      Left = 0
      Top = 196
      Width = 448
      Height = 7
      Align = alBottom
      FluentUIOpaque = False
      TabOrder = 0
      Visible = False
      PointColor = 3618764
      TransparentBackground = True
    end
  end
  object cb: TUCaptionBar
    Left = 0
    Top = 0
    Width = 488
    Height = 28
    Alignment = taCenter
    Caption = '             Status:'
    Color = 3618764
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    ParentFont = False
    TabOrder = 1
    CustomBackColor.Enabled = True
    CustomBackColor.Color = 3618764
    CustomBackColor.LightColor = 3618764
    CustomBackColor.DarkColor = 3618764
    object btnClose: TUQuickButton
      Left = 448
      Top = 0
      Width = 40
      Height = 28
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
      ExplicitLeft = 454
      ExplicitHeight = 25
    end
    object btnMenu: TUQuickButton
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 40
      Height = 28
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      OnClick = btnMenuClick
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      Caption = #59136
      ExplicitHeight = 25
    end
    object UQuickButton1: TUQuickButton
      Left = 408
      Top = 0
      Width = 40
      Height = 28
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 30
      Margins.Bottom = 0
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      ButtonStyle = qbsMin
      Caption = #57608
      ExplicitLeft = 360
      ExplicitHeight = 25
    end
    object btnTelaCheia: TUQuickButton
      Left = 40
      Top = 0
      Width = 40
      Height = 28
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 30
      Margins.Bottom = 0
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      OnClick = btnTelaCheiaClick
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      ButtonStyle = qbsMax
      Caption = #59200
      ExplicitHeight = 25
    end
  end
  object sv: TscModernSplitView
    Left = 0
    Top = 28
    Width = 200
    Height = 203
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    ParentFont = False
    FluentUIOpaque = False
    TabOrder = 2
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
    StyleKind = scpsPanel
    ShowCaption = False
    BorderStyle = scpbsRightShadowLine
    WallpaperIndex = -1
    LightBorderColor = clBtnFace
    ShadowBorderColor = clBtnShadow
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Color = 3618764
    StorePaintBuffer = False
    WordWrap = False
    AnimationStep = 25
    CompactWidth = 40
    Opened = True
    OpenedWidth = 200
    ParentBackground = False
    ParentColor = False
    Animation = True
    object btnReiniciarServico: TUListButton
      Left = 0
      Top = 0
      Width = 199
      Height = 41
      Align = alTop
      Caption = 'Reiniciar servi'#231'os do Anydesk'
      ParentColor = True
      TabOrder = 0
      OnClick = btnReiniciarServicoClick
      IconFont.Charset = DEFAULT_CHARSET
      IconFont.Color = clWindowText
      IconFont.Height = -21
      IconFont.Name = 'Segoe MDL2 Assets'
      IconFont.Style = []
      IconFont.Quality = fqClearTypeNatural
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 15132390
      CustomBackColor.LightHover = 13619151
      CustomBackColor.LightPress = 12105912
      CustomBackColor.LightSelectedNone = 127
      CustomBackColor.LightSelectedHover = 103
      CustomBackColor.LightSelectedPress = 89
      CustomBackColor.DarkNone = 2039583
      CustomBackColor.DarkHover = 3487029
      CustomBackColor.DarkPress = 5000268
      CustomBackColor.DarkSelectedNone = 89
      CustomBackColor.DarkSelectedHover = 103
      CustomBackColor.DarkSelectedPress = 127
      FontIcon = #57805
      Detail = ' '
      Transparent = True
    end
    object btnPararServico: TUListButton
      Left = 0
      Top = 41
      Width = 199
      Height = 41
      Align = alTop
      Caption = 'Parar os servi'#231'os do Anydesk'
      ParentColor = True
      TabOrder = 1
      OnClick = btnPararServicoClick
      IconFont.Charset = DEFAULT_CHARSET
      IconFont.Color = clWindowText
      IconFont.Height = -21
      IconFont.Name = 'Segoe MDL2 Assets'
      IconFont.Style = []
      IconFont.Quality = fqClearTypeNatural
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 15132390
      CustomBackColor.LightHover = 13619151
      CustomBackColor.LightPress = 12105912
      CustomBackColor.LightSelectedNone = 127
      CustomBackColor.LightSelectedHover = 103
      CustomBackColor.LightSelectedPress = 89
      CustomBackColor.DarkNone = 2039583
      CustomBackColor.DarkHover = 3487029
      CustomBackColor.DarkPress = 5000268
      CustomBackColor.DarkSelectedNone = 89
      CustomBackColor.DarkSelectedHover = 103
      CustomBackColor.DarkSelectedPress = 127
      FontIcon = #59162
      Detail = ' '
      Transparent = True
    end
    object btnIniciarServicoAnydesk: TUListButton
      Left = 0
      Top = 82
      Width = 199
      Height = 41
      Align = alTop
      Caption = 'Iniciar os servi'#231'os do Anydesk'
      ParentColor = True
      TabOrder = 2
      OnClick = btnIniciarServicoAnydeskClick
      IconFont.Charset = DEFAULT_CHARSET
      IconFont.Color = clWindowText
      IconFont.Height = -21
      IconFont.Name = 'Segoe MDL2 Assets'
      IconFont.Style = []
      IconFont.Quality = fqClearTypeNatural
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 15132390
      CustomBackColor.LightHover = 13619151
      CustomBackColor.LightPress = 12105912
      CustomBackColor.LightSelectedNone = 127
      CustomBackColor.LightSelectedHover = 103
      CustomBackColor.LightSelectedPress = 89
      CustomBackColor.DarkNone = 2039583
      CustomBackColor.DarkHover = 3487029
      CustomBackColor.DarkPress = 5000268
      CustomBackColor.DarkSelectedNone = 89
      CustomBackColor.DarkSelectedHover = 103
      CustomBackColor.DarkSelectedPress = 127
      FontIcon = #59240
      Detail = ' '
      Transparent = True
    end
    object btnInfoPC: TUListButton
      Left = 0
      Top = 164
      Width = 199
      Height = 41
      Align = alTop
      Caption = 'Informa'#231#245'es do computador'
      ParentColor = True
      TabOrder = 3
      OnClick = btnInfoPCClick
      IconFont.Charset = DEFAULT_CHARSET
      IconFont.Color = clWindowText
      IconFont.Height = -21
      IconFont.Name = 'Segoe MDL2 Assets'
      IconFont.Style = []
      IconFont.Quality = fqClearTypeNatural
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 15132390
      CustomBackColor.LightHover = 13619151
      CustomBackColor.LightPress = 12105912
      CustomBackColor.LightSelectedNone = 127
      CustomBackColor.LightSelectedHover = 103
      CustomBackColor.LightSelectedPress = 89
      CustomBackColor.DarkNone = 2039583
      CustomBackColor.DarkHover = 3487029
      CustomBackColor.DarkPress = 5000268
      CustomBackColor.DarkSelectedNone = 89
      CustomBackColor.DarkSelectedHover = 103
      CustomBackColor.DarkSelectedPress = 127
      FontIcon = #59718
      Detail = ' '
      Transparent = True
    end
    object btnConfig: TUListButton
      Left = 0
      Top = 123
      Width = 199
      Height = 41
      Align = alTop
      Caption = 'Configura'#231#245'es'
      ParentColor = True
      TabOrder = 4
      OnClick = btnConfigClick
      IconFont.Charset = DEFAULT_CHARSET
      IconFont.Color = clWindowText
      IconFont.Height = -21
      IconFont.Name = 'Segoe MDL2 Assets'
      IconFont.Style = []
      IconFont.Quality = fqClearTypeNatural
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 15132390
      CustomBackColor.LightHover = 13619151
      CustomBackColor.LightPress = 12105912
      CustomBackColor.LightSelectedNone = 127
      CustomBackColor.LightSelectedHover = 103
      CustomBackColor.LightSelectedPress = 89
      CustomBackColor.DarkNone = 2039583
      CustomBackColor.DarkHover = 3487029
      CustomBackColor.DarkPress = 5000268
      CustomBackColor.DarkSelectedNone = 89
      CustomBackColor.DarkSelectedHover = 103
      CustomBackColor.DarkSelectedPress = 127
      FontIcon = #59155
      Detail = ' '
      Transparent = True
    end
  end
  object ActionList1: TActionList
    Left = 440
    Top = 136
    object actClose: TAction
      Caption = 'close'
      SecondaryShortCuts.Strings = (
        'Alt + D')
      ShortCut = 27
      OnExecute = actCloseExecute
    end
  end
  object tmShowForm: TTimer
    Interval = 100
    OnTimer = tmShowFormTimer
    Left = 232
    Top = 104
  end
  object pp: TUPopupMenu
    AniSet.AniKind = akOut
    AniSet.AniFunctionKind = afkQuartic
    AniSet.DelayStartTime = 0
    AniSet.Duration = 120
    AniSet.Step = 12
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15132390
    CustomBackColor.LightColor = 15132390
    CustomBackColor.DarkColor = 2039583
    ItemWidth = 280
    OnItemClick = ppItemClick
    Left = 344
    Top = 80
    object Copiaracesso1: TMenuItem
      Caption = #59592'Copiar acesso'
    end
    object Enviaracessoviawhatsapp1: TMenuItem
      Caption = #59172'Enviar acesso via Whatsapp Web'
    end
  end
end
