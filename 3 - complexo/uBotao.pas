unit uBotao;

interface

uses
  uComponente, SysUtils;

type

  TBotao = class(TComponente)
  public
    procedure AdicionaComponente(aComponente: TComponente); override;
    procedure Resize(pX, pY, pAltura, PLargura: Integer); override;
  end;

implementation

{ TBotao }

procedure TBotao.AdicionaComponente(aComponente: TComponente);
begin
  inherited;
  raise Exception.create('Esse componente não recebe outros componentes!');
end;

procedure TBotao.Resize(pX, pY, pAltura, PLargura: Integer);
begin
  inherited;
  Self.FLargura := Trunc(PLargura * 0.50);
  Self.FX := Trunc(pX * 0.50);
  Self.FY := Trunc(pY * 0.50);
end;

end.

