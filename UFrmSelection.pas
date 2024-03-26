unit UFrmSelection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, hyiedefs, hyieutils, iexBitmaps,
  iesettings, iexLayers, iexRulers, iexToolbars, iexUserInteractions, imageenio,
  imageenproc, iexProcEffects, ieview, imageenview, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ComCtrls;

type
  TFrmSelection = class(TForm)
    View: TImageEnView;
    Button1: TButton;
    ImageEnViewToolbar1: TImageEnViewToolbar;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure ViewImage( AUrl: String );
  end;

implementation

{$R *.dfm}

class procedure TFrmSelection.ViewImage(AUrl: String);
begin
  var LFrm := TFrmSelection.Create( nil );
  try
    LFrm.View.IO.LoadFromURL(AUrl);
    LFrm.ShowModal;
  finally
    LFrm.Free;
  end;
end;

procedure TFrmSelection.Button1Click(Sender: TObject);
begin
  self.Close;
end;

end.
