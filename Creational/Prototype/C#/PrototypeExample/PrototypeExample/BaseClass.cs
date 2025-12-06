namespace PrototypeExample;

public abstract class BaseClass : ICloneable<BaseClass>
{
	public string Name { get; set; }

	public BaseClass(string name)
	{
		this.Name = name;
	}

	public virtual BaseClass Clone()
	{
		return MemberwiseClone() as BaseClass;
	}

	public void PrintInfo()
	{
		Console.WriteLine($"Object name: {this.Name}");
	}
}