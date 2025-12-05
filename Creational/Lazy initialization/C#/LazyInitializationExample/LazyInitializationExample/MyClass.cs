namespace LazyInitializationExample;

public class MyClass
{
	private readonly Lazy<SomeHeavyObject> _lazyObject;

	public MyClass()
	{
		_lazyObject = new Lazy<SomeHeavyObject>(() => new SomeHeavyObject());
	}

	public SomeHeavyObject GetInstance()
	{
		return _lazyObject.Value;
	}
}