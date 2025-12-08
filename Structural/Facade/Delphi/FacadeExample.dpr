program FacadeExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Component in 'Component.pas',
  Facade in 'Facade.pas';

var
  facade: TFacade;
begin
  try
    facade := TFacade.Create();
    try
      WriteLn(facade.DoAllOperations());
    finally
      facade.Free();
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
