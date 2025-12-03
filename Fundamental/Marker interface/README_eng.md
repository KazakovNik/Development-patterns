# About the template
A marker interface is a design pattern used in object-oriented programming to denote a class that has certain characteristics or is intended for a particular type of processing, even if the class itself does not implement any methods.

# Basic principles
The pattern is implemented as follows:
- An empty interface is created (without implementing any methods).
- Classes that need to mark the presence of a specific behavior or property implement this interface.
- External logic for the presence of the interface and the processing of objects accordingly.
Example of an empty interface:
	public interface Serializable { }
This interface does not provide any internal implementation; however, providing such an interface signals to other system components that the object supports serialization.

# Advantages
- Simplicity: Does not require complex implementations.
- Clarity of signaling: An interface clearly indicates the presence of a specific property of an object.
- Verifiability: Interface implementation can be easily verified using instanceof operators or similar operators.
- Type safety: Using interfaces allows for the creation of type-safe constructs and avoids compile-time errors.

# Application in real projects
Examples of using a marker interface:
- A classic example is the Serializable interface. Implementing this interface means that an object can be converted into a byte stream for transmission or storage.
- Attributes like [Obsolete] allow methods to be marked as obsolete, and classes themselves can implement special interfaces to display certain characteristics.