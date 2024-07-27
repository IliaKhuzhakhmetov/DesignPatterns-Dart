# Design Patterns in Dart

This repository contains implementations of various design patterns in the Dart programming language. These patterns can help you write clean, reusable, and maintainable code. Each pattern is implemented as a separate Dart project, along with a dedicated `README.md` file explaining the pattern, its key concepts, and usage.

## Table of Contents

- [Creational Patterns](#creational-patterns)
  - [Factory Method](#factory-method)
  - [Abstract Factory](#abstract-factory)
  - [Builder](#builder)
  - [Prototype](#prototype)
  - [Singleton](#singleton)
- [Structural Patterns](#structural-patterns)
  - [Adapter](#adapter)
  - [Bridge](#bridge)
- [Behavioral Patterns](#behavioral-patterns)

## Creational Patterns

Creational patterns deal with the process of object creation.

### Factory Method

The Factory Method pattern provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created. This pattern is useful when the creation process of an object is complex or when the same creation process should be shared among multiple related classes.

- [Implementation](bin/creational/factory_method/factory_method.dart)
- [README](bin/creational/factory_method/README.md)

### Absract Factory

The Abstract Factory pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes. This pattern is useful when you have multiple sets of related objects that you want to create and manage together.

- [Implementation](bin/creational/abstract_factory/abstract_factory.dart)
- [README](bin/creational/abstract_factory/README.md)

### Builder

The Builder pattern separates the construction of a complex object from its representation, allowing the same construction process to create different representations. This pattern is useful when you need to build complex objects with various configurations while maintaining the construction process clean and organized.

- [Implementation](bin/creational/builder/builder.dart)
- [README](bin/creational/builder/README.md)

### Prototype

The Prototype pattern allows the creation of new objects by cloning existing ones, without depending on their concrete classes. This pattern is useful when object creation is expensive or complicated, and you want to reuse existing instances to save resources and time.

- [Implementation](bin/creational/prototype/prototype.dart)
- [README](bin/creational/prototype/README.md)

### Singleton

The Singleton pattern ensures that a class has only one instance and provides a global access point to that instance. This pattern is beneficial when the creation of multiple instances is unnecessary or expensive, and you want to manage resources efficiently by reusing the single instance.

- [Implementation](bin/creational/singleton/singleton.dart)
- [README](bin/creational/singleton/README.md)

## Structural Patterns

Structural patterns are concerned with the composition of classes and objects.

### Adapter

The Adapter pattern is a structural design pattern that allows objects with incompatible interfaces to work together. This pattern involves a single class, the adapter, which is responsible for communication between the two different interfaces.

- [Implementation](bin/structural/adapter/singleton.dart)
- [README](bin/structural/adapter/README.md)

### Bridge

The Bridge pattern is a structural design pattern that decouples an abstraction from its implementation, allowing both to vary independently. This is especially useful when a class can be extended in multiple dimensions, enabling the creation of platform-independent classes and applications.

- [Implementation](bin/structural/bridge/bridge.dart)
- [README](bin/structural/bridge/README.md)

### Composite

The Composite pattern is a structural design pattern that allows you to compose objects into tree structures to represent part-whole hierarchies. It lets clients treat individual objects and compositions of objects uniformly. This pattern is particularly useful when you need to work with objects that form a tree-like structure, enabling you to perform operations on the entire structure as if it were a single object.

- [Implementation](bin/structural/composite/composite.dart)
- [README](bin/structural/composite/README.md)

### Decorator

The Decorator Pattern is a structural design pattern that allows you to dynamically add behaviors to objects by wrapping them in special wrapper objects called decorators. This pattern provides a flexible alternative to subclassing for extending functionality. 

- [Implementation](bin/structural/decorator/decorator.dart)
- [README](bin/structural/decorator/README.md)

## Behavioral Patterns

Behavioral patterns define the ways in which objects interact and communicate with each other.

## Contributing

Feel free to contribute by submitting a pull request or opening an issue if you find any problems or have suggestions for improvements.
