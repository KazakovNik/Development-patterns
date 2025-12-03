using ImmutableInterfaceExample;

var person = new ImmutablePerson("Ivan Ivanov", 30);
Console.WriteLine($"Name: {person.Name}, Age: {person.Age}");

Console.ReadLine();