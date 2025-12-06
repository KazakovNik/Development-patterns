using BridgeExample;

var redCircle = new CircleShape(10, 10, 5, new RedCircle());
redCircle.Draw();

var blueCircle = new CircleShape(20, 20, 8, new BlueCircle());
blueCircle.Draw();

Console.ReadLine();