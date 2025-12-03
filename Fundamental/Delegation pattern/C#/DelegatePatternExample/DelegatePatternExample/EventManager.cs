namespace DelegatePatternExample;

public class EventManager
{
	private readonly IEventHandler handler;

	public EventManager(IEventHandler eventHandler)
	{
		this.handler = eventHandler;
	}

	public void RaiseEvent(string msg)
	{
		handler.OnEvent(msg);
	}
}