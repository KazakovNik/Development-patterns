namespace SingletonExample;

public sealed class Logger
{
	private static readonly Lazy<Logger> _instance =
	  new Lazy<Logger>(() => new Logger());

	private Logger()
	{
		Console.WriteLine("An instance of the class has been created Logger");
	}

	public static Logger Instance { get { return _instance.Value; } }

	public void Log(string message)
	{
		Console.WriteLine(message);
	}
}