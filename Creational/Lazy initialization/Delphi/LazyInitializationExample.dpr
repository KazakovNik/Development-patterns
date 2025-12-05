program LazyInitializationExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  MyClass in 'MyClass.pas';

var
  MyObj: TMyClass;
begin
  try
    MyObj := TMyClass.Create;
    try
      Writeln('Before accessing the heavy object');
      if not Assigned(MyObj.HeavyObject) then
        MyObj.HeavyObject := MyObj.GetInstance;
      Writeln('After accessing the heavy object');
    finally
      MyObj.Free;
    end;
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
