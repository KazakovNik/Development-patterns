namespace CompositeExample;

internal interface IEmployee
{
	void Add(IEmployee emp);
	void Remove(IEmployee emp);
	void Display(int depth);
}