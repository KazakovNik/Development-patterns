using PrototypeExample;

var original = new ConcretePrototype("Original");
var cloned = original.Clone();
original.PrintInfo();

cloned.Name = "Cloned";
cloned.PrintInfo();

Console.ReadLine();