static int Multiply(int x, int y)
{
	return x * y;
}

Console.Write("Enter the first number: ");
int num1 = Convert.ToInt32(Console.ReadLine());

Console.Write("Enter the second number: ");
int num2 = Convert.ToInt32(Console.ReadLine());

Console.WriteLine($"The product of {num1} and {num2} is {Multiply(num1, num2)}");

Console.ReadLine();