using FactoryMethodExample;

string choice;
do
{
	Console.WriteLine("Select a factory:");
	Console.WriteLine("1 - Factory A");
	Console.WriteLine("2 - Factory B");
	Console.Write("Your choice: ");
	choice = Console.ReadLine();

	switch (choice)
	{
		case "1":
			var factoryA = new ConcreteCreatorA();
			factoryA.SomeOperation();
			break;
		case "2":
			var factoryB = new ConcreteCreatorB();
			factoryB.SomeOperation();
			break;
		default:
			Console.WriteLine("Invalid input.");
			Console.WriteLine("");
			continue;
	}
	Console.WriteLine("");
} while (!choice.Equals("exit"));

Console.WriteLine("The program is completed.");

Console.ReadLine();