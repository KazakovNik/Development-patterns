namespace BridgeExample;

public class BlueCircle : IDrawAPI
{
	public void DrawCircle(int radius, int x, int y)
	{
		Console.WriteLine($"Drawing a blue circle at ({x}, {y}) with radius {radius}.");
	}
}