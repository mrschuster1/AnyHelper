unit uEditAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  // UCL
  UCL.Classes, UCL.Graphics, UCL.Utils, UCL.ThemeManager, UCL.IntAnimation,
  UCL.DragReorder,
  UCL.Form, UCL.CaptionBar, UCL.Panel, UCL.ProgressBar, UCL.Button, UCL.Slider,
  UCL.Text,
  UCL.Hyperlink, UCL.ListButton, UCL.QuickButton, UCL.ScrollBox, UCL.Edit,
  UCL.PopupMenu,
  UCL.CheckBox, UCL.RadioButton, UCL.HoverPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, strutils,
  Vcl.StdCtrls;

type
  TfEditAcesso = class(TuForm)
    UCaptionBar1: TUCaptionBar;
    btnClose: TUQuickButton;
    UPanel1: TUPanel;
    sql: TFDQuery;
    UPanel2: TUPanel;
    btnSalvar: TUQuickButton;
    btnCancelar: TUQuickButton;
    UPanel3: TUPanel;
    edtSenha: TUEdit;
    edtNome: TUEdit;
    edtAcesso: TUEdit;
    UPanel4: TUPanel;
    lblSenha: TUText;
    lblNome: TUText;
    lblAcesso: TUText;
    UPanel5: TUPanel;
    btnMostrarSenha: TUQuickButton;
    cbFav: TUCheckBox;
    sqlACESSO: TStringField;
    sqlSENHA: TStringField;
    sqlNOME: TStringField;
    sqlDATACADASTRO: TDateTimeField;
    sqlDATAALTERACAO: TDateTimeField;
    sqlDATAULTIMOACESSO: TDateTimeField;
    sqlFAVORITO: TStringField;
    procedure btnMostrarSenhaMouseActivate(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure btnMostrarSenhaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure sqlBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFavChange(Sender: TObject);
  private
    procedure edtChange(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditAcesso: TfEditAcesso;

implementation

{$R *.dfm}

uses uMain, uDM;

procedure TfEditAcesso.btnCancelarClick(Sender: TObject);
begin
  sql.Cancel;
  modalresult := mrCancel;
end;

procedure TfEditAcesso.btnCloseClick(Sender: TObject);
begin
  sql.Cancel;
  modalresult := mrCancel;
end;

procedure TfEditAcesso.btnMostrarSenhaMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  edtSenha.PasswordChar := #0
end;

procedure TfEditAcesso.btnMostrarSenhaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edtSenha.PasswordChar := '*'
end;

procedure TfEditAcesso.btnSalvarClick(Sender: TObject);
VAR
  QUERY: TFDQuery;
begin
  sql.Post;
  QUERY := TFDQuery.Create(self);
  QUERY.Connection := dm.SqLiteConnection;
  QUERY.sql.Add('update acesso set DATAALTERACAO= '  + 'current_timestamp' +
    ' where acesso= ' + '''' + edtAcesso.Text + '''');
  QUERY.ExecSQL;
  QUERY.Free;
  modalresult := mrok
end;

procedure TfEditAcesso.cbFavChange(Sender: TObject);
begin
  if cbFav.IsChecked then
    sql['FAVORITO'] := 'S'
  ELSE
    sql['FAVORITO'] := 'N'
end;

procedure TfEditAcesso.edtChange(Sender: TObject);
begin
  sql[replacestr((Sender as TUEdit).Name, 'edt', '')] :=
    (Sender as TUEdit).Text;
end;

procedure TfEditAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FMAIN.sql.close;
  FMAIN.sql.Open;
end;

procedure TfEditAcesso.FormShow(Sender: TObject);
begin
  sql.Edit;
  if sqlSENHA.AsString <> '' then
    edtSenha.Text := sql['SENHA'];
  if sqlNOME.AsString <> '' then
    edtNome.Text := sql['NOME'];
  if sqlACESSO.AsString <> '' then
    edtAcesso.Text := sql['ACESSO'];

end;

procedure TfEditAcesso.sqlBeforePost(DataSet: TDataSet);
begin
  sql['SENHA'] := edtSenha.Text;
  sql['NOME'] := edtNome.Text;
  sql['ACESSO'] := edtAcesso.Text;
end;

end.
