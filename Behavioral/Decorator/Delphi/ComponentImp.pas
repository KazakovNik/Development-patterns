unit ComponentImp;

interface

uses
  Component;

type
  TComponent = class(TInterfacedObject, IComponent)
  public
    function Operation(): string;
  end;

implementation

function TComponent.Operation(): string;
begin
  Result := 'Basic operation';
end;

end.
