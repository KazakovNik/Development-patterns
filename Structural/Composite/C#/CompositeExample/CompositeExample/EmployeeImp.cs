namespace CompositeExample;

internal class Employee : IEmployee
{
	private readonly string _name;

	public Employee(string name)
	{
		_name = name;
	}

	public void Add(IEmployee emp)
	{
		throw new NotSupportedException("Unable to add employee");
	}

	public void Remove(IEmployee emp)
	{
		throw new NotSupportedException("Unable to delete employee");
	}

	public void Display(int depth)
	{
		Console.WriteLine(new String('-', depth * 2) + $"Employee {_name}");
	}
}