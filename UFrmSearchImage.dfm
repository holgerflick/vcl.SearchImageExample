object FrmSearchImage: TFrmSearchImage
  Left = 0
  Top = 0
  Caption = 'Image Search Example'
  ClientHeight = 611
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Browser: TTMSFNCEdgeWebBrowser
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 782
    Height = 605
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 0
    Settings.EnableContextMenu = True
    Settings.EnableShowDebugConsole = True
    Settings.EnableAcceleratorKeys = True
    Settings.AllowExternalDrop = False
    Settings.UsePopupMenuAsContextMenu = False
  end
end
