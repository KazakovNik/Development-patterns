unit ImmutableObjectImp;

interface

uses
  ImmutableObject;

type
  TImmutableObjectImp = class(TInterfacedObject, IImmutableObject)
  private
    FValue: Integer;
  public
    constructor Create(const Value: Integer);
    function GetValue(): Integer;
  end;

implementation

{ TImmutableObjectImp }

constructor TImmutableObjectImp.Create(const Value: Integer);
begin
  inherited Create();
  FValue := Value;
end;

function TImmutableObjectImp.GetValue: Integer;
begin
  Result := FValue;
end;

end.
