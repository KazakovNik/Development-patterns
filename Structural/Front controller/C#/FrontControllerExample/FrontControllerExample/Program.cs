using FrontControllerExample;

Console.WriteLine("Enter command (View or Edit): ");
var requestType = Console.ReadLine();

var fc = new FrontController();
fc.HandleRequest(requestType);

Console.ReadLine();