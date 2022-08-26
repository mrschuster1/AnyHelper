unit uInfoPC;

interface

uses // UCL
  UCL.Classes, UCL.Graphics, UCL.Utils, UCL.ThemeManager, UCL.IntAnimation,
  UCL.DragReorder,
  UCL.Form, UCL.CaptionBar, UCL.Panel, UCL.ProgressBar, UCL.Button, UCL.Slider,
  UCL.Text,
  UCL.Hyperlink, UCL.ListButton, UCL.QuickButton, UCL.ScrollBox, UCL.Edit,
  UCL.PopupMenu,
  UCL.CheckBox, UCL.RadioButton, UCL.HoverPanel,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvInspector,
  JvComputerInfoEx, JvComponentBase, JvExControls, Vcl.StdCtrls, math;

type
  TfInfoPC = class(TUForm)
    cb: TUCaptionBar;
    btnClose: TUQuickButton;
    pnlMain: TUPanel;
    UPanel1: TUPanel;
    UText1: TUText;
    UText2: TUText;
    UText3: TUText;
    UText4: TUText;
    UText5: TUText;
    UText7: TUText;
    UText11: TUText;
    UPanel2: TUPanel;
    lblRAM: TUText;
    lblEndIP: TUText;
    lblSistemaOperacional: TUText;
    lblNomePC: TUText;
    lblNomeUsuario: TUText;
    lblDominio: TUText;
    lblProcessador: TUText;
    pc: TJvComputerInfoEx;
    procedure FormCreate(Sender: TObject);
    function ConvertBytes(Bytes: Int64): string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInfoPC: TfInfoPC;

implementation

{$R *.dfm}

function TfInfoPC.ConvertBytes(Bytes: Int64): string;
const
  Description: Array [0 .. 8] of string = ('Bytes', 'KB', 'MB', 'GB', 'TB',
    'PB', 'EB', 'ZB', 'YB');
var
  i: Integer;
begin
  i := 0;

  while Bytes > Power(1024, i + 1) do
    Inc(i);

  Result := FormatFloat('###0.##', Bytes / Power(1024, i)) + #32 +
    Description[i];
end;

procedure TfInfoPC.FormCreate(Sender: TObject);
begin
  lblSistemaOperacional.Caption := pc.os.ProductName;
  lblNomePC.Caption := pc.Identification.LocalComputerName;
  lblNomeUsuario.Caption := pc.Identification.LocalUserName;
  lblDominio.Caption := pc.Identification.LocalWorkgroup;
  lblProcessador.Caption := pc.CPU.Name;
  lblRAM.Caption := ConvertBytes(pc.Memory.TotalPhysicalMemory);
  lblEndIP.Caption := pc.Identification.IPAddress
end;

end.
