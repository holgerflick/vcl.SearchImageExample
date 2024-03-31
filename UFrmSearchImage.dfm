object FrmSearchImage: TFrmSearchImage
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Image Search Example'
  ClientHeight = 623
  ClientWidth = 947
  Color = clBtnFace
  Constraints.MinWidth = 430
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Browser: TTMSFNCEdgeWebBrowser
    Left = 0
    Top = 0
    Width = 947
    Height = 623
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 0
    Settings.EnableContextMenu = True
    Settings.EnableShowDebugConsole = True
    Settings.EnableAcceleratorKeys = True
    Settings.AllowExternalDrop = False
    Settings.UsePopupMenuAsContextMenu = False
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 782
    ExplicitHeight = 605
  end
end
