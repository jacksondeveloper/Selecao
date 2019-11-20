object fPrincipal: TfPrincipal
  Left = 268
  Top = 125
  BorderStyle = bsSingle
  Caption = 'Calculadora de Troco'
  ClientHeight = 385
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edValor: TEdit
    Left = 24
    Top = 40
    Width = 345
    Height = 21
    TabOrder = 0
    Text = '125,15'
  end
  object mmResultado: TMemo
    Left = 24
    Top = 104
    Width = 345
    Height = 193
    TabOrder = 1
  end
  object edCalcular: TButton
    Left = 144
    Top = 336
    Width = 97
    Height = 25
    Caption = 'Calcular Troco'
    TabOrder = 2
    OnClick = edCalcularClick
  end
end
