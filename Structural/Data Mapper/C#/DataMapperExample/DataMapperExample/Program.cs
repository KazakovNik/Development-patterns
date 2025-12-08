using DataMapperExample;

DataMapper dataMapper = new DataMapper();
dataMapper.Save(new Product(1, "Laptop", 15000.00m));

var product = dataMapper.LoadById(1);
Console.WriteLine($"Uploaded product: {product.Id} ({product.Name})");

Console.ReadLine();