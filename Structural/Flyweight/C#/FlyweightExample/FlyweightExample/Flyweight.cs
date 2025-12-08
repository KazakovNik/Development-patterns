namespace FlyweightExample;

public class Flyweight
{
	private readonly string _sharedState;

	public Flyweight(string sharedState)
	{
		_sharedState = sharedState;
	}

	public void Operation(string uniqueState)
	{
		Console.WriteLine($"The operation was performed with the general state '{_sharedState}' and unique condition '{uniqueState}'.");
	}
}