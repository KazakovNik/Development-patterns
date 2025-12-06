using ObjectPoolExample;

var pool = new ObjectPool<MyObject>(5);

using (var myObj = pool.AcquireObject())
{
	try
	{
		myObj.Use();
	}
	finally
	{
		pool.ReleaseObject(myObj);
	}
}

Console.ReadLine();