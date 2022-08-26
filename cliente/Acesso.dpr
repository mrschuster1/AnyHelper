program Acesso;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fMain},
  uInfoPC in '..\uInfoPC.pas' {fInfoPC},
  uConfig in 'uConfig.pas' {fConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
