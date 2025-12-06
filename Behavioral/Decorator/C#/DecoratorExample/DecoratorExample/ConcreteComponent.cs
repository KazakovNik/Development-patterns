namespace DecoratorExample;

internal class ConcreteComponent : IComponent
{
	public string Operation()
	{
		return "Basic operation";
	}
}