using BuilderExample;

var sedanBuilder = new SedanCarBuilder();
var suvBuilder = new SUVCarBuilder();

var director = new CarDirector();

director.BuildCar(sedanBuilder);
Console.WriteLine("A car has been created: " + sedanBuilder.GetResult().ToString());

director.BuildCar(suvBuilder);
Console.WriteLine("A car has been created: " + suvBuilder.GetResult().ToString());

Console.ReadLine();