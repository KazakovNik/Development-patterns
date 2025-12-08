program FlyweightExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Flyweight in 'Flyweight.pas',
  FlyweightFactory in 'FlyweightFactory.pas';

var
  Factory: TFlyweightFactory;
  Flyweight1, Flyweight2: TFlyweight;
begin
  try
    try
      Factory := TFlyweightFactory.Create;
      Flyweight1 := Factory.GetFlyweight('A');
      Flyweight2 := Factory.GetFlyweight('B');
      Flyweight1.Operation('Unique State 1');
      Flyweight2.Operation('Unique State 2');
    finally
      Factory.Free;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;
end.
