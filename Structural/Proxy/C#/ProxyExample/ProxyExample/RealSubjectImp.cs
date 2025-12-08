namespace ProxyExample;

internal class RealSubject : IRealSubject
{
	public RealSubject()
	{
		Console.WriteLine("Resource created");
	}

	~RealSubject()
	{
		Console.WriteLine("Resource released");
	}

	public string GetData()
	{
		return "Data received";
	}
}