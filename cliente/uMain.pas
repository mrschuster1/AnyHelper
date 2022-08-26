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
  scModernControls, IniFiles, DateUtils, TlHelp32, scGPControls, Vcl.Menus,
  clipbrd, Cloud.CloudAPI;

type
  TfMain = class(TuForm)
    pnlMain: TUPanel;
    cb: TUCaptionBar;
    btnClose: TUQuickButton;
    btnMenu: TUQuickButton;
    UQuickButton1: TUQuickButton;
    btnTelaCheia: TUQuickButton;
    ActionList1: TActionList;
    actClose: TAction;
    lblAlias: TUText;
    load: TscGPActivityBar;
    sv: TscModernSplitView;
    btnReiniciarServico: TUListButton;
    btnPararServico: TUListButton;
    btnIniciarServicoAnydesk: TUListButton;
    btnInfoPC: TUListButton;
    tmShowForm: TTimer;
    pp: TUPopupMenu;
    Copiaracesso1: TMenuItem;
    Enviaracessoviawhatsapp1: TMenuItem;
    btnConfig: TUListButton;
    procedure btnInfoPCClick(Sender: TObject);
    procedure btnReiniciarServicoClick(Sender: TObject);
    procedure btnPararServicoClick(Sender: TObject);
    procedure btnIniciarServicoAnydeskClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure btnTelaCheiaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure criarAtalho(FileName, Parameters, InitialDir, ShortcutName,
      ShortcutFolder: String);
    FUNCTION retornoCMD(CommandLine: string; Work: string = 'C:\'): string;
    function ProcessExists(exeFileName: string): Boolean;
    procedure Delay(dwMilliseconds: Longint);
    procedure tmShowFormTimer(Sender: TObject);
    procedure lblAliasClick(Sender: TObject);
    procedure ppItemClick(Sender: TObject; Index: Integer);
    procedure btnConfigClick(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;
  senhaAcessoNaoSupervisionado, ID, Alias, IDAlias, status, versao,
    StatusVersao, empresa, terminal, WHATSAPP: string;

implementation

{$R *.dfm}

uses uInfoPC, uConfig;

procedure TfMain.actCloseExecute(Sender: TObject);
begin
  CLOSE
end;

procedure TfMain.btnConfigClick(Sender: TObject);
begin
  fconfig := tfconfig.Create(self);
  fconfig.Showmodal;
end;

procedure TfMain.btnInfoPCClick(Sender: TObject);
begin
  finfopc := tfinfopc.Create(self);
  finfopc.Showmodal;
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

procedure TfMain.btnTelaCheiaClick(Sender: TObject);
begin
  FullScreen := not FullScreen;
  if FullScreen then
    btnTelaCheia.Caption := UF_EXIT_FULL_SCREEN
  else
    btnTelaCheia.Caption := UF_FULL_SCREEN;
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
  MyPFile.Save(PWChar(WFileName), False);
  MyReg.Free;
end;

procedure TfMain.Delay(dwMilliseconds: Longint);
var
  iStart, iStop: DWORD;
begin
  iStart := GetTickCount;
  repeat
    iStop := GetTickCount;
    Application.ProcessMessages;
    Sleep(1);
  until (iStop - iStart) >= dwMilliseconds;
end;

procedure TfMain.FormCreate(Sender: TObject);
var
  ini: tinifile;
begin
  criarAtalho(Application.ExeName, '', extractfilepath(Application.ExeName),
    'Acesso', extractfilepath(Application.ExeName));
  if not ProcessExists('anydesk.exe') then
    shellexecute(Handle, '', PChar('AnyDesk.exe'), '--start',
      'C:\Program Files (x86)\AnyDesk\', SW_SHOWNORMAL);
  sv.LightBorderColor := ThemeManager.AccentColor;
  sv.ShadowBorderColor := ThemeManager.AccentColor;
  // INI
  try
    ini := tinifile.Create(extractfilepath(Application.ExeName) +
      ReplaceStr(extractfilename(Application.ExeName), '.exe', '') + '.ini');
    senhaAcessoNaoSupervisionado := ini.ReadString('PARAMETROS',
      'SenhaAcessoNaoSupervisionado', 'eco123456');
    empresa := ini.ReadString('PARAMETROS', 'EMPRESA', 'EMPRESA');
    terminal := ini.ReadString('PARAMETROS', 'TERMINAL', 'TERMINAL');
    WHATSAPP := ini.ReadString('PARAMETROS', 'WHATSAPP', '9384027526');
  finally
    ini.Free
  end;
  ID := retornoCMD('ANYDESK.EXE --get-id', 'C:\Program Files (x86)\AnyDesk\');
  Alias := retornoCMD('ANYDESK.EXE --get-alias',
    'C:\Program Files (x86)\AnyDesk\');
  status := 'Status: ' + uppercase(retornoCMD('ANYDESK.EXE --get-status',
    'C:\Program Files (x86)\AnyDesk\'));
  versao := '   Versão: ' + retornoCMD('ANYDESK.EXE --version',
    'C:\Program Files (x86)\AnyDesk\');
  IDAlias := Alias + ' (' + ID + ')';
  StatusVersao := status + versao
end;

procedure TfMain.FormResize(Sender: TObject);
begin
if windowstate=wsmaximized then
         windowstate:=wsnormal
end;

procedure TfMain.lblAliasClick(Sender: TObject);
begin
  pp.PopupAtMouse
end;

procedure TfMain.ppItemClick(Sender: TObject; Index: Integer);
var
  AliasID, link, NUMERO: string;
  ini: tinifile;
begin
  setfocus;
  if Alias <> '' then
    AliasID := Alias
  else
    AliasID := ID;
  case index of
    0:
      clipboard.AsText := AliasID;
    1:
      begin // INI
        try
          ini := tinifile.Create(extractfilepath(Application.ExeName) +
            ReplaceStr(extractfilename(Application.ExeName), '.exe', '')
            + '.ini');
          NUMERO := ini.ReadString('PARAMETROS', 'WHATSAPP', '9384027526');
        finally
          ini.Free
        end;
        link := 'https://api.whatsapp.com/send?phone=' + '55' + NUMERO +
          '&text=' +
          PChar(URLEncode(AliasID + slinebreak +
          'Olá, este é o acesso da empresa ' + empresa + ', do terminal ' +
          terminal + '.'));
        shellexecute(Handle, 'open', PChar(link), '', '', 1);
      end;
  end;
end;

function TfMain.ProcessExists(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((uppercase(extractfilename(FProcessEntry32.szExeFile))
      = uppercase(exeFileName)) or (uppercase(FProcessEntry32.szExeFile)
      = uppercase(exeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function TfMain.retornoCMD(CommandLine, Work: string): string;
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

procedure TfMain.tmShowFormTimer(Sender: TObject);
begin
  tmShowForm.Enabled := False;
  sv.Opened := False;
  Application.ProcessMessages;
  load.Show;
  load.Activate;
  lblAlias.Caption := 'Iniciando Anydesk';
  Delay(100);
  lblAlias.Caption := 'Obtendo código de acesso';
  Delay(200);
  lblAlias.Caption := 'Obtendo dados de conexão e versão';
  Delay(200);
  lblAlias.Caption := IDAlias;
  cb.Caption := StatusVersao;
  Delay(200);
  load.Deactivate;
  load.Hide;
end;

end.
