program EventChannelExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  EventChannel in 'EventChannel.pas';

var
  EventCh: TEventChannel;
  LogProc: TMessageEvent;
begin
  try
    try
      EventCh := TEventChannel.Create;

      LogProc :=
        procedure(const Msg: string)
        begin
          Writeln('Received message:', Msg);
        end;

      EventCh.Subscribe(LogProc);
      EventCh.Publish('Hello from Event Channel!');
      EventCh.Unsubscribe(LogProc);

      EventCh.Publish('This should not be printed.');

    finally
      EventCh.Free;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
