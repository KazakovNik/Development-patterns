namespace BuilderExample;

public class Car
{
	public string Model { get; set; }
	public string EngineType { get; set; }
	public int WheelCount { get; set; }

	public override string ToString()
	{
		return $"Model: {Model}, Engine: {EngineType}, Number of wheels: {WheelCount}";
	}
}