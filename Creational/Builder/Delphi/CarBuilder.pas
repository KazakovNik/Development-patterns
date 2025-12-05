unit CarBuilder;

interface

uses
  Car;

type
  ICarBuilder = interface(IInterface)
    ['{64AC6BB1-BAA5-4820-8A0C-16E22D56193C}']
    procedure SetModel(const Value: string);
    procedure SetEngineType(const Value: string);
    procedure SetWheelCount(Value: Integer);
    function GetResult(): TCar;
  end;

implementation

end.
