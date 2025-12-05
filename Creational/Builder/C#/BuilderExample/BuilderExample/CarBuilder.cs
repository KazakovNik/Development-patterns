namespace BuilderExample;

public abstract class CarBuilder
{
	protected Car _car;

	public virtual void Reset() => _car = new Car();

	public abstract void BuildModel();
	public abstract void BuildEngineType();
	public abstract void BuildWheels();

	public Car GetResult() => _car;
}