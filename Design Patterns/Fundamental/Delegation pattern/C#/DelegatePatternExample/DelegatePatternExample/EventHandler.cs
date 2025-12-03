namespace DelegatePatternExample;

public class EventHandler : IEventHandler
{
	public void OnEvent(string message)
	{
		Console.WriteLine($"Received a message: {message}");
	}
}
