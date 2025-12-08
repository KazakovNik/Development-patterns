namespace FrontControllerExample;

public class FrontController : IFrontController
{
	private readonly Dictionary<string, ICommand> _commands;

	public FrontController()
	{
		_commands = new Dictionary<string, ICommand>();
		_commands.Add("view", new ViewCommand());
		_commands.Add("edit", new EditCommand());
	}

	public void HandleRequest(string requestType)
	{
		if (_commands.ContainsKey(requestType.ToLower()))
			_commands[requestType].Execute();
		else
			Console.WriteLine("Error: Invalid request type!");
	}
}