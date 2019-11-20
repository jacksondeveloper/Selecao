unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, TypInfo, StdCtrls;

type
  TfPrincipal = class(TForm)
    edValor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    mmResultado: TMemo;
    edCalcular: TButton;
    procedure edCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses uIMaquina, uMaquina, uTroco;

{$R *.dfm}

procedure TfPrincipal.edCalcularClick(Sender: TObject);
var
  Maquina: IMaquina;
  Contador, EnumQuantidade: integer;
  Resultado: TList;
  EnumStr: string;
begin
  mmResultado.Lines.Clear;
  Maquina := TMaquina.Create;
  Resultado := Maquina.MontarTroco(StrToFloatDef(edValor.Text, 0));
  try
    if Assigned(Resultado) then
      if Resultado.Count > 0 then
      begin
        for Contador := 0 to Pred(Resultado.Count) do
        begin
          EnumStr := GetEnumName(TypeInfo(TCedula), Integer(TTroco(Resultado[Contador]).Tipo));
          EnumQuantidade := TTroco(Resultado[Contador]).Quantidade;

          if EnumQuantidade > 0 then
            mmResultado.Lines.add('Nota: ' + EnumStr + ' - Qtde: ' + inttostr(EnumQuantidade));
        end;

        // Removendo objetos da memoria
        for Contador := 0 to Pred(Resultado.Count) do
          TTroco(Resultado[Contador]).Free;
      end;
  finally
    FreeAndNil(Resultado);
  end;
end;

end.
