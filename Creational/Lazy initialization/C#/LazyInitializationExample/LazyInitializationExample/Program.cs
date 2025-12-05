using LazyInitializationExample;

var myObject = new MyClass();
Console.WriteLine("Before accessing instance");

var instance = myObject.GetInstance();
Console.WriteLine($"After accessing instance: {instance.Value}");

Console.ReadLine();