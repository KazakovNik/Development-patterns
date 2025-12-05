namespace AbstractFactoryExample;

public interface IGuiFactory
{
	IButton CreateButton();
}

public interface IButton
{
	void Render();
}

public class WindowsButton : IButton
{
	public void Render() => Console.WriteLine("Drawing a Windows window");
}

public class MacButton : IButton
{
	public void Render() => Console.WriteLine("Drawing a macOS window");
}

public class WindowsGuiFactory : IGuiFactory
{
	public IButton CreateButton() => new WindowsButton();
}

public class MacGuiFactory : IGuiFactory
{
	public IButton CreateButton() => new MacButton();
}