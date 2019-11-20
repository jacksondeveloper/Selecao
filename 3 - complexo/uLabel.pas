unit uLabel;

interface

uses
  uComponente, SysUtils;

type

  TLabel = class(TComponente)
  public
    procedure AdicionaComponente(aComponente: TComponente); override;
    procedure Resize(pX, pY, pAltura, PLargura: Integer);
  end;

implementation

{ TLabel }

procedure TLabel.AdicionaComponente(aComponente: TComponente);
begin
  inherited;
  raise Exception.create('Esse componente não recebe outros componentes!');
end;

procedure TLabel.Resize(pX, pY, pAltura, PLargura: Integer);
begin
  inherited;
  Self.FX := Trunc(pX * 0.50);
  Self.FY := Trunc(pY * 0.50);
end;

end.

