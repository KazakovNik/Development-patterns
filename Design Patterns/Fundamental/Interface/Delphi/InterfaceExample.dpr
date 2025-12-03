program InterfaceExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Animal in 'Animal.pas',
  DogImpl in 'DogImpl.pas',
  CatImpl in 'CatImpl.pas';

var
  AnimalList: array of IAnimal;
begin
  try
    SetLength(AnimalList, 2);
    AnimalList[0] := TDog.Create;
    AnimalList[1] := TCat.Create;

    for var i := Low(AnimalList) to High(AnimalList) do
      AnimalList[i].MakeSound;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
