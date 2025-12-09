namespace ChainOfResponsibilityExample;

abstract class BaseHandler : IRequestHandler
{
	protected IRequestHandler? NextHandler { get; set; }

	public virtual void Handle(string request)
	{
		if (NextHandler != null)
			NextHandler.Handle(request);
	}

	public IRequestHandler SetNext(IRequestHandler next)
	{
		this.NextHandler = next;
		return next;
	}
}