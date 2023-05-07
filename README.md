# Design Patterns in Dart

This repository contains implementations of various design patterns in the Dart programming language. These patterns can help you write clean, reusable, and maintainable code. Each pattern is implemented as a separate Dart project, along with a dedicated `README.md` file explaining the pattern, its key concepts, and usage.

## Table of Contents

- [Creational Patterns](#creational-patterns)
  - [Factory Method](#factory-method)
- [Structural Patterns](#structural-patterns)
- [Behavioral Patterns](#behavioral-patterns)

## Creational Patterns

Creational patterns deal with the process of object creation.

### Factory Method

The Factory Method pattern provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created. This pattern is useful when the creation process of an object is complex or when the same creation process should be shared among multiple related classes.

- [Implementation](factory_method/bin/factory_method.dart)
- [README](factory_method/README.md)

### Absract Factory

The Abstract Factory pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes. This pattern is useful when you have multiple sets of related objects that you want to create and manage together.

- [Implementation](absract_factory/bin/absract_factory.dart)
- [README](absract_factory/README.md)

## Structural Patterns

Structural patterns are concerned with the composition of classes and objects.

## Behavioral Patterns

Behavioral patterns define the ways in which objects interact and communicate with each other.

## Contributing

Feel free to contribute by submitting a pull request or opening an issue if you find any problems or have suggestions for improvements.