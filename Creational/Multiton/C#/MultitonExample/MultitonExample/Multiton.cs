namespace MultitonExample;

public class Multiton
{
	private static readonly Dictionary<string, Multiton> _instances = [];

	private Multiton(string key)
	{
		Console.WriteLine($"An instance for the key has been created '{key}'");
	}

	public static Multiton GetInstance(string key)
	{
		lock (_instances)
		{
			if (!_instances.ContainsKey(key))
				_instances[key] = new Multiton(key);

			return _instances[key];
		}
	}

	public void ShowMessage()
	{
		Console.WriteLine("multiton instance method.");
	}
}