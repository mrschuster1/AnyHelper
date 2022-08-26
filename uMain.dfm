object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Acessos Anydesk'
  ClientHeight = 598
  ClientWidth = 501
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    501
    598)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TUPanel
    Left = 40
    Top = 121
    Width = 461
    Height = 477
    Align = alClient
    Color = 15132390
    showcaption = True
    TabOrder = 1
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15132390
    CustomBackColor.LightColor = 15132390
    CustomBackColor.DarkColor = 2039583
    object lblSemAcessos: TUText
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 451
      Height = 84
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Align = alTop
      Alignment = taCenter
      Caption = 
        'Voc'#234' n'#227'o possui conex'#245'es cadastradas. Use a caixa de edi'#231#227'o acim' +
        'a para conectar-se a um computador remoto e clique no bot'#227'o ao l' +
        'ado dela ou aperte a tecla Enter no teclado para conectar-se.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      Layout = tlCenter
      Visible = False
      WordWrap = True
      ExplicitWidth = 426
    end
    object boxList: TUScrollBox
      AlignWithMargins = True
      Left = 0
      Top = 102
      Width = 461
      Height = 375
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      Align = alClient
      TabOrder = 0
      TabStop = True
      OnClick = boxListClick
      AniSet.AniKind = akOut
      AniSet.AniFunctionKind = afkQuintic
      AniSet.DelayStartTime = 0
      AniSet.Duration = 120
      AniSet.Step = 11
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
    end
  end
  object cb: TUCaptionBar
    Left = 0
    Top = 0
    Width = 501
    Height = 25
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
    TabOrder = 2
    CustomBackColor.Enabled = True
    CustomBackColor.Color = 3618764
    CustomBackColor.LightColor = 3618764
    CustomBackColor.DarkColor = 3618764
    ExplicitTop = -3
    object btnClose: TUQuickButton
      Left = 461
      Top = 0
      Width = 40
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
      ExplicitLeft = 454
    end
    object btnMenu: TUQuickButton
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 40
      Height = 25
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
    end
    object btnMax: TUQuickButton
      Left = 421
      Top = 0
      Width = 40
      Height = 25
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
      ButtonStyle = qbsMax
      Caption = #57347
      ExplicitLeft = 407
    end
    object UQuickButton1: TUQuickButton
      Left = 381
      Top = 0
      Width = 40
      Height = 25
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
    end
    object btnTelaCheia: TUQuickButton
      Left = 40
      Top = 0
      Width = 40
      Height = 25
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
    end
    object btnHelp: TUQuickButton
      Left = 341
      Top = 0
      Width = 40
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 30
      Margins.Bottom = 0
      Align = alRight
      Color = 3750347
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentColor = False
      ParentFont = False
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      ButtonStyle = qbsMax
      Caption = #59543
      ExplicitLeft = 48
    end
  end
  object pnlPesquisa: TUPanel
    Left = 0
    Top = 25
    Width = 501
    Height = 96
    Align = alTop
    Color = 3618764
    showcaption = True
    TabOrder = 0
    CustomBackColor.Enabled = True
    CustomBackColor.Color = 3618764
    CustomBackColor.LightColor = 3618764
    CustomBackColor.DarkColor = 3618764
    object btnConectarAcesso: TUQuickButton
      AlignWithMargins = True
      Left = 434
      Top = 41
      Width = 27
      Height = 30
      Hint = 
        'Vers'#245'es do banco de dados e execut'#225'vel do sistema n'#227'o compat'#237'vei' +
        's.'
      Margins.Left = 5
      Margins.Top = 15
      Margins.Right = 40
      Margins.Bottom = 25
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      OnClick = btnConectarAcessoClick
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      Caption = #59567
      ExplicitLeft = 395
      ExplicitTop = 56
      ExplicitHeight = 32
    end
    object pnlListaAcessos: TUPanel
      AlignWithMargins = True
      Left = 0
      Top = 5
      Width = 501
      Height = 21
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Color = 15132390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentBackground = True
      ParentFont = False
      showcaption = True
      TabOrder = 1
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
      Transparent = True
      object lblListaAcesso: TUText
        AlignWithMargins = True
        Left = 40
        Top = 0
        Width = 99
        Height = 21
        Margins.Left = 40
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'AnyHelper'
        Color = 10377771
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        GlowSize = 10
        ParentColor = False
        ParentFont = False
        ExplicitHeight = 43
      end
      object lblAlias: TUText
        AlignWithMargins = True
        Left = 437
        Top = 0
        Width = 24
        Height = 21
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 40
        Margins.Bottom = 0
        Align = alRight
        Alignment = taRightJustify
        Color = 10509099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        GlowSize = 10
        ParentColor = False
        ParentFont = False
        Layout = tlBottom
        ExplicitHeight = 40
      end
    end
    object pnlSearch: TUPanel
      AlignWithMargins = True
      Left = 40
      Top = 26
      Width = 389
      Height = 65
      Margins.Left = 40
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alClient
      Color = 15132390
      ParentBackground = True
      showcaption = True
      TabOrder = 0
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
      Transparent = True
      object edtPesquisa: TUEdit
        AlignWithMargins = True
        Left = 0
        Top = 15
        Width = 386
        Margins.Left = 0
        Margins.Top = 15
        Margins.Bottom = 20
        Align = alClient
        Color = clWhite
        TabOrder = 0
        TextHint = 'Pesquise aqui...'
        OnChange = edtPesquisaChange
        OnKeyDown = edtPesquisaKeyDown
        CustomBackColor.Enabled = False
        CustomBackColor.Color = clWhite
        CustomBackColor.LightColor = clWhite
        CustomBackColor.DarkColor = clBlack
        CustomBorderColor.Enabled = False
        CustomBorderColor.LightNone = 10066329
        CustomBorderColor.LightHover = 6710886
        CustomBorderColor.LightPress = 14120960
        CustomBorderColor.LightSelectedNone = 14120960
        CustomBorderColor.LightSelectedHover = 14120960
        CustomBorderColor.LightSelectedPress = 14120960
        CustomBorderColor.DarkNone = 6710886
        CustomBorderColor.DarkHover = 10066329
        CustomBorderColor.DarkPress = 14120960
        CustomBorderColor.DarkSelectedNone = 14120960
        CustomBorderColor.DarkSelectedHover = 14120960
        CustomBorderColor.DarkSelectedPress = 14120960
      end
    end
  end
  object sv: TscModernSplitView
    Left = 0
    Top = 121
    Width = 300
    Height = 477
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    ParentFont = False
    FluentUIOpaque = False
    TabOrder = 3
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
    OpenedWidth = 300
    ParentBackground = False
    ParentColor = False
    Animation = True
    object btnSenha: TUListButton
      Left = 0
      Top = 0
      Width = 299
      Height = 41
      Align = alTop
      Caption = 'Escolher senha padr'#227'o'
      ParentColor = True
      TabOrder = 0
      OnClick = btnSenhaClick
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
      FontIcon = #59607
      Detail = ' '
      Transparent = True
    end
    object btnSenhaAcessoNaoSupervisionadi: TUListButton
      Left = 0
      Top = 41
      Width = 299
      Height = 41
      Align = alTop
      Caption = 'Escolher senha para acesso n'#227'o supervisionado'
      ParentColor = True
      TabOrder = 1
      OnClick = btnSenhaAcessoNaoSupervisionadiClick
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
      FontIcon = #59182
      Detail = ' '
      Transparent = True
    end
    object btnConfigAnydesk: TUListButton
      Left = 0
      Top = 82
      Width = 299
      Height = 41
      Align = alTop
      Caption = 'Configura'#231#245'es do anydesk'
      ParentColor = True
      TabOrder = 2
      OnClick = btnConfigAnydeskClick
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
    object btnConfigAdmiAnydesk: TUListButton
      Left = 0
      Top = 123
      Width = 299
      Height = 41
      Align = alTop
      Caption = 'Configura'#231#245'es de administrador do anydesk'
      ParentColor = True
      TabOrder = 3
      OnClick = btnConfigAdmiAnydeskClick
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
      FontIcon = #59928
      Detail = ' '
      Transparent = True
    end
    object btnReiniciarServico: TUListButton
      Left = 0
      Top = 164
      Width = 299
      Height = 41
      Align = alTop
      Caption = 'Reiniciar servi'#231'os do Anydesk'
      ParentColor = True
      TabOrder = 4
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
      Top = 205
      Width = 299
      Height = 41
      Align = alTop
      Caption = 'Parar os servi'#231'os do Anydesk'
      ParentColor = True
      TabOrder = 5
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
      Top = 246
      Width = 299
      Height = 41
      Align = alTop
      Caption = 'Iniciar os servi'#231'os do Anydesk'
      ParentColor = True
      TabOrder = 6
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
      Top = 328
      Width = 299
      Height = 41
      Align = alTop
      Caption = 'Informa'#231#245'es do computador'
      ParentColor = True
      TabOrder = 7
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
    object btnExportar: TUListButton
      Left = 0
      Top = 287
      Width = 299
      Height = 41
      Align = alTop
      Caption = 'Exportar acessos'
      ParentColor = True
      TabOrder = 8
      OnClick = btnExportarClick
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
      FontIcon = #60897
      Detail = ' '
      Transparent = True
    end
  end
  object sql: TFDQuery
    AfterOpen = sqlAfterOpen
    AfterInsert = sqlAfterInsert
    Connection = DM.SqLiteConnection
    SQL.Strings = (
      'select'
      '      *'
      'from'
      '    ACESSO A'
      '  order by'
      '      A.FAVORITO ASC,'
      '      A.DATAULTIMOACESSO desc, '
      '      A.DATAALTERACAO desc, '
      '      A.DATACADASTRO desc, '
      '      A.NOME asc  ')
    Left = 352
    Top = 152
    object sqlACESSO: TStringField
      FieldName = 'ACESSO'
      Origin = 'ACESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 27
    end
    object sqlSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 100
    end
    object sqlNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object sqlDATACADASTRO: TDateTimeField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object sqlDATAALTERACAO: TDateTimeField
      FieldName = 'DATAALTERACAO'
      Origin = 'DATAALTERACAO'
    end
    object sqlDATAULTIMOACESSO: TDateTimeField
      FieldName = 'DATAULTIMOACESSO'
      Origin = 'DATAULTIMOACESSO'
    end
    object sqlFAVORITO: TStringField
      FieldName = 'FAVORITO'
      Origin = 'FAVORITO'
      FixedChar = True
      Size = 1
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
  object exportExcel: TJvgExportExcel
    Captions = fecFieldNames
    TransliterateRusToEng = False
    MaxFieldSize = 0
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -16
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    SubHeaderFont.Charset = DEFAULT_CHARSET
    SubHeaderFont.Color = clWindowText
    SubHeaderFont.Height = -13
    SubHeaderFont.Name = 'Tahoma'
    SubHeaderFont.Style = []
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    ExcelVisible = True
    CloseExcel = False
    Left = 400
    Top = 291
  end
  object save: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Arquivo Excel|*.xls'
    Left = 416
    Top = 379
  end
end
