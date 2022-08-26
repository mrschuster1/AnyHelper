unit uConfig;

interface

uses // UCL
  UCL.Classes, UCL.Graphics, UCL.Utils, UCL.ThemeManager, UCL.IntAnimation,
  UCL.DragReorder,
  UCL.Form, UCL.CaptionBar, UCL.Panel, UCL.ProgressBar, UCL.Button, UCL.Slider,
  UCL.Text,
  UCL.Hyperlink, UCL.ListButton, UCL.QuickButton, UCL.ScrollBox, UCL.Edit,
  UCL.PopupMenu,
  UCL.CheckBox, UCL.RadioButton, UCL.HoverPanel,
  // vcl
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, inifiles,
  strutils, System.Actions, Vcl.ActnList;

type
  TfConfig = class(TuForm)
    cb: TUCaptionBar;
    btnClose: TUQuickButton;
    UPanel1: TUPanel;
    UPanel3: TUPanel;
    edtTerminal: TUEdit;
    edtEmpresa: TUEdit;
    UPanel4: TUPanel;
    lblTerminal: TUText;
    lblEmpresa: TUText;
    UPanel5: TUPanel;
    UPanel2: TUPanel;
    btnSalvar: TUQuickButton;
    btnCancelar: TUQuickButton;
    ActionList1: TActionList;
    actClose: TAction;
    lblWhatsapp: TUText;
    edtWhatsapp: TUEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConfig: TfConfig;

implementation

{$R *.dfm}

procedure TfConfig.actCloseExecute(Sender: TObject);
begin
  CLOSE
end;

procedure TfConfig.btnCancelarClick(Sender: TObject);
begin
  CLOSE
end;

procedure TfConfig.btnSalvarClick(Sender: TObject);
var
  ini: tinifile;
begin // INI
  try
    ini := tinifile.Create(extractfilepath(Application.ExeName) +
      ReplaceStr(extractfilename(Application.ExeName), '.exe', '') + '.ini');
    ini.WRITESTRING('PARAMETROS', 'EMPRESA', edtEmpresa.Text);
    ini.WRITESTRING('PARAMETROS', 'TERMINAL', edtTerminal.Text);
    ini.WRITESTRING('PARAMETROS', 'WHATSAPP', edtWhatsapp.Text);
  finally
    ini.Free;
    CLOSE
  end;
end;

procedure TfConfig.FormCreate(Sender: TObject);
var
  ini: tinifile;
begin // INI
  try
    ini := tinifile.Create(extractfilepath(Application.ExeName) +
      ReplaceStr(extractfilename(Application.ExeName), '.exe', '') + '.ini');
    edtEmpresa.Text := ini.ReadString('PARAMETROS', 'EMPRESA', 'EMPRESA');
    edtTerminal.Text := ini.ReadString('PARAMETROS', 'TERMINAL', 'TERMINAL');
    edtWhatsapp.Text := ini.ReadString('PARAMETROS', 'WHATSAPP', '9384027526');
  finally
    ini.Free
  end;
end;

end.
