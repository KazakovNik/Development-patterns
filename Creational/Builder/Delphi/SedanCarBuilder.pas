unit SedanCarBuilder;

interface

uses
  SysUtils, Car, CarBuilder;

type
  TSedanCarBuilder = class(TInterfacedObject, ICarBuilder)
  private
    FCurrentCar: TCar;
  public
    constructor Create();
    destructor Destroy(); override;
    procedure SetModel(const Value: string);
    procedure SetEngineType(const Value: string);
    procedure SetWheelCount(Value: Integer);
    function GetResult(): TCar;
  end;

implementation

constructor TSedanCarBuilder.Create();
begin
  inherited Create();
  FCurrentCar := TCar.Create('', '', 0);
end;

destructor TSedanCarBuilder.Destroy();
begin
  FreeAndNil(FCurrentCar);

  inherited Destroy();
end;

procedure TSedanCarBuilder.SetModel(const Value: string);
begin
  FCurrentCar.Model := 'Sedan-' + Value;
end;

procedure TSedanCarBuilder.SetEngineType(const Value: string);
begin
  FCurrentCar.EngineType := 'Petrol';
end;

procedure TSedanCarBuilder.SetWheelCount(Value: Integer);
begin
  FCurrentCar.WheelCount := 4;
end;

function TSedanCarBuilder.GetResult(): TCar;
begin
  Result := FCurrentCar;
end;

end.
