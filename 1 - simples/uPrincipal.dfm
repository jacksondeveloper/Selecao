object fPrincipal: TfPrincipal
  Left = 360
  Top = 312
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 304
  ClientWidth = 439
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
    Left = 16
    Top = 8
    Width = 105
    Height = 20
    Caption = 'String Principal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 65
    Width = 87
    Height = 20
    Caption = 'String Velha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 122
    Width = 82
    Height = 20
    Caption = 'String Nova'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 179
    Width = 83
    Height = 20
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edStringPrincipal: TEdit
    Left = 16
    Top = 36
    Width = 401
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'O rato roeu a roupa do rei de roma'
  end
  object edStringVelha: TEdit
    Left = 16
    Top = 93
    Width = 401
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'ro'
  end
  object edStringNova: TEdit
    Left = 16
    Top = 150
    Width = 401
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'teste'
  end
  object edStringResultado: TEdit
    Left = 16
    Top = 208
    Width = 401
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object btSubstituir: TButton
    Left = 168
    Top = 256
    Width = 97
    Height = 25
    Caption = 'Substituir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btSubstituirClick
  end
end
