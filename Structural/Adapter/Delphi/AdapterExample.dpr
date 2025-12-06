program AdapterExample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  TextFormatter in 'TextFormatter.pas',
  OldPrinter in 'OldPrinter.pas',
  PrinterAdapter in 'PrinterAdapter.pas';

var
  oldPrinter: TOldPrinter;
  adapter: ITextFormatter;
begin
  try
    oldPrinter := TOldPrinter.Create();
    adapter := TPrinterAdapter.Create(oldPrinter);

    adapter.FormatAndPrint('Hello World');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;
end.
