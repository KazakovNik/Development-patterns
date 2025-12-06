program SingletonExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Logger in 'Logger.pas';

var
  logger: TLogger;
begin
  try
    logger := TLogger.GetInstance;
    logger.Log('First message');

    logger := TLogger.GetInstance;
    logger.Log('Second message');

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
