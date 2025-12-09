# About the template
The main goal of the Command pattern is to provide flexibility and extensibility to the system by separating the sender of a command from its executor.

# Basic principles
- Command Interface: Defines a common interface for all command classes that include a method.
- ConcreteCommand: Implement specific actions that conform to the command interface.
- Receiver: An object that performs the action triggered by the command.
- Client: Creates a command object and passes it to the invoker.
- Invoker: Requests the command to be executed.

# Advantages
- Separation of sender and receiver: Clients are independent of specific command implementations.
- Support for undoing operations: The undo command can be easily implemented.
- Logging and transactionality: Easily maintain a history of executed commands and restore the system state.
- Parameterizability of behavior: A single command can be used multiple times with different parameters.
- Simplification of adding new features: New commands can be introduced without changing existing classes.

# Application in real projects
- Graphical User Interface (GUI): User actions (such as button presses) are converted into commands, allowing flexible control over various operations.
- Document Editors: Editable programs often use the Command pattern to implement change history, undo, and redo support.
- Games: Game controllers and scripts can handle events by sending appropriate commands.
- Remote Device Control: IoT devices are controlled remotely by sending commands.

Thus, the Command pattern is a powerful tool for structuring applications, especially where undo support, extensibility, and architectural flexibility are important.