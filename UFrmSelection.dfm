object FrmSelection: TFrmSelection
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Selected Image'
  ClientHeight = 633
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    825
    633)
  TextHeight = 20
  object View: TImageEnView
    Left = 8
    Top = 8
    Width = 809
    Height = 577
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    AutoStretch = True
    AutoShrink = True
    ShowRulers = [rdHorizontal, rdVertical]
    ExplicitWidth = 540
    ExplicitHeight = 430
  end
  object Button1: TButton
    Left = 696
    Top = 591
    Width = 121
    Height = 34
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitLeft = 427
    ExplicitTop = 444
  end
  object ImageEnViewToolbar1: TImageEnViewToolbar
    Left = 0
    Top = 0
    Width = 825
    Height = 29
    ButtonHeight = 30
    ButtonWidth = 31
    Caption = 'ImageEnViewToolbar1'
    TabOrder = 2
    ExplicitWidth = 556
  end
end
