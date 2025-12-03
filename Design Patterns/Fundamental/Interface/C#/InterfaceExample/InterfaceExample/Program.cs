using InterfaceExample;

var animals = new List<IAnimal>
{
	new Dog(),
	new Cat()
};

foreach (var animal in animals)
	animal.MakeSound();

Console.ReadLine();