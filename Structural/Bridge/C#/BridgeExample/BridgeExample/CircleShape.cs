namespace BridgeExample;

class CircleShape : Shape
{
	private readonly int _x, _y, _radius;

	public CircleShape(int x, int y, int radius, IDrawAPI drawApi) : base(drawApi)
	{
		_x = x;
		_y = y;
		_radius = radius;
	}

	public override void Draw()
	{
		drawApi.DrawCircle(_radius, _x, _y);
	}
}