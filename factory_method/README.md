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

## Relationship with Other Patterns
- Many architectures start with the Factory Method (simpler and extensible through subclasses) and evolve towards Abstract Factory, Prototype, or Builder (more flexible, but also more complex).
- Abstract Factory classes are often implemented using the Factory Method, although they can also be built based on the Prototype.
- The Factory Method can be used in conjunction with the Iterator pattern to allow collection subclasses to create suitable iterators for themselves.
- The Prototype pattern does not rely on inheritance but requires a complex initialization operation. On the contrary, the Factory Method is built on inheritance but does not require complex initialization.
- The Factory Method can be considered a special case of the Template Method pattern. Additionally, the Factory Method is often part of a larger class with Template Methods.

## Pros and Cons

### Pros

- The Factory Method pattern promotes loose coupling between the concrete products and the code that uses them.
- It allows for easy addition or modification of product types, without affecting the client code.
- The Factory Method pattern encourages the use of composition over inheritance, which can lead to more flexible and maintainable code.

### Cons
- The Factory Method pattern can lead to a proliferation of classes, as each concrete product requires a corresponding concrete creator.
