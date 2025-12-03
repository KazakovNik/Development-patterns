program MarkerInterfaceExample;

{$APPTYPE CONSOLE}

uses SysUtils;

type
  ISpecialObject = interface
    ['{95861E43-4BB1-489B-9F82-6BF31776FBE0}']
  end;

  TRegularClass = class(TInterfacedObject)
  end;

  TSpecialClass = class(TRegularClass, ISpecialObject)
  end;

procedure ProcessObject(const Obj: TObject);
begin
  if Supports(Obj, ISpecialObject) then
    Writeln('This is a special object')
  else
    Writeln('This is an ordinary object.');
end;

var
  RegularObj: TRegularClass;
  SpecialObj: TSpecialClass;
begin
  try
    try
      RegularObj := TRegularClass.Create;
      SpecialObj := TSpecialClass.Create;

      ProcessObject(RegularObj);
      ProcessObject(SpecialObj);

      Readln;
    finally
      FreeAndNil(RegularObj);
      FreeAndNil(SpecialObj);
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
