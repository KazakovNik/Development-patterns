namespace ObjectPoolExample;

public sealed class ObjectPool<T> where T : new()
{
	private readonly Queue<T> _objectQueue;
	private readonly object _locker = new object();

	public ObjectPool(int initialSize)
	{
		_objectQueue = new Queue<T>(initialSize);
		for (int i = 0; i < initialSize; ++i)
			_objectQueue.Enqueue(new T());
	}

	public T AcquireObject()
	{
		lock (_locker)
		{
			return _objectQueue.Dequeue();
		}
	}

	public void ReleaseObject(T obj)
	{
		lock (_locker)
		{
			_objectQueue.Enqueue(obj);
		}
	}
}