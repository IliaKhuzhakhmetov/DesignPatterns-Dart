# Builder Pattern in Dart

The Builder pattern is a creational design pattern that separates the construction of a complex object from its representation. By doing so, the same construction process can be used to create different representations. This pattern is particularly useful when the object creation process involves many steps, and the object can have different configurations.

In this example, we use the Builder pattern to create a `Pizza` object. The `Pizza` class represents the final product, and the `PizzaBuilder` abstract class defines the steps to create a `Pizza`. The `ItalianPizzaBuilder` class implements these steps for an Italian pizza. The `PizzaDirector` class is responsible for the construction process, using a specific `PizzaBuilder` to create a pizza.

## Usage

```
void main() {
  PizzaDirector director = PizzaDirector();
  ItalianPizzaBuilder builder = ItalianPizzaBuilder();

  director.makeItalianPizza(builder);
  Pizza pizza = builder.build();

  print(pizza.getDescription());
  // Output: Pizza with thin crust dough, marinara sauce, and mozzarella and basil topping.
}
```

## Key Concepts
- *Product*: This is the final object that the Builder pattern constructs. In this example, it's the`Pizza` class.
- *Builder* Interface: This is the common interface for all concrete builders. It defines the steps needed to create the final product. In this example, it's the `PizzaBuilder` abstract class.
- *Concrete Builder*: This class implements the Builder interface, providing an implementation for each step of the object construction process. In this example, it's the `ItalianPizzaBuilder` class.
- *Director*: This class is responsible for managing the construction process. It uses a specific Builder to create the final product. In this example, it's the `PizzaDirector` class.

## Relationship with Other Patterns

- Many architectures begin with the implementation of the Factory Method pattern (simpler and extendable through subclasses) and gradually evolve toward Abstract Factory, Prototype, or Builder patterns (more flexible but also more complex).
- Builder focuses on the step-by-step construction of complex objects, while Abstract Factory emphasizes the creation of families of related products. The Builder returns a product only after completing all steps, whereas Abstract Factory returns the product immediately.
- The Builder pattern allows for the incremental construction of a Composite tree.
- The Builder pattern can be implemented as a Bridge, with the director playing the role of an abstraction and the builders acting as implementations.
- Abstract Factory, Builder, and Prototype patterns can all be realized using the Singleton design pattern.

## Pros and Cons

### Pros
- The Builder pattern allows for constructing complex objects step by step, resulting in more maintainable and readable code.
- It enables creating different representations of the same object using the same construction process.
- It promotes separation of concerns by keeping the object construction code separate from the object representation code.

### Cons
- The Builder pattern can introduce additional complexity to the code, as it requires creating multiple classes and interfaces.
- Clients may be tied to specific builder classes, as the director's interface may not have a method for obtaining the result.

# Read more
If you'd like to learn more about design patterns in programming, you can check out the following [resource](https://refactoring.guru/design-patterns/builder)