namespace LazyInitializationExample;

public class SomeHeavyObject
{
	public string Value { get; set; }

	public SomeHeavyObject()
	{
		Console.WriteLine("SomeHeavyObject is initialized!");
		this.Value = "I am heavy object";
	}
}