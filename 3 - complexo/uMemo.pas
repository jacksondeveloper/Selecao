unit uMemo;

interface

uses
  uComponente, SysUtils;

type

  TMemo = class(TComponente)
  public
    procedure AdicionaComponente(aComponente: TComponente); override;
    procedure Resize(pX, pY, pAltura, PLargura: Integer);
  end;

implementation

{ TMemo }

procedure TMemo.AdicionaComponente(aComponente: TComponente);
begin
  inherited;
  raise Exception.create('Esse componente não recebe outros componentes!');
end;

procedure TMemo.Resize(pX, pY, pAltura, PLargura: Integer);
begin
  inherited;
  Self.FLargura := Trunc(PLargura * 0.50);
  Self.Faltura := Trunc(PAltura * 0.50);
  Self.FX := Trunc(pX * 0.50);
  Self.FY := Trunc(pY * 0.50);
end;

end.

