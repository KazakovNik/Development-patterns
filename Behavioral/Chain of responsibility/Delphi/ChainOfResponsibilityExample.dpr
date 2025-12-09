program ChainOfResponsibilityExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Handler in 'Handler.pas',
  BaseHandler in 'BaseHandler.pas',
  FirstHandler in 'FirstHandler.pas',
  SecondHandler in 'SecondHandler.pas';

var
  firstHandler, secondHandler: IHandler;
begin
  try
    firstHandler := TFirstHandler.Create();
    secondHandler := TSecondHandler.Create();

    firstHandler.SetNext(secondHandler);

    firstHandler.Handle('123');
    firstHandler.Handle('Hello World!');
    firstHandler.Handle('Test123');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;
end.
