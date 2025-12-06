unit RadioDevice;

interface

uses
  Device;

type
  TRadioDevice = class(TInterfacedObject, IDevice)
    procedure On(); virtual;
    procedure Off(); virtual;
  end;

implementation

procedure TRadioDevice.On();
begin
  Writeln('Radio is turned on.');
end;

procedure TRadioDevice.Off();
begin
  Writeln('Radio is turned off.');
end;

end.
