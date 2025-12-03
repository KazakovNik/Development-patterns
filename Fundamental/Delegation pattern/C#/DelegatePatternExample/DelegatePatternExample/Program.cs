using DelegatePatternExample;

IEventHandler myHandler = new DelegatePatternExample.EventHandler();

var manager = new EventManager(myHandler);

manager.RaiseEvent("This is a test message");

Console.ReadLine();