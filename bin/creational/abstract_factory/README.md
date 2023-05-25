# Abstract Factory Pattern in Dart

The Abstract Factory pattern is a creational design pattern that provides an interface for creating families of related or dependent objects without specifying their concrete classes. This pattern is useful when you have multiple sets of related objects that you want to create and manage together.

In this implementation, we have an abstract `FurnitureFactory` that creates two types of products: chairs and tables. There are two concrete furniture factories: `ModernFurnitureFactory` and `ClassicFurnitureFactory`. Each concrete factory creates its own set of products, such as `ModernChair`, `ClassicChair`, `ModernTable`, and `ClassicTable`.

This Dart implementation demonstrates how to create instances of the concrete factories and use them to create different types of chairs and tables.

## Usage

```
import 'abstract_factory.dart';

void main() {
  // Create a Modern Furniture Factory
  FurnitureFactory modernFurnitureFactory = ModernFurnitureFactory();
  Chair modernChair = modernFurnitureFactory.createChair();
  Table modernTable = modernFurnitureFactory.createTable();
  print(modernChair.getDescription()); // Output: Modern chair
  print(modernTable.getMaterial());    // Output: Glass

  // Create a Classic Furniture Factory
  FurnitureFactory classicFurnitureFactory = ClassicFurnitureFactory();
  Chair classicChair = classicFurnitureFactory.createChair();
  Table classicTable = classicFurnitureFactory.createTable();
  print(classicChair.getDescription()); // Output: Classic chair
  print(classicTable.getMaterial());    // Output: Wood
}
```

## Key Concepts
- `Abstract Products`: These are the base interfaces or abstract classes for all product types that the abstract factory will create.
- `Concrete Products`: These classes implement the abstract product interfaces, representing specific types of products.
- `Abstract Factory`: This is the base interface that contains the factory methods for creating products. Concrete factories implement this interface to create instances of the concrete products.
- `Concrete Factories`: These classes implement the Abstract Factory interface, creating instances of the concrete products based on the factory method implementation.

## Relationship with Other Patterns

- Numerous design approaches begin with the simpler and subclass-extensible Factory Method and progress toward more flexible and intricate patterns like Abstract Factory, Prototype, or Builder.
- While the Builder pattern emphasizes the step-by-step construction of complex objects, the Abstract Factory is tailored to produce families of interconnected products. Builders deliver the final product after completing all necessary steps, whereas Abstract Factories provide products instantly.
- Abstract Factory classes frequently use the Factory Method for implementation, but they may also be built upon the Prototype pattern.
- The Abstract Factory can replace the Facade pattern as a way to conceal platform-specific classes.
- Collaborating with the Bridge pattern, the Abstract Factory can be advantageous when working with abstractions that are compatible only with certain implementations. In such cases, the factory determines the types of both the created abstractions and the implementations.
- Implementations of the Abstract Factory, Builder, and Prototype patterns can all leverage the Singleton pattern.

## Pros and Cons

### Pros

- Ensures compatibility of created products.
- Decouples client code from specific product classes.
- Consolidates product creation code in one place, simplifying code maintenance.
- Streamlines the process of adding new products to the program.
- Implements the Open/Closed Principle.

### Cons

- Complicates program code due to the introduction of numerous additional classes.
- Requires the presence of all product types in each variation.

# Read more
If you'd like to learn more about design patterns in programming, you can check out the following [resource](https://refactoring.guru/design-patterns/abstract-factory)