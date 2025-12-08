namespace ProxyExample;

internal class SubjectProxy : IRealSubject
{
	private IRealSubject? _realSubject;

	public string GetData()
	{
		if (_realSubject == null)
			_realSubject = new RealSubject();

		return _realSubject.GetData();
	}
}