unit PrinterAdapter;

interface

uses
  TextFormatter, OldPrinter;

type
  TPrinterAdapter = class(TInterfacedObject, ITextFormatter)
  private
    FPrinter: TOldPrinter;
  public
    constructor Create(Printer: TOldPrinter);
    procedure FormatAndPrint(const text: string);
  end;

implementation

constructor TPrinterAdapter.Create(Printer: TOldPrinter);
begin
  inherited Create();
  FPrinter := Printer;
end;

procedure TPrinterAdapter.FormatAndPrint(const text: string);
var
  formattedText: string;
begin
  formattedText := '<h1>' + text + '</h1>';
  FPrinter.PrintLine(formattedText);
end;


end.
