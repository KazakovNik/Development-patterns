program DelegatePatternExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  MessageHandler in 'MessageHandler.pas',
  MessageHandlerImpl in 'MessageHandlerImpl.pas',
  MessageManager in 'MessageManager.pas';

var
  MessageHandler: IMessageHandler;
  Manager: TMessageManager;
begin
  try
    // Create an instance of the handler
    MessageHandler := TMessageHandlerImpl.Create();

    // We pass the handler to the client
    Manager := TMessageManager.Create(MessageHandler);

    // We send a request through the client
    Manager.ShowMessage('Test message');

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
