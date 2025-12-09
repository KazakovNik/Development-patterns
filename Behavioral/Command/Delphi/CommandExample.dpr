program CommandExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Command in 'Command.pas',
  LightOnCommand in 'LightOnCommand.pas',
  Light in 'Light.pas',
  RemoteControl in 'RemoteControl.pas';

var
  Lamp: TLight;
  Remote: TRemoteControl;
  Cmd: ICommand;
begin
  try
    Lamp := TLight.Create;
    Remote := TRemoteControl.Create;

    Cmd := TLightOnCommand.Create(Lamp);
    Remote.SetCommand(Cmd);

    Remote.PressButton;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  Readln;
end.
