unit uMain;

interface

uses

  // UCL
  UCL.Classes, UCL.Graphics, UCL.Utils, UCL.ThemeManager, UCL.IntAnimation,
  UCL.DragReorder,
  UCL.Form, UCL.CaptionBar, UCL.Panel, UCL.ProgressBar, UCL.Button, UCL.Slider,
  UCL.Text,
  UCL.Hyperlink, UCL.ListButton, UCL.QuickButton, UCL.ScrollBox, UCL.Edit,
  UCL.PopupMenu,
  UCL.CheckBox, UCL.RadioButton, UCL.HoverPanel,

  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ShlObj, ActiveX, ComObj,
  Registry, FileCtrl,
  Vcl.ExtCtrls, UCL.FontIcons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, shellapi,
  StrUtils, System.Actions, Vcl.ActnList, scControls,
  scModernControls, IniFiles, DateUtils, JvComponentBase, JvgExportComponents;

type
  TfMain = class(TuForm)
    pnlMain: TUPanel;
    boxList: TUScrollBox;
    sql: TFDQuery;
    ActionList1: TActionList;
    actClose: TAction;
    cb: TUCaptionBar;
    btnClose: TUQuickButton;
    btnMenu: TUQuickButton;
    btnMax: TUQuickButton;
    UQuickButton1: TUQuickButton;
    btnTelaCheia: TUQuickButton;
    pnlPesquisa: TUPanel;
    btnConectarAcesso: TUQuickButton;
    pnlListaAcessos: TUPanel;
    lblListaAcesso: TUText;
    lblAlias: TUText;
    pnlSearch: TUPanel;
    edtPesquisa: TUEdit;
    sqlACESSO: TStringField;
    sqlSENHA: TStringField;
    sqlNOME: TStringField;
    sqlDATACADASTRO: TDateTimeField;
    sqlDATAALTERACAO: TDateTimeField;
    sqlDATAULTIMOACESSO: TDateTimeField;
    sqlFAVORITO: TStringField;
    lblSemAcessos: TUText;
    sv: TscModernSplitView;
    btnSenha: TUListButton;
    btnSenhaAcessoNaoSupervisionadi: TUListButton;
    btnConfigAnydesk: TUListButton;
    btnConfigAdmiAnydesk: TUListButton;
    btnReiniciarServico: TUListButton;
    btnPararServico: TUListButton;
    btnIniciarServicoAnydesk: TUListButton;
    btnInfoPC: TUListButton;
    exportExcel: TJvgExportExcel;
    btnExportar: TUListButton;
    save: TSaveDialog;
    btnHelp: TUQuickButton;
    procedure FormCreate(Sender: TObject);
    // function GetDesktopFolder: string;
    procedure sqlAfterOpen(DataSet: TDataSet);
    procedure edtPesquisaChange(Sender: TObject);
    procedure btnConectarAcessoClick(Sender: TObject);
    PROCEDURE itemClick(item: TObject);
    procedure criarAtalho(FileName, Parameters, InitialDir, ShortcutName,
      ShortcutFolder: String);
    procedure itemAtalho(item: TObject; index: integer);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actCloseExecute(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure boxListClick(Sender: TObject);
    procedure btnSenhaClick(Sender: TObject);
    procedure btnSenhaAcessoNaoSupervisionadiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    FUNCTION retornoCMD(CommandLine: string; Work: string = 'C:\'): string;
    procedure btnConfigAnydeskClick(Sender: TObject);
    procedure btnConfigAdmiAnydeskClick(Sender: TObject);
    procedure btnReiniciarServicoClick(Sender: TObject);
    procedure btnPararServicoClick(Sender: TObject);
    procedure btnIniciarServicoAnydeskClick(Sender: TObject);
    procedure btnTelaCheiaClick(Sender: TObject);
    procedure btnInfoPCClick(Sender: TObject);
    procedure sqlAfterInsert(DataSet: TDataSet);
    procedure btnExportarClick(Sender: TObject);
  private
    procedure Acessar(acesso: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

uses uEditAcesso, uInfoPC, uDM;

procedure TfMain.itemAtalho(item: TObject; index: integer);
var
  query: TFDQuery;
  pasta, acesso, fav: string;
begin
  acesso := ((item as TUHoverPanel).Parent as TUListButton).Caption;
  pasta := extractfilepath('C:\Program Files (x86)\AnyDesk\AnyDesk.exe');
  if index = 0 then
    criarAtalho('C:\Program Files (x86)\AnyDesk\AnyDesk.exe', acesso, pasta,
      inputbox('Nome do atalho', 'Informe o nome do atalho:', acesso),
      extractfilepath(pasta));
  if index = 1 then
  begin
    query := TFDQuery.Create(self);
    query.Connection := dm.SqLiteConnection;
    query.sql.Add('delete from acesso where acesso= ' + '''' + acesso + '''');
    query.ExecSQL;
    query.Free;
    sql.Close;
    sql.Open;
  end;
  if index = 2 then
  begin
    fEditAcesso := tfeditacesso.Create(application);
    fEditAcesso.sql.Open('select * from acesso where acesso= ' + '''' +
      acesso + '''');
    fEditAcesso.Showmodal
  end;
  if index = 3 then
    shellexecute(Handle, '', PChar('AnyDesk.exe'),
      PChar(acesso + ' --file-transfer'), 'C:\Program Files (x86)\AnyDesk\',
      SW_SHOWNORMAL);
  if index = 4 then
  begin
    if True then
      if rightstr((item as TUHoverPanel).Icons, 1) = '' then
        fav := 'S'
      ELSE
        fav := 'N';
    query := TFDQuery.Create(self);
    query.Connection := dm.SqLiteConnection;
    query.sql.Add('update acesso set favorito= ' + '''' + fav + '''' +
      ' where acesso= ' + '''' + acesso + '''');
    query.ExecSQL;
    query.Free;
    sql.Close;
    sql.Open;
  end;
end;

procedure TfMain.itemClick(item: TObject);
begin
  Acessar((item as TUListButton).Caption)
end;

FUNCTION TfMain.retornoCMD(CommandLine: string; Work: string = 'C:\'): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array [0 .. 255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SA do
  begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine), nil, nil,
      True, 0, nil, PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            Result := Result + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;

procedure TfMain.sqlAfterInsert(DataSet: TDataSet);
begin
  if dm.senhaPadrao <> null then
    sql['SENHA'] := dm.senhaPadrao
end;

procedure TfMain.sqlAfterOpen(DataSet: TDataSet);
var
  item: TUListButton;
  botao: TUHoverPanel;
  cor: tcolor;
  q: TFDQuery;
begin
  //
  q := TFDQuery.Create(self);
  q.Connection := dm.SqLiteConnection;
  q.Open('select * from acesso');
  //
  sql.First;
  boxList.ClearBox;
  if sql.RecordCount = 0 then
  begin
    lblSemAcessos.Visible := True;
    lblSemAcessos.Caption :=
      'Você não possui conexões cadastradas. Use a caixa de edição acima para conectar-se a um computador remoto e clique no botão ao lado dela ou aperte a tecla Enter no teclado para conectar-se.';
    if q.RecordCount > 0 then
      lblSemAcessos.Caption :=
        'Você não possui nenhum acesso correspondente à esta pesquisa.'
  end
  else
  begin
    lblSemAcessos.Visible := false;
    while not sql.Eof do
    begin
      item := TUListButton.Create(boxList);
      item.Align := altop;
      item.Caption := sql['ACESSO'];
      item.Font.Size := 16;
      item.Font.Name := 'Segoe UI';
      item.FontIcon := '';
      item.IconFont.Size := 20;
      item.ImageSpace := 60;
      item.IconFont.Quality := fqClearTypeNatural;
      item.Font.Quality := fqClearTypeNatural;
      item.Height := 55;
      if sqlNOME.AsString <> '' then
      BEGIN
        item.ListStyle := lsBOTTOMDetail;
        item.Detail := sql['NOME']
      END
      ELSE
      BEGIN
        item.ListStyle := lsRightDetail;
        item.Detail := '';
      END;
      item.SelectMode := smSelect;
      item.Parent := boxList;
      item.OnClick := itemClick;
      botao := TUHoverPanel.Create(item);
      botao.ClipTo(item);
      botao.ShowHint := True;
      botao.IconClick := itemAtalho;
      if sql['FAVORITO'] = 'N' then
        botao.Icons := ''
      ELSE
        botao.Icons := '';
      botao.AlignWithMargins := True;
      botao.Margins.Right := 10;
      botao.Font.Size := 20;
      botao.Font.Color := cor;
      botao.Font.Quality := fqClearTypeNatural;
      botao.ParentColor := True;
      botao.Width := 178;
      if ThemeManager.Theme = utdark then
        botao.Font.Color := clwhite
      else
        botao.Font.Color := clblack;
      sql.Next
    end
  end;
end;

procedure TfMain.btnTelaCheiaClick(Sender: TObject);
begin
  FullScreen := not FullScreen;
  if FullScreen then
    btnTelaCheia.Caption := UF_EXIT_FULL_SCREEN
  else
    btnTelaCheia.Caption := UF_FULL_SCREEN;
end;

procedure TfMain.actCloseExecute(Sender: TObject);
begin
  Close
end;

procedure TfMain.boxListClick(Sender: TObject);
begin
  sv.Close
end;

procedure TfMain.btnConectarAcessoClick(Sender: TObject);
var
  acesso: string;
begin
  if edtPesquisa.Text <> '' then
    acesso := edtPesquisa.Text;
  if not sql.Locate('ACESSO', acesso) then
  BEGIN
    sql.Insert;
    sql['ACESSO'] := ReplaceStr(acesso, ' ', '');
    sql.Post;
    fEditAcesso := tfeditacesso.Create(application);
    fEditAcesso.sql.Open('select * from acesso where acesso= ' + '''' +
      acesso + '''');
    fEditAcesso.UCaptionBar1.Caption := '   Novo acesso';
    fEditAcesso.edtSenha.Text := dm.senhaPadrao;
    fEditAcesso.Showmodal
  END;
  if fEditAcesso.ModalResult = mrok then
    Acessar(ReplaceStr(acesso, ' ', ''))
end;

procedure TfMain.btnConfigAdmiAnydeskClick(Sender: TObject);
begin
  shellexecute(Handle, '', PChar('AnyDesk.exe'), '--admin-settings',
    'C:\Program Files (x86)\AnyDesk\', SW_SHOWNORMAL);
end;

procedure TfMain.btnConfigAnydeskClick(Sender: TObject);
begin
  shellexecute(Handle, '', PChar('AnyDesk.exe'), '--settings',
    'C:\Program Files (x86)\AnyDesk\', SW_SHOWNORMAL);
end;

procedure TfMain.btnExportarClick(Sender: TObject);
var
  q: TFDQuery;
begin
  q := TFDQuery.Create(self);
  q.Connection := dm.SqLiteConnection;
  q.Open('SELECT a.acesso, a.nome, a.senha FROM acesso a');
  if not q.IsEmpty then
  begin
    exportExcel.DataSet := q;
    save.Filter := 'Arquivo do Microsoft Excel|*.xls';
    save.DefaultExt := 'xls';
    save.FilterIndex := 1;
    if save.Execute then
    begin
      exportExcel.SaveToFileName := save.FileName;
      exportExcel.Execute;
      showMessage('Exportação executada com sucesso.');
    end;
  end;
  q.Free;
end;

procedure TfMain.btnInfoPCClick(Sender: TObject);
begin
  finfopc := tfinfopc.Create(self);
  finfopc.Showmodal
end;

procedure TfMain.btnIniciarServicoAnydeskClick(Sender: TObject);
begin
  shellexecute(Handle, '', PChar('AnyDesk.exe'), '--start',
    'C:\Program Files (x86)\AnyDesk\', SW_SHOWNORMAL);

end;

procedure TfMain.btnMenuClick(Sender: TObject);
begin
  sv.Opened := not sv.Opened
end;

procedure TfMain.btnPararServicoClick(Sender: TObject);
begin
  shellexecute(Handle, '', PChar('AnyDesk.exe'), '--stop-service',
    'C:\Program Files (x86)\AnyDesk\', SW_SHOWNORMAL);

end;

procedure TfMain.btnReiniciarServicoClick(Sender: TObject);
begin

  shellexecute(Handle, '', PChar('AnyDesk.exe'), '--restart-service',
    'C:\Program Files (x86)\AnyDesk\', SW_SHOWNORMAL);
end;

procedure TfMain.btnSenhaAcessoNaoSupervisionadiClick(Sender: TObject);
var
  ini: tinifile;
begin
  try
    ini := tinifile.Create(extractfilepath(application.ExeName) +
      ReplaceStr(extractfilename(application.ExeName), '.exe', '') + '.ini');
    ini.WriteString('CONEXAO', 'SenhaAcessoNaoSupervisionado',
      inputbox('Senha para acesso não supervisionado', 'Informe a senha:',
      dm.senhaAcessoNaoSupervisionado))
  finally
    ini.Free
  end;

end;

procedure TfMain.btnSenhaClick(Sender: TObject);
var
  ini: tinifile;
begin
  try
    ini := tinifile.Create(extractfilepath(application.ExeName) +
      ReplaceStr(extractfilename(application.ExeName), '.exe', '') + '.ini');
    ini.WriteString('CONEXAO', 'SENHAPADRAO', inputbox('Senha padrão',
      'Informe a senha padrão:', dm.senhaPadrao))
  finally
    ini.Free
  end;
end;

procedure TfMain.criarAtalho(FileName, Parameters, InitialDir, ShortcutName,
  ShortcutFolder: String);
var
  MyObject: IUnknown;
  MySLink: IShellLink;
  MyPFile: IPersistFile;
  Directory: String;
  WFileName: WideString;
  MyReg: TRegIniFile;
begin
  MyObject := CreateComObject(CLSID_ShellLink);
  MySLink := MyObject as IShellLink;
  MyPFile := MyObject as IPersistFile;
  with MySLink do
  begin
    SetArguments(PChar(Parameters));
    SetPath(PChar(FileName));
    SetWorkingDirectory(PChar(InitialDir));
  end;
  MyReg := TRegIniFile.Create
    ('Software\\MicroSoft\\Windows\\CurrentVersion\\Explorer');
  Directory := MyReg.ReadString('Shell Folders', 'Desktop', '');
  WFileName := Directory + '\\' + ShortcutName + '.lnk';
  MyPFile.save(PWChar(WFileName), false);
  MyReg.Free;
end;

procedure TfMain.Acessar(acesso: string);
VAR
  query: TFDQuery;
begin

  WinExec(pansichar('echo ' + dm.senhaPadrao), SW_SHOWNORMAL);
  // shellexecute(Handle, '', PChar('AnyDesk.exe'), PChar('echo ' + senhaPadrao),
  // 'C:\Program Files (x86)\AnyDesk\', SW_SHOWNORMAL);
  shellexecute(Handle, '', PChar('AnyDesk.exe'),
    PChar(acesso + ' --with-password'), 'C:\Program Files (x86)\AnyDesk\',
    SW_SHOWNORMAL);
  sql.Close;
  sql.Open;
  edtPesquisaChange(self);

  query := TFDQuery.Create(self);
  query.Connection := dm.SqLiteConnection;
  query.sql.Add('update acesso set DATAULTIMOACESSO= ' + 'current_timestamp' +
    ' where acesso= ' + '''' + acesso + '''');
  query.ExecSQL;
  query.Free;
end;

procedure TfMain.edtPesquisaChange(Sender: TObject);
begin
  edtPesquisa.Text := ReplaceStr(edtPesquisa.Text, ' ', '');
  sql.Filtered := false;
  sql.Filter := 'acesso like ' + '''' + '%' + edtPesquisa.Text + '%' + '''';
  // sql.Filter := 'acesso containing ' + quotedstr(edtPesquisa.Text);
  sql.Filtered := True;
  sqlAfterOpen(sql)
end;

procedure TfMain.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnConectarAcessoClick(self)
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  criarAtalho(application.ExeName, '', extractfilepath(application.ExeName),
    'Gerenciador de acessos', extractfilepath(application.ExeName));
  sv.LightBorderColor := ThemeManager.AccentColor;
  sv.ShadowBorderColor := ThemeManager.AccentColor;

  // shellexecute(Handle, '', PChar('AnyDesk.exe'), '--start',
  // 'C:\Program Files (x86)\AnyDesk\', SW_SHOWNORMAL);
  lblAlias.Caption := retornoCMD('ANYDESK.EXE --get-alias',
    'C:\Program Files (x86)\AnyDesk\') + ' (' +
    retornoCMD('ANYDESK.EXE --get-id', 'C:\Program Files (x86)\AnyDesk\') + ')';
  cb.Caption := 'Status: ' + uppercase(retornoCMD('ANYDESK.EXE --get-status',
    'C:\Program Files (x86)\AnyDesk\')) + '   Versão: ' +
    retornoCMD('ANYDESK.EXE --version', 'C:\Program Files (x86)\AnyDesk\');

end;

procedure TfMain.FormShow(Sender: TObject);
begin
  sql.Open;
end;

end.
