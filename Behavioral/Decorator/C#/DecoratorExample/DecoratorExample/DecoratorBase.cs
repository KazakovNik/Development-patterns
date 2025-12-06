namespace DecoratorExample;

abstract class DecoratorBase : IComponent
{
	protected readonly IComponent _component;

	public DecoratorBase(IComponent component)
	{
		_component = component;
	}

	public virtual string Operation() => _component.Operation();
}