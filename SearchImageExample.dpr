program SearchImageExample;

uses
  Vcl.Forms,
  UFrmSearchImage in 'UFrmSearchImage.pas' {FrmSearchImage},
  UWebAppLoader in 'UWebAppLoader.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSearchImage, FrmSearchImage);
  Application.Run;
end.
