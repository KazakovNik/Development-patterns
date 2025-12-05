namespace BuilderExample;

public class CarDirector
{
	public void BuildCar(CarBuilder builder)
	{
		builder.Reset();
		builder.BuildModel();
		builder.BuildEngineType();
		builder.BuildWheels();
	}
}