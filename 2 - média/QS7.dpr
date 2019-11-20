program QS7;

uses
  Forms,
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  uPrincipal in 'uPrincipal.pas' {fPrincipal};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.

