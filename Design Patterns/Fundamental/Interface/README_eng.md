# About the template
The primary goal of the Interface pattern is to define a standard way for objects of different classes to interact without depending on specific implementations. An interface is a contract that defines the behavior of objects, ensuring that they can be accessed in the same way regardless of the class's implementation.

# Basic principles
Interfaces allow an abstraction to be separated from its concrete implementation. Instead of being directly bound to a class, an object interacts exclusively through the interface, providing flexibility and extensibility for the system. Key points:
- An interface declares the methods and properties required by classes to conform to a specific behavior.
- The implementation of the methods is provided by classes implementing the interface.
- Clients interact with the object through the interface, not directly with the class, thus achieving loose coupling between components.

# Advantages
Using interfaces offers a number of advantages:
- Flexibility: You can replace one implementation with another class without changing the client code.
- Testability: It's easier to create tests thanks to the ability to use mocks.
- Maintainability: It improves the project structure, making it easier to modify individual parts of the application.
- Scalability: New classes can be easily integrated into the system by implementing existing interfaces.

# Application in real projects
Interfaces are widely used in software development to organize application architecture. Here are some typical scenarios:
- Providing support for polymorphism and unifying calls to different implementations.
- Managing dependencies in systems using Dependency Injection (DI).
- Creating microservices and APIs that provide unified access to functionality.
- Supporting the concept of plug-ins and extension modules.