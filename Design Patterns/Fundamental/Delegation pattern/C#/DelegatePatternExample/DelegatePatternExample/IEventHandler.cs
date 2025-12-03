namespace DelegatePatternExample;

public interface IEventHandler
{
	void OnEvent(string message);
}