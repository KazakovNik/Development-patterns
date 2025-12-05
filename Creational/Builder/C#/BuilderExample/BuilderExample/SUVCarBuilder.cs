namespace BuilderExample;

public class SUVCarBuilder : CarBuilder
{
	public override void Reset() => base.Reset();

	public override void BuildModel() => _car.Model = "SUV";

	public override void BuildEngineType() => _car.EngineType = "Diesel";

	public override void BuildWheels() => _car.WheelCount = 4;
}