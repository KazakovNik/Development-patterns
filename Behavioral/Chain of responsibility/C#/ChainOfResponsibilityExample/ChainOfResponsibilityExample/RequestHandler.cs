namespace ChainOfResponsibilityExample;

internal interface IRequestHandler
{
	void Handle(string request);

	IRequestHandler SetNext(IRequestHandler next);
}