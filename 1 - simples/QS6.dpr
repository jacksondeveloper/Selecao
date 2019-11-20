program QS6;

uses
  Forms,
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas',
  uPrincipal in 'uPrincipal.pas' {fPrincipal};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.

