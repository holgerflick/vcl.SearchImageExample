object FrmSelection: TFrmSelection
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Selected Image'
  ClientHeight = 486
  ClientWidth = 556
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    556
    486)
  TextHeight = 20
  object View: TImageEnView
    Left = 8
    Top = 8
    Width = 540
    Height = 417
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    AutoStretch = True
    AutoShrink = True
    ShowRulers = [rdHorizontal, rdVertical]
  end
  object Button1: TButton
    Left = 427
    Top = 444
    Width = 121
    Height = 34
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ImageEnViewToolbar1: TImageEnViewToolbar
    Left = 0
    Top = 0
    Width = 556
    Height = 29
    ButtonHeight = 30
    ButtonWidth = 31
    Caption = 'ImageEnViewToolbar1'
    TabOrder = 2
    ExplicitLeft = 208
    ExplicitTop = 464
    ExplicitWidth = 150
  end
end
