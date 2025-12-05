unit SUVCarBuilder;

interface

uses
  SysUtils, Car, CarBuilder;

type
  TSUVCarBuilder = class(TInterfacedObject, ICarBuilder)
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

constructor TSUVCarBuilder.Create();
begin
  inherited Create();
  FCurrentCar := TCar.Create('', '', 0);
end;

destructor TSUVCarBuilder.Destroy();
begin
  FreeAndNil(FCurrentCar);
  inherited Destroy();
end;

procedure TSUVCarBuilder.SetModel(const Value: string);
begin
  FCurrentCar.Model := 'SUV-' + Value;
end;

procedure TSUVCarBuilder.SetEngineType(const Value: string);
begin
  FCurrentCar.EngineType := 'Diesel';
end;

procedure TSUVCarBuilder.SetWheelCount(Value: Integer);
begin
  FCurrentCar.WheelCount := 4;
end;

function TSUVCarBuilder.GetResult(): TCar;
begin
  Result := FCurrentCar;
end;

end.
