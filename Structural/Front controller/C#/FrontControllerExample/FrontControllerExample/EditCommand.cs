namespace FrontControllerExample;

public class EditCommand : ICommand
{
	public void Execute()
	{
		Console.WriteLine("Open the editing form");
	}
}