using CommandExample;

var lamp = new Light();
var remote = new RemoteControl();
remote.SetCommand(new LightOnCommand(lamp));
remote.PressButton();

Console.ReadLine();