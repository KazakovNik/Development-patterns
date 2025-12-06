program PrototypeExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Cloneable in 'Cloneable.pas',
  BaseClass in 'BaseClass.pas';

var
  OriginalObj: TBaseClass;
  ClonedObj: TBaseClass;
begin
  try
    try
      OriginalObj := TBaseClass.Create('Original');

      ClonedObj := TBaseClass(OriginalObj.Clone());

      Writeln('Name of the original object:', OriginalObj.GetName());
      Writeln('Name of the cloned object:', ClonedObj.GetName());

      ClonedObj.SetName('Cloned');
      Writeln('The name of the cloned object after modification:', ClonedObj.GetName());
    finally
      OriginalObj.Free();
      ClonedObj.Free();
    end;
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
