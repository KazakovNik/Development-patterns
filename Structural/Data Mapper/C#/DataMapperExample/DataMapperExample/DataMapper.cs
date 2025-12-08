namespace DataMapperExample;

public class DataMapper
{
	public void Save(Product product)
	{
		Console.WriteLine($"Product saved: {product.Id} ({product.Name})");
	}

	public Product LoadById(int id)
	{
		return new Product(id, "Test product", 1000.00m);
	}
}