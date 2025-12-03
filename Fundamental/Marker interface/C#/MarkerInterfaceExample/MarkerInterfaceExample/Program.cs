interface ISpecialObject { }

class RegularClass { }

class SpecialClass : ISpecialObject { }

class Program
{
	static void Main()
	{
		var regular = new RegularClass();
		var special = new SpecialClass();

		ProcessObject(regular);
		ProcessObject(special);

		Console.ReadLine();
	}

	static void ProcessObject(object obj)
	{
		if (obj is ISpecialObject)
			Console.WriteLine("This is a special object");
		else
			Console.WriteLine("This is an ordinary object.");
	}
}