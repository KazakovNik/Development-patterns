unit BaseHandler;

interface

uses
  Handler;

type
  TBaseHandler = class(TInterfacedObject, IHandler)
  private
    FNextHandler: IHandler;
  public
    constructor Create();
    destructor Destroy(); override;
    procedure Handle(request: string); virtual;
    function SetNext(handler: IHandler): IHandler;
  end;

implementation

constructor TBaseHandler.Create();
begin
  inherited Create();
end;

destructor TBaseHandler.Destroy();
begin
  if Assigned(FNextHandler) then
    FNextHandler := nil;
  inherited Destroy();
end;

function TBaseHandler.SetNext(handler: IHandler): IHandler;
begin
  Result := handler;
  FNextHandler := handler;
end;

procedure TBaseHandler.Handle(request: string);
begin
  if Assigned(FNextHandler) then
    FNextHandler.Handle(request);
end;

end.
