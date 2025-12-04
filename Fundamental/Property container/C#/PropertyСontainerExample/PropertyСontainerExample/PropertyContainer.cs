namespace PropertyСontainerExample;

public class PropertyContainer
{
	private readonly Dictionary<string, object> properties = [];

	public void SetProperty(string name, object value)
	{
		properties[name] = value;
	}

	public object? GetProperty(string name)
	{
		return properties.TryGetValue(name, out object? value) ? value : null;
	}
}