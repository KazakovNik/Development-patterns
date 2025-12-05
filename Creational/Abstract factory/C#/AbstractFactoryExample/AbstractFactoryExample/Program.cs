using AbstractFactoryExample;

string os = Environment.OSVersion.Platform.ToString().Contains("Win") ? "windows" : "mac";
IGuiFactory guiFactory = os == "windows"
	? new WindowsGuiFactory()
	: new MacGuiFactory();

IButton button = guiFactory.CreateButton();
button.Render();

Console.ReadLine();