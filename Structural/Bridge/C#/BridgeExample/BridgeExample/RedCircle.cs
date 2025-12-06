namespace BridgeExample;

public class RedCircle : IDrawAPI
{
	public void DrawCircle(int radius, int x, int y)
	{
		Console.WriteLine($"Drawing a red circle at ({x}, {y}) with radius {radius}.");
	}
}