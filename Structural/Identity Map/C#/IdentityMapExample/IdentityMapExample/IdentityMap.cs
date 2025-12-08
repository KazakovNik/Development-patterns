namespace IdentityMapExample;

public static class IdentityMap<T> where T : Entity
{
	private static readonly Dictionary<int, T> _entities = new();

	public static T GetOrCreate(int id)
	{
		if (_entities.TryGetValue(id, out var entity))
			return entity;

		entity = Activator.CreateInstance<T>();
		entity.Id = id;
		_entities.Add(id, entity);
		return entity;
	}
}