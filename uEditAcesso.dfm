object fEditAcesso: TfEditAcesso
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Editar acesso'
  ClientHeight = 211
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object UCaptionBar1: TUCaptionBar
    Left = 0
    Top = 0
    Width = 457
    Height = 25
    Caption = '   Editar acesso'
    Color = 3618764
    TabOrder = 0
    CustomBackColor.Enabled = True
    CustomBackColor.Color = 3618764
    CustomBackColor.LightColor = 3618764
    CustomBackColor.DarkColor = 3618764
    object btnClose: TUQuickButton
      Left = 410
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
      OnClick = btnCloseClick
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      ButtonStyle = qbsQuit
      Caption = #57610
      ExplicitLeft = 400
    end
  end
  object UPanel1: TUPanel
    Left = 0
    Top = 25
    Width = 457
    Height = 143
    Align = alClient
    Color = 15132390
    showcaption = True
    TabOrder = 1
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15132390
    CustomBackColor.LightColor = 15132390
    CustomBackColor.DarkColor = 2039583
    object UPanel3: TUPanel
      Left = 94
      Top = 0
      Width = 324
      Height = 143
      Align = alClient
      Color = 15132390
      showcaption = True
      TabOrder = 0
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
      object edtSenha: TUEdit
        AlignWithMargins = True
        Left = 10
        Top = 112
        Width = 314
        Height = 28
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 13
        Align = alTop
        Color = clWhite
        PasswordChar = '*'
        TabOrder = 2
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
      object edtNome: TUEdit
        AlignWithMargins = True
        Left = 10
        Top = 61
        Width = 314
        Height = 28
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 13
        Align = alTop
        Color = clWhite
        TabOrder = 1
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
      object edtAcesso: TUEdit
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 314
        Height = 28
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 13
        Align = alTop
        Color = clWhite
        TabOrder = 0
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
    object UPanel4: TUPanel
      Left = 0
      Top = 0
      Width = 94
      Height = 143
      Align = alLeft
      Color = 15132390
      showcaption = True
      TabOrder = 1
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
      object lblSenha: TUText
        AlignWithMargins = True
        Left = 3
        Top = 112
        Width = 88
        Height = 28
        Margins.Top = 10
        Margins.Bottom = 13
        Align = alTop
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Senha:'
        Layout = tlCenter
        ExplicitTop = 116
      end
      object lblNome: TUText
        AlignWithMargins = True
        Left = 3
        Top = 61
        Width = 88
        Height = 28
        Margins.Top = 10
        Margins.Bottom = 13
        Align = alTop
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nome:'
        Layout = tlCenter
        ExplicitTop = 63
      end
      object lblAcesso: TUText
        AlignWithMargins = True
        Left = 3
        Top = 10
        Width = 88
        Height = 28
        Margins.Top = 10
        Margins.Bottom = 13
        Align = alTop
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Acesso:'
        Layout = tlCenter
      end
    end
    object UPanel5: TUPanel
      Left = 418
      Top = 0
      Width = 39
      Height = 143
      Align = alRight
      Color = 15132390
      showcaption = True
      TabOrder = 2
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
      object btnMostrarSenha: TUQuickButton
        AlignWithMargins = True
        Left = 0
        Top = 112
        Width = 39
        Height = 28
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe MDL2 Assets'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
        OnMouseActivate = btnMostrarSenhaMouseActivate
        OnMouseUp = btnMostrarSenhaMouseUp
        CustomBackColor.Enabled = False
        CustomBackColor.Color = clBlack
        CustomBackColor.LightColor = 13619151
        CustomBackColor.DarkColor = 3947580
        Caption = #59536
        ExplicitTop = 109
      end
    end
  end
  object UPanel2: TUPanel
    Left = 0
    Top = 168
    Width = 457
    Height = 43
    Align = alBottom
    Color = 15132390
    showcaption = True
    TabOrder = 2
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15132390
    CustomBackColor.LightColor = 15132390
    CustomBackColor.DarkColor = 2039583
    object btnSalvar: TUQuickButton
      Left = 367
      Top = 0
      Height = 43
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      OnClick = btnSalvarClick
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      Caption = #57345
      ExplicitTop = 6
    end
    object btnCancelar: TUQuickButton
      Left = 412
      Top = 0
      Height = 43
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      OnClick = btnCancelarClick
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      Caption = #59153
      ExplicitLeft = 418
      ExplicitTop = 3
    end
    object cbFav: TUCheckBox
      Left = 0
      Top = 0
      Width = 105
      Height = 43
      Align = alLeft
      OnClick = cbFavChange
      IconFont.Charset = DEFAULT_CHARSET
      IconFont.Color = clWindowText
      IconFont.Height = -20
      IconFont.Name = 'Segoe MDL2 Assets'
      IconFont.Style = []
      OnChange = cbFavChange
      Caption = 'Favorito'
    end
  end
  object sql: TFDQuery
    BeforePost = sqlBeforePost
    Connection = DM.SqLiteConnection
    SQL.Strings = (
      'select * from acesso')
    Left = 424
    Top = 32
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
end