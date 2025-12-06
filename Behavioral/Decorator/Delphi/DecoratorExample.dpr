program DecoratorExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Component in 'Component.pas',
  ComponentImp in 'ComponentImp.pas',
  DecoratorBase in 'DecoratorBase.pas',
  ConcreteDecoratorA in 'ConcreteDecoratorA.pas',
  ConcreteDecoratorB in 'ConcreteDecoratorB.pas';

var
  component: IComponent;
  decoratorA: TConcreteDecoratorA;
  decoratorB: TConcreteDecoratorB;
begin
  try
    component := TComponent.Create;
    decoratorA := TConcreteDecoratorA.Create(component);
    decoratorB := TConcreteDecoratorB.Create(decoratorA);
    WriteLn(decoratorB.Operation());
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;
end.
