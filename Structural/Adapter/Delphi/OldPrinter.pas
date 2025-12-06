unit OldPrinter;

interface

type
  TOldPrinter = class
    public
      constructor Create();
      procedure PrintLine(const line: string);
  end;

implementation

constructor TOldPrinter.Create();
begin
  Writeln('Created instance OldPrinter');
end;

procedure TOldPrinter.PrintLine(const line: string);
begin
  Writeln('Old behavior: ' + line);
end;

end.
