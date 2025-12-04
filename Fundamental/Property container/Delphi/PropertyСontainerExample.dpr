program PropertyСontainerExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  PropertyContainer in 'PropertyContainer.pas';

var
  PC: TPropertyContainer;
begin
  try
    PC := TPropertyContainer.Create();
    try
      PC.SetProperty('Color', 'Red');
      WriteLn(PC.GetProperty('Color'));

      PC.SetProperty('Size', 'Large');
      WriteLn(PC.GetProperty('Size'));

      ReadLn;
    finally
      PC.Free();
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
