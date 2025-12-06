namespace AdapterExample;

public class PrinterAdapter : ITextFormatter
{
	private readonly OldPrinter _printer;

	public PrinterAdapter(OldPrinter printer)
	{
		_printer = printer;
	}

	public void FormatAndPrint(string text)
	{
		var formattedText = "<h1>" + text + "</h1>";
		_printer.PrintLine(formattedText);
	}
}