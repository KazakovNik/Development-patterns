program RAIIExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  FileHandler in 'FileHandler.pas';

var
  Handler: TFileHandler;
  f : TextFile;
begin
  try
    try
      AssignFile(f, 'example.txt');
      Rewrite(f);
      Writeln(f, 'text');
    finally
      CloseFile(f);
    end;

    Handler := nil;
    try
      WritelN('Opening a file...');
      Handler := TFileHandler.Create('example.txt');
      Writeln('Work with the file is complete.');
    finally
      Handler.Free;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  ReadLn;
end.
