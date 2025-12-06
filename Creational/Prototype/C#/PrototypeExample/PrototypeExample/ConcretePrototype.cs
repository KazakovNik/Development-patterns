namespace PrototypeExample;

public class ConcretePrototype : BaseClass
{
	public ConcretePrototype(string name) : base(name) { }

	public override BaseClass Clone()
	{
		var clone = new ConcretePrototype(this.Name);
		return clone;
	}
}