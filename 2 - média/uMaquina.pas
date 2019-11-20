unit uMaquina;

interface

uses
  uIMaquina, Classes;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

uses uTroco;

function TMaquina.MontarTroco(aTroco: Double): TList;
var
  lValorRestante, lDivisao: Double;
  lContador: TCedula;
  lCedula: TCedula;
  lValorAbsoluto: integer;
begin
  Result := TList.Create;
  lValorAbsoluto := 0;
  lValorRestante := 0;
  lDivisao := 0;

  lValorRestante := aTroco;

  while lValorRestante > CValorCedula[ceMoeda1] do
  begin
    for lContador := Low(TCedula) to High(TCedula) do
    begin
      lDivisao := lValorRestante / CValorCedula[lContador];
      lValorAbsoluto := Trunc(lDivisao);
      if lDivisao > 0 then
      begin
        Result.Add(TTroco.create(TCedula(lContador), lValorAbsoluto));
        lValorRestante := lValorRestante - (CValorCedula[lContador] * lValorAbsoluto);
      end
      else
        Continue;
    end;
  end;
end;

end.

