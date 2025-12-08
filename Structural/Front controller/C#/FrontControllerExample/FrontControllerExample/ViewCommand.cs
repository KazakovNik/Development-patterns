namespace FrontControllerExample;

public class ViewCommand : ICommand
{
	public void Execute()
	{
		Console.WriteLine("Displaying the viewing page");
	}
}