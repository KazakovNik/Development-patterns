using AdapterExample;

var oldPrinter = new OldPrinter();
var adapter = new PrinterAdapter(oldPrinter);

adapter.FormatAndPrint("Hello World");

Console.ReadLine();