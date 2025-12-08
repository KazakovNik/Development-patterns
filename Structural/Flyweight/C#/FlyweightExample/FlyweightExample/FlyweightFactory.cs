namespace FlyweightExample;

public class FlyweightFactory
{
	private Dictionary<string, Flyweight> flyweights = [];

	public Flyweight GetFlyweight(string key)
	{
		if (!flyweights.ContainsKey(key))
			flyweights[key] = new Flyweight(key);

		return flyweights[key];
	}
}