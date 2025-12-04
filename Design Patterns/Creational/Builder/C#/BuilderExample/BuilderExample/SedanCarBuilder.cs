namespace BuilderExample;

public class SedanCarBuilder : CarBuilder
{
	public override void Reset() => base.Reset();

	public override void BuildModel() => _car.Model = "Sedan";

	public override void BuildEngineType() => _car.EngineType = "Petrol";

	public override void BuildWheels() => _car.WheelCount = 4;
}