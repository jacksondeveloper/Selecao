unit uComponente;

interface

uses
  Classes;

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class(TComponent)
  protected
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    FComponentes: TComponenteArray;
  public
    constructor Create(pX, pY, pAltura, PLargura: Integer);
    procedure AdicionaComponente(aComponente: TComponente); virtual;
    procedure RemoveComponente(aComponente: TComponente); virtual;
    procedure Resize(pX, pY, pAltura, PLargura: Integer); virtual;
  end;

implementation

procedure TComponente.AdicionaComponente(aComponente: TComponente);
var
  lPosicao: integer;
begin
  lPosicao := Length(FComponentes) + 1;
  SetLength(Self.FComponentes, lPosicao);
  Self.FComponentes[lPosicao] := aComponente;
end;

constructor TComponente.Create(pX, pY, pAltura, PLargura: Integer);
begin
  Self.FX := pX;
  Self.FX := fX;
  Self.FAltura := pAltura;
  Self.FLargura := PLargura;
  SetLength(Self.FComponentes, 0);
end;

procedure TComponente.RemoveComponente(aComponente: TComponente);
begin    
end;
  
procedure TComponente.Resize(pX, pY, pAltura, PLargura: Integer);
begin

end;

end.

