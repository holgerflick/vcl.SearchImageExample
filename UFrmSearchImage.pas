unit UFrmSearchImage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCloudImage,
  Vcl.ExtCtrls, VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser,
  VCL.TMSFNCEdgeWebBrowser, UWebAppLoader;

type
  TFrmSearchImage = class(TForm)
    Browser: TTMSFNCEdgeWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
    FWebAppLoader: TWebAppLoader;

    procedure OnMessage(AMessage: String);

  public
    { Public declarations }
  end;

var
  FrmSearchImage: TFrmSearchImage;

implementation
uses
  IOUtils
  ;

{$R *.dfm}

procedure TFrmSearchImage.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  var LDirectory :=
    TPath.Combine(
      TPath.GetAppPath,
      'web'
     );

  FWebAppLoader := TWebAppLoader.Create(
    self.Browser, 'images', LDirectory );
  FWebAppLoader.OnMessage := self.OnMessage;
end;

procedure TFrmSearchImage.FormDestroy(Sender: TObject);
begin
  FWebAppLoader.Free;
end;

procedure TFrmSearchImage.OnMessage(AMessage: String);
begin
  ShowMessage(AMessage);
end;

end.
