unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfPrincipal = class(TForm)
    edStringPrincipal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edStringVelha: TEdit;
    Label3: TLabel;
    edStringNova: TEdit;
    Label4: TLabel;
    edStringResultado: TEdit;
    btSubstituir: TButton;
    procedure btSubstituirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses uISubstitui, uSubstitui;


{$R *.dfm}

procedure TfPrincipal.btSubstituirClick(Sender: TObject);
var
  fSubistituir: ISubstitui;
begin
  fSubistituir := TSubstitui.Create; // implementa interface então não precisa freeandnil
  
  edStringResultado.Text := fSubistituir.Substituir(edStringPrincipal.Text, edStringVelha.Text, edStringNova.Text);
end;

end.
