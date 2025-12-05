# About the template
The Multiton pattern is an extension of the well-known Singleton design pattern. While Singleton guarantees the existence of exactly one instance of a class, Multiton allows for a fixed number of instances, each associated with a unique key.

# Basic principles
- The class maintains a dictionary (or associative array), where each unique key corresponds to an object instance.
- Each object is created once and reused on subsequent accesses.
- Instances are created lazily (lazy initialization): a new instance is created only when requested for the first time.
- All object creation operations occur within the class itself, controlling external access.

# Advantages
- Ability to manage multiple objects globally and limit the number of instances created.
- Resource savings by reusing previously created objects.
- Easily manage multiple instances using keys.
- Support for unique states for each key.

# Application in real projects
The Multiton pattern is useful where controlled access to multiple objects with a guaranteed number of instances is required. Examples of use include:
- Database connection pool management.
- Caching resources with different data types.
- Storing system configuration for different user profiles.
- Controlling the states of widgets or interface components with different operating modes.

Thus, Multiton helps developers create manageable and optimized application architectures by minimizing redundancy and ensuring resource control.