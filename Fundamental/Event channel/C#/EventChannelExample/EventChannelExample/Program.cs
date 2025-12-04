using EventChannelExample;

var eventChannel = new EventChannel<string>();

Action<string> logHandler = msg => Console.WriteLine($"Received message: {msg}");
eventChannel.Subscribe(logHandler);

eventChannel.Publish("Hello from Event Channel!");

eventChannel.Unsubscribe(logHandler);

eventChannel.Publish("This should not be printed.");

Console.ReadLine();