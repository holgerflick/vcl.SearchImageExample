unit UWebAppLoader;

interface

uses
    Classes
  , VCL.TMSFNCUtils
  , VCL.TMSFNCCustomControl
  , VCL.TMSFNCWebBrowser
  , VCL.TMSFNCEdgeWebBrowser
  , VCL.TMSFNCWebBrowser.Win
  ;

type
  TMyWebBridge = class;

  TWebAppLoader = class
  private
    FBrowserControl: TTMSFNCEdgeWebBrowser;
    FHostName: String;
    FDirectory: String;
    FBridge: TMyWebBridge;

    procedure OnBrowserInitialized(Sender: TObject);
  protected
    procedure DoMessage(const AMessage: string);
  public
    constructor Create(
      ABrowserControl: TTMSFNCEdgeWebBrowser;
      AHostName, ADirectory: String );
    destructor Destroy; override;
  end;

  TMyWebBridgeMessageEvent = procedure(const AMessage: string) of object;

  TMyWebBridge = class(TInterfacedPersistent, ITMSFNCCustomWebBrowserBridge)
  private
    FOnMessage: TMyWebBridgeMessageEvent;
    function GetObjectMessage: string;
    procedure SetObjectMessage(const AValue: string);
  protected
    property OnMessage: TMyWebBridgeMessageEvent read FOnMessage write FOnMessage;
  published
    property ObjectMessage: string read GetObjectMessage write SetObjectMessage;
  end;


implementation

const
  COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND_DENY = 0;
  COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND_ALLOW = 1;
  COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND_DENY_CORS = 2;

{ TWebAppLoader }

constructor TWebAppLoader.Create(
  ABrowserControl: TTMSFNCEdgeWebBrowser;
  AHostName, ADirectory: String );

begin
  inherited Create;

  FBrowserControl := ABrowserControl;
  if Assigned( FBrowserControl ) then
  begin
    FBrowserControl.OnInitialized := self.OnBrowserInitialized;
  end;

  FHostName := AHostName;
  FDirectory := ADirectory;

  FBridge := TMyWebBridge.Create;
  FBridge.OnMessage := DoMessage;
end;

destructor TWebAppLoader.Destroy;
begin

  inherited;
end;

procedure TWebAppLoader.DoMessage(const AMessage: string);
begin
  TTMSFNCUtils.Log(AMessage);
end;

procedure TWebAppLoader.OnBrowserInitialized(Sender: TObject);
var
  w: ICoreWebView2;
  w3: ICoreWebView2_3;
  c: ICoreWebView2Controller;
begin
  c := ICoreWebView2Controller(FBrowserControl.NativeBrowser);
  if c.get_CoreWebView2(w) = S_OK then
  begin
    if w.QueryInterface(IID_ICoreWebView2_3, w3) = S_OK then
    begin
      w3.SetVirtualHostNameToFolderMapping(
        pWideChar( FHostName ),
        pWideChar( FDirectory ),
        COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND_ALLOW);

      w3.Navigate( pWideChar( 'https://' + FHostName + '/index.html' ) );
    end;
  end;

  FBrowserControl.AddBridge('WebBridge', FBridge);
end;

{ TMyWebBridge }

function TMyWebBridge.GetObjectMessage: string;
begin

end;

procedure TMyWebBridge.SetObjectMessage(const AValue: string);
begin
  if Assigned(OnMessage) then
    OnMessage(AValue);
end;

end.
