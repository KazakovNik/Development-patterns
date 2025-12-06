unit ConcreteDecoratorA;

interface

uses
  DecoratorBase,
  SysUtils;

type
  TConcreteDecoratorA = class(TDecoratorBase)
  public
    function Operation(): string; override;
  end;

implementation

function TConcreteDecoratorA.Operation(): string;
begin
  Result := Format('Decorator A (%s)', [inherited Operation()]);
end;

end.
