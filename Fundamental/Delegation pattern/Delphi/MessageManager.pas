unit MessageManager;

interface

uses
  MessageHandler, MessageHandlerImpl;

type
  TMessageManager = class(TObject)
  private
    FDelegate: IMessageHandler;
  public
    constructor Create(ADelegate: IMessageHandler);
    procedure ShowMessage(const Msg: string);
  end;

implementation

{ TClientClass }

constructor TMessageManager.Create(ADelegate: IMessageHandler);
begin
  inherited Create();
  FDelegate := ADelegate;
end;

procedure TMessageManager.ShowMessage(const Msg: string);
begin
  if Assigned(FDelegate) then
    FDelegate.HandleMessage(Msg)
  else
    Writeln('The delegate is not established');
end;

end.
