object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 200
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '5'
  end
  object Edit2: TEdit
    Left = 200
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '10'
  end
  object Button1: TButton
    Left = 216
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
end
