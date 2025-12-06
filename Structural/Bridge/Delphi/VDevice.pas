unit VDevice;

interface

uses
  Device;

type
  TVDevice = class(TInterfacedObject, IDevice)
    procedure On(); virtual;
    procedure Off(); virtual;
  end;

implementation

procedure TVDevice.On();
begin
  Writeln('TV is turned on.');
end;

procedure TVDevice.Off();
begin
  Writeln('TV is turned off.');
end;

end.
