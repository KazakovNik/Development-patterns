program BuilderExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Car in 'Car.pas',
  CarBuilder in 'CarBuilder.pas',
  SedanCarBuilder in 'SedanCarBuilder.pas',
  SUVCarBuilder in 'SUVCarBuilder.pas',
  CarDirector in 'CarDirector.pas';

var
  SedanBuilder: ICarBuilder;
  SuvBuilder: ICarBuilder;
  Director: TCarDirector;
  CreatedCar: TCar;
begin
  try
    SedanBuilder := TSedanCarBuilder.Create();
    Director := TCarDirector.Create(SedanBuilder);
    Director.Construct();
    CreatedCar := SedanBuilder.GetResult();
    WriteLn(CreatedCar.ToString());

    SuvBuilder := TSUVCarBuilder.Create();
    Director.Free;
    Director := TCarDirector.Create(SuvBuilder);
    Director.Construct();
    CreatedCar := SuvBuilder.GetResult();
    WriteLn(CreatedCar.ToString());

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
