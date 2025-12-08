namespace FacadeExample;

internal class Facade
{
	private readonly ComponentA _componentA;
	private readonly ComponentB _componentB;
	private readonly ComponentC _componentC;

	public Facade()
	{
		_componentA = new ComponentA();
		_componentB = new ComponentB();
		_componentC = new ComponentC();
	}

	public void PerformAllOperations()
	{
		Console.WriteLine("Performing all operations:");
		Console.WriteLine(_componentA.OperationA());
		Console.WriteLine(_componentB.OperationB());
		Console.WriteLine(_componentC.OperationC());
	}
}