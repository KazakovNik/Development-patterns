namespace ChainOfResponsibilityExample;

class SecondHandler : BaseHandler
{
	public override void Handle(string request)
	{
		foreach (char ch in request)
		{
			if (Char.IsDigit(ch))
			{
				Console.WriteLine("The second handler processed: " + request);
				return;
			}
		}

		base.Handle(request);
	}
}