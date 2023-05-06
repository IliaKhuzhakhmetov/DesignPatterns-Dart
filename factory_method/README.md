# Factory Method Pattern in Dart

The Factory Method pattern is a creational design pattern that provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created. This pattern is especially useful when the creation process of an object is complex, or when the same creation process should be shared among multiple related classes.

In this implementation, we have an abstract `Product` class representing the different types of products, and concrete `ConcreteProductA` and `ConcreteProductB` classes implementing the `Product` interface. We also have an abstract `Creator` class that defines a factory method `createProduct` for creating `Product` instances, and a concrete ConcreteCreator class that implements the `createProduct` method.

This Dart implementation uses an enum `ProductType` to represent the different product types, making the code more type-safe and efficient.

## Usage

```
import 'factory_method.dart';

void main() {
  Creator creator = ConcreteCreator();
  
  Product productA = creator.createProduct(ProductType.A);
  print(productA.getDescription()); // Output: This is Concrete Product A

  Product productB = creator.createProduct(ProductType.B);
  print(productB.getDescription()); // Output: This is Concrete Product B
}
```

## Key Concepts
- `Product Interface`: This is the base interface or abstract class for all product types that the factory method will create.
- `Concrete Products`: These classes implement the Product interface, representing specific types of products.
- `Creator Class`: This is the base class that contains the factory method to create products. Subclasses of this class can override the factory method to create different types of products.
- `Concrete Creator`: This class extends the Creator class and provides an implementation for the factory method, which creates and returns instances of the concrete products based on the input type.
- `ProductType Enum`: The enum is used to represent the different product types in a more type-safe and efficient way.

## Advantages
- Single Responsibility Principle: Separates the code that creates objects from the code that uses those objects.
- Open/Closed Principle: New product types can be added without changing the existing client code.
- Improves code reusability by encapsulating object creation logic into a separate method.
- Provides a more type-safe and efficient way to handle object creation by using enums instead of strings.
