# Bridge Pattern

The Bridge pattern is a structural design pattern that decouples an abstraction from its implementation, allowing both to vary independently. This is especially useful when a class can be extended in multiple dimensions, enabling the creation of platform-independent classes and applications.

## bridge.dart
```dart
// Abstract message class
abstract class Message {
  final MessageSender sender;

  Message(this.sender);

  void send(String content);
}

// Concrete class for SMS message
class SmsMessage extends Message {
  SmsMessage(MessageSender sender) : super(sender);

  @override
  void send(String content) {
    sender.sendMessage('SMS: $content');
  }
}

// Concrete class for Email message
class EmailMessage extends Message {
  EmailMessage(MessageSender sender) : super(sender);

  @override
  void send(String content) {
    sender.sendMessage('Email: $content');
  }
}

// Interface for message sender
abstract class MessageSender {
  void sendMessage(String content);
}

// Concrete sender class via HTTP API
class HttpApiSender implements MessageSender {
  @override
  void sendMessage(String content) {
    print('Sending via HTTP API: $content');
  }
}

// Concrete sender class via SMTP
class SmtpSender implements MessageSender {
  @override
  void sendMessage(String content) {
    print('Sending via SMTP: $content');
  }
}

void main() {
  MessageSender httpApiSender = HttpApiSender();
  MessageSender smtpSender = SmtpSender();

  Message smsMessage = SmsMessage(httpApiSender);
  smsMessage.send('Hello via HTTP API');

  Message emailMessage = EmailMessage(smtpSender);
  emailMessage.send('Hello via SMTP');
}
```

## Key Concepts

- **Abstraction**: Outlines the interface for the control part of the two class hierarchies and maintains a reference to the implementer.
- **Implementer**: Outlines the interface for implementation classes, providing basic operations used by the abstraction.
- **Concrete Implementations**: Implement the interface defined by the implementer, detailing concrete operations.
- **Refined Abstractions**: Extend the abstraction to add more functionality.

## Pros and Cons

### Pros

- **Separation of Concerns**: By separating the abstraction from the implementation, each can be modified independently without affecting the other.
- **Enhanced Flexibility**: Both the abstraction and the implementation can evolve separately.
- **Easier Maintenance**: The structure simplifies code maintenance and minimizes the risk of errors when modifying the system.

### Cons

- **Added Complexity**: Introducing the Bridge pattern can increase the complexity of the codebase due to the additional layers of abstraction.

## Further Reading

- [Refactoring Guru: Bridge](https://refactoring.guru/design-patterns/bridge)
- [Wikipedia: Bridge pattern](https://en.wikipedia.org/wiki/Bridge_pattern)

This approach ensures that your code is well-organized, allowing for independent development and maintenance of different parts of your system【15†source】【16†source】【17†source】.