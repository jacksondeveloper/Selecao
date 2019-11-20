unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  private
    function ExisteValor(aStr, aPesquisa: String; out aPosicao: Integer): boolean;
    function CopiarString(aStr: String; aPosicaoInicial, aTamanhoProcurado: integer): string;
    function TrocarString(aStr, aValor: String; aPosicaoInicial, aPosicaoFinal: Integer): string;
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

function TSubstitui.CopiarString(aStr: String; aPosicaoInicial, aTamanhoProcurado: integer): string;
var
  lContador: integer;
begin
  Result := '';
  for lContador := aPosicaoInicial to (aPosicaoInicial + aTamanhoProcurado) -1 do
  begin
    Result := Result + aStr[lContador + 1];
  end;
end;

function TSubstitui.ExisteValor(aStr, aPesquisa: String; out aPosicao: Integer): boolean;
var
  lContador, lTamanhoStrPesquisa, lTamanhoStrCompleta: Integer;
begin
  Result := False;
  aPosicao := 0;
  lTamanhoStrPesquisa := Length(aPesquisa);
  lTamanhoStrCompleta := Length(aStr);

  for lContador := 0 to (lTamanhoStrCompleta - 1) do
  begin
    if aPesquisa = CopiarString(aStr, lContador, lTamanhoStrPesquisa) then
    begin
      if aPosicao = 0 then
        aPosicao := lContador;
      Result := True;
    end;
  end;
end;

function TSubstitui.TrocarString(aStr, aValor: String; aPosicaoInicial, aPosicaoFinal: Integer): string;
var
  lPosicao: Integer;
begin
  Result := '';
  for lPosicao := 1 to length(aStr) do
  begin
    if aStr[lPosicao] = ' ' then
      result := result + ' '
    else if not(lPosicao in [aPosicaoInicial..aPosicaoFinal]) then
      result := result + aStr[lPosicao];

    if lPosicao = aPosicaoFinal then
      result := result + aValor;
  end;
end;

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  lPosicao: Integer;
begin
  while ExisteValor(aStr, aVelho, lPosicao) do
  begin
    aStr := TrocarString(aStr, aNovo, lPosicao, lPosicao + length(aVelho));
  end;
  Result := aStr;
end;

end.

