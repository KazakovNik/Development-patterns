# About the template
The Property Container pattern is a software architectural design pattern designed to store arbitrary properties of objects or application components. Instead of a rigid set of fields and methods in an object class, a dynamic container is used, allowing for the addition of properties whose values ​​are set at runtime.

# Basic principles
The key ideas of the pattern are as follows:
- An object has a special mechanism for storing attributes, values, and characteristics.
- Attributes are stored in a key-value structure.
- An attribute's value is retrieved through special read and write methods (Get, Set).
- Each object has its own set of unique properties.
- Flexibility is achieved by the ability to change the composition of attributes at runtime.

# Advantages
The main advantages of using this pattern are:
- High system flexibility: new properties can be easily added or removed without changing the class structure.
- Simplified inheritance and behavior modification: classes can be extended without being strictly bound to an interface.
- Centralized property management: implementation of a common mechanism for storing and processing any type of data.
- Improved performance by eliminating redundant condition checks and unnecessary variables.

# Application in real projects
This pattern is appropriate in situations where the data structure is constantly changing or initially unknown to the developer:
- Customizing the appearance of UI elements ("skinning").
- Storing document or file metadata.
- Application configuration files.
- Editing objects of complex architecture (e.g., a graphics editor or model builder).