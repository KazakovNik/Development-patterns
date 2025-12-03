namespace InterfaceExample;

public class Cat : IAnimal
{
	public void MakeSound()
	{
		Console.WriteLine("Meow!");
	}
}