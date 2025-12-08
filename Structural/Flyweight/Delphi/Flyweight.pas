unit Flyweight;

interface

uses
  SysUtils, Classes;

type
  TFlyweight = class
  private
    FSharedState: string;
  public
    constructor Create(const SharedState: string);
    procedure Operation(const UniqueState: string);
  end;

implementation

constructor TFlyweight.Create(const SharedState: string);
begin
  inherited Create;
  FSharedState := SharedState;
end;

procedure TFlyweight.Operation(const UniqueState: string);
begin
  Writeln('Operation with shared state:', FSharedState, ' and unique state:', UniqueState);
end;

end.
