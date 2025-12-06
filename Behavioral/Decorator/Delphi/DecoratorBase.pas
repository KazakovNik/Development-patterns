unit DecoratorBase;

interface

uses
  Component;

type
  TDecoratorBase = class(TInterfacedObject, IComponent)
  private
    FComponent: IComponent;
  public
    constructor Create(Component: IComponent);
    destructor Destroy(); override;
    function Operation(): string; virtual;
  end;

implementation

constructor TDecoratorBase.Create(Component: IComponent);
begin
  inherited Create();
  FComponent := Component;
end;

destructor TDecoratorBase.Destroy();
begin
  if Assigned(FComponent) then
    FComponent := nil;
  inherited;
end;

function TDecoratorBase.Operation(): string;
begin
  Result := FComponent.Operation();
end;

end.
