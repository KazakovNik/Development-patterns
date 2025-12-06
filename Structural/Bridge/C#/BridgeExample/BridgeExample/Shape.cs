namespace BridgeExample;

abstract class Shape
{
	protected IDrawAPI drawApi;

	public Shape(IDrawAPI api)
	{
		this.drawApi = api;
	}

	public abstract void Draw();
}