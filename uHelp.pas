unit uHelp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvComponentBase, JvComputerInfoEx,
  Vcl.StdCtrls, UCL.Text, UCL.Panel, UCL.Classes, UCL.QuickButton, Vcl.ExtCtrls,
  UCL.Form, UCL.ThemeManager, UCL.FontIcons,
  UCL.CaptionBar;

type
  TfHelp = class(TuForm)
    cb: TUCaptionBar;
    btnClose: TUQuickButton;
    pnlMain: TUPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fHelp: TfHelp;

implementation

{$R *.dfm}

end.
