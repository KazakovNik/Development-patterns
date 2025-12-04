namespace EventChannelExample;

public class EventChannel<T>
{
	private List<Action<T>> subscribers = [];

	public void Subscribe(Action<T> subscriber)
	{
		subscribers.Add(subscriber);
	}

	public void Unsubscribe(Action<T> subscriber)
	{
		subscribers.Remove(subscriber);
	}

	public void Publish(T message)
	{
		foreach (var sub in subscribers)
			sub(message);
	}
}