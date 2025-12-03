namespace ImmutableInterfaceExample;

public sealed class ImmutablePerson
{
	public string Name { get; }
	public int Age { get; }

	public ImmutablePerson(string name, int age)
	{
		if (string.IsNullOrEmpty(name)) throw new ArgumentException("Name must be provided");
		if (age <= 0) throw new ArgumentOutOfRangeException(nameof(age));

		this.Name = name;
		this.Age = age;
	}
}