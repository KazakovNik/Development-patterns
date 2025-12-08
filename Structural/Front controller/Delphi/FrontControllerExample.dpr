program FrontControllerExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Command in 'Command.pas',
  ViewCommand in 'ViewCommand.pas',
  EditCommand in 'EditCommand.pas',
  FrontController in 'FrontController.pas';

var
  FC: TFrontController;
  cmd: string;
begin
  try
    FC := TFrontController.Create;
    try
      WriteLn('Enter command (View or Edit): ');
      Readln(cmd);
      FC.HandleRequest(cmd);
    finally
      FC.Free;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;
end.
