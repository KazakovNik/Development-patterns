program ImmutableInterfaceExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  ImmutableObject in 'ImmutableObject.pas',
  ImmutableObjectImp in 'ImmutableObjectImp.pas';

var
  obj: IImmutableObject;
begin
  try
    obj := TImmutableObjectImp.Create(42);
    Writeln('The meaning of the object:', obj.GetValue());

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
