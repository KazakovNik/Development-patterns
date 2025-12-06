unit RemoteControl;

interface

uses
  SysUtils, Device;

type
  TRemoteControl = class(TObject)
  private
    FDevice: IDevice;
  public
    constructor Create(ADevice: IDevice);
    procedure PowerOnOff();
  end;

implementation

constructor TRemoteControl.Create(ADevice: IDevice);
begin
  inherited Create;
  FDevice := ADevice;
end;

procedure TRemoteControl.PowerOnOff();
begin
  if not Assigned(FDevice) then
    Writeln('No device connected.')
  else
  begin
    Writeln('Switching device...');
    FDevice.On();
    Sleep(1000);
    FDevice.Off();
  end;
end;

end.
