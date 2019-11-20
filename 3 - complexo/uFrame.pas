unit uFrame;

interface

uses
  uComponente;

type

  TFrame = class(TComponente)
  private
    procedure Resize(pX, pY, pAltura, PLargura: Integer); override;
  end;

implementation

{ TFrame }

procedure TFrame.Resize(pX, pY, pAltura, PLargura: Integer);
var
  lContador : Integer;
begin
  inherited;
  // Avisa a todos componentes no array para redimensionar quando o frame for redimencionado
  for lContador := 0 to Length(FComponentes) - 1 do
    TComponente(FComponentes[lContador]).Resize(Self.FX, Self.FAltura, Self.FAltura, Self.FLargura);
end;

end.

