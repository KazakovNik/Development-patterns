namespace DecoratorExample;

class ConcreteDecoratorA : DecoratorBase
{
	public ConcreteDecoratorA(IComponent component) : base(component) { }

	public override string Operation()
	{
		return $"Decorator A ({_component.Operation()})";
	}
}