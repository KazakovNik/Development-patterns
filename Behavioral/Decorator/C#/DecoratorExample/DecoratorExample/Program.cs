using DecoratorExample;

var component = new ConcreteComponent();
var decoratedWithA = new ConcreteDecoratorA(component);
var fullyDecorated = new ConcreteDecoratorB(decoratedWithA);

Console.WriteLine(fullyDecorated.Operation());

Console.ReadLine();