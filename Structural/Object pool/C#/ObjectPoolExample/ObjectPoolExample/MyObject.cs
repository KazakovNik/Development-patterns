namespace ObjectPoolExample;

public class MyObject : IDisposable
{
	public MyObject() { }
	
	public void Use()
	{
		Console.WriteLine("The object is in use");
	}

	public void Dispose()
	{
	}
}