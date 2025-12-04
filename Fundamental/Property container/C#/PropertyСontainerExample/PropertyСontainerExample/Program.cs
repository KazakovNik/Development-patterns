using PropertyСontainerExample;

var pc = new PropertyContainer();

pc.SetProperty("Color", "Blue");
Console.WriteLine(pc.GetProperty("Color"));

pc.SetProperty("Size", "Medium");
Console.WriteLine(pc.GetProperty("Size"));

Console.ReadLine();