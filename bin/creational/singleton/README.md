# Singleton Pattern

The Singleton pattern is a creational design pattern that ensures a class has only one instance and provides a global point of access to that instance. This pattern is useful when you want to have a single instance of a class that is accessible from any part of your application.

## singleton.dart
```
// Singleton Class
class Singleton {
  // Private static instance
  static Singleton? _instance;

  // Private constructor
  Singleton._();

  // Public static method to access the singleton instance
  static Singleton getInstance() {
    _instance ??= Singleton._();
    return _instance!;
  }

  // Example method in the Singleton class
  void doSomething() {
    print('Singleton instance is doing something!');
  }
}

void main() {
  // Get the singleton instance and call its methods
  Singleton instance1 = Singleton.getInstance();
  instance1.doSomething();

  // Get another instance (which should be the same)
  Singleton instance2 = Singleton.getInstance();
  instance2.doSomething();

  // Check if both instances are the same
  print('Both instances are the same: ${instance1 == instance2}');
}
```

## Key Concepts
- **Singleton**: The class that has only one instance and provides a global access point to that instance.
- **Private Constructor**: A private constructor is used to prevent creating new instances of the Singleton class from outside the class.
- **Static Instance**: A static instance of the Singleton class holds the unique instance of the class.
- **Static Method**: A public static method is used to access the Singleton instance, creating it if it does not exist.

## Relationship with Other Patterns
- The **Facade** pattern can be implemented as a Singleton since usually only one facade object is needed.
- The **Flyweight** pattern may resemble Singleton if, for a specific task, you managed to reduce the number of objects to one. However, remember that there are two fundamental differences between the patterns:
  - Unlike Singleton, you can have multiple flyweight objects.
  - Flyweight objects must be immutable, whereas Singleton objects can have their state changed.
- **Abstract Factory**, **Builder**, and **Prototype** can all be implemented using the Singleton pattern.

## Pros and Cons

### Pros
- Ensures there is only one instance of a class.
- Provides a global access point to the instance.
- Implements lazy initialization for the Singleton object.

### Cons
- Violates the Single Responsibility Principle.
- Can mask poor design choices.
- Multithreading issues may arise.
- Requires constant creation of Mock objects during unit testing.

# Read more
- [Refactoring Guru: Singleton](https://refactoring.guru/design-patterns/singleton)
- [Wikipedia: Singleton pattern](https://en.wikipedia.org/wiki/Singleton_pattern)