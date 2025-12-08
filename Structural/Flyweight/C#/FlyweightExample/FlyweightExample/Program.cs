using FlyweightExample;

var factory = new FlyweightFactory();

var flyweight1 = factory.GetFlyweight("А");
var flyweight2 = factory.GetFlyweight("B");

flyweight1.Operation("Unique condition 1");
flyweight2.Operation("Unique condition 2");

Console.ReadLine();