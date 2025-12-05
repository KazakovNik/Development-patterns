namespace FactoryMethodExample;

internal interface IProduct
{
	void Operation();
}

internal class ProductA : IProduct
{
	public void Operation()
	{
		Console.WriteLine("Operation performed by product A");
	}
}

internal class ProductB : IProduct
{
	public void Operation()
	{
		Console.WriteLine("Operation performed by product B");
	}
}

internal abstract class Creator
{
	public abstract IProduct FactoryMethod();

	public void SomeOperation()
	{
		var product = FactoryMethod();
		product.Operation();
	}
}

internal class ConcreteCreatorA : Creator
{
	public override IProduct FactoryMethod()
	{
		return new ProductA();
	}
}

internal class ConcreteCreatorB : Creator
{
	public override IProduct FactoryMethod()
	{
		return new ProductB();
	}
}