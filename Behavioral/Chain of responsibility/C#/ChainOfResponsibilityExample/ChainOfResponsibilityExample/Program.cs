using ChainOfResponsibilityExample;

var firstHandler = new FirstHandler();
var secondHandler = new SecondHandler();

firstHandler.SetNext(secondHandler);

firstHandler.Handle("123");
firstHandler.Handle("Hello World!");
firstHandler.Handle("Test123");

Console.ReadLine();