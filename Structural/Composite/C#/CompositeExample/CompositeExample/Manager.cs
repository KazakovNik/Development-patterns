namespace CompositeExample;

internal class Manager : IEmployee
{
	private readonly List<IEmployee> _subordinates = new List<IEmployee>();
	private readonly string _name;

	public Manager(string name)
	{
		_name = name;
	}

	public void Add(IEmployee emp)
	{
		_subordinates.Add(emp);
	}

	public void Remove(IEmployee emp)
	{
		_subordinates.Remove(emp);
	}

	public void Display(int depth)
	{
		Console.WriteLine(new String('-', depth * 2) + $"Manager {_name}");
		foreach (var subordinate in _subordinates)
		{
			subordinate.Display(depth + 1);
		}
	}
}