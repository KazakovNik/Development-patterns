unit LightOnCommand;

interface

uses
  Command, Light;

type
  TLightOnCommand = class(TInterfacedObject, ICommand)
  private
    FLight: TLight;
  public
    constructor Create(ALight: TLight);
    procedure Execute;
  end;

implementation

constructor TLightOnCommand.Create(ALight: TLight);
begin
  inherited Create;
  FLight := ALight;
end;

procedure TLightOnCommand.Execute;
begin
  FLight.TurnOn;
end;

end.
