using SingletonExample;

var logger = Logger.Instance;
logger.Log("First message");

var anotherLogger = Logger.Instance;
anotherLogger.Log("Second message");

Console.ReadLine();