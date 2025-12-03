unit MessageHandlerImpl;

interface

uses
  MessageHandler;

type
  TMessageHandlerImpl = class(TInterfacedObject, IMessageHandler)
  public
    procedure HandleMessage(const Msg: string);
  end;

implementation

{ TMessageHandlerImpl }

procedure TMessageHandlerImpl.HandleMessage(const Msg: string);
begin
  Writeln(Msg);
end;

end.
