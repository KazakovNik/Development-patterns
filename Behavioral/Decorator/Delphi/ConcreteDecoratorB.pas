unit ConcreteDecoratorB;

interface

uses
  DecoratorBase,
  SysUtils;

type
  TConcreteDecoratorB = class(TDecoratorBase)
  public
    function Operation(): string; override;
  end;

implementation

function TConcreteDecoratorB.Operation(): string;
begin
  Result := Format('Decorator B (%s)', [inherited Operation()]);
end;

end.
