program BridgeExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Device in 'Device.pas',
  VDevice in 'VDevice.pas',
  RadioDevice in 'RadioDevice.pas',
  RemoteControl in 'RemoteControl.pas';

var
  remote: TRemoteControl;
  device: TVDevice;
  radioDevice: TRadioDevice;
begin
  try
    device := TVDevice.Create();
    remote := TRemoteControl.Create(device);
    remote.PowerOnOff();

    Writeln('');

    radioDevice := TRadioDevice.Create;
    remote.Free;
    remote := TRemoteControl.Create(radioDevice);
    remote.PowerOnOff();
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
