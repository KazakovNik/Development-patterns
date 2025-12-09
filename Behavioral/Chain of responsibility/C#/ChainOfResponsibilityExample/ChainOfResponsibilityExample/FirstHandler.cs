namespace ChainOfResponsibilityExample;

class FirstHandler : BaseHandler
{
	public override void Handle(string request)
	{
		if (request.Length > 5)
		{
			Console.WriteLine("The first processor processed: " + request);
		}
		else
		{
			base.Handle(request);
		}
	}
}