namespace RAIIExample;

internal sealed class FileProcessor : IDisposable
{
	private readonly StreamReader _reader;

	public FileProcessor(string filePath)
	{
		_reader = new StreamReader(filePath);
	}

	public void Dispose()
	{
		_reader.Dispose();
	}

	public string ReadLine()
	{
		return _reader.ReadLine();
	}
}