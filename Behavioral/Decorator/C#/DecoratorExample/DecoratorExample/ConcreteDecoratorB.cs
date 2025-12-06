namespace DecoratorExample;

class ConcreteDecoratorB : DecoratorBase
{
	public ConcreteDecoratorB(IComponent component) : base(component) { }

	public override string Operation()
	{
		return $"Decorator B ({_component.Operation()})";
	}
}