using RAIIExample;

using (StreamWriter sw = File.CreateText("example.txt"))
{
	sw.WriteLine("Test");
}

using var processor = new FileProcessor("example.txt");
Console.WriteLine(processor.ReadLine());

Console.ReadLine();