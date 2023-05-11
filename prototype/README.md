# Prototype Pattern

The Prototype pattern is a creational design pattern that enables cloning of objects, generating a new instance with the same properties as the original. This pattern is useful when creating a new object with similar characteristics to an existing one, offering a more efficient alternative to constructing a new object from scratch.

## prtotype.dart
```
abstract class Shape {
  Shape clone();
  void display();
}

class Circle implements Shape {
  String color;

  Circle({required this.color});

  @override
  Circle clone() {
    return Circle(color: color);
  }

  @override
  void display() {
    print('Circle with color: $color');
  }
}

class Square implements Shape {
  String texture;

  Square({required this.texture});

  @override
  Square clone() {
    return Square(texture: texture);
  }

  @override
  void display() {
    print('Square with texture: $texture');
  }
}

void main() {
  // Create original objects
  Circle circle = Circle(color: 'red');
  Square square = Square(texture: 'brick');

  // Display original objects
  circle.display(); // Output: Circle with color: red
  square.display(); // Output: Square with texture: brick

  // Clone and modify objects
  Circle circleClone = circle.clone();
  circleClone.color = 'blue';

  Square squareClone = square.clone();
  squareClone.texture = 'wood';

  // Display cloned objects
  circleClone.display(); // Output: Circle with color: blue
  squareClone.display(); // Output: Square with texture: wood
}
```

## Key Concepts
- **Prototype**: The base interface or abstract class that defines the method for cloning itself.
- **Concrete Prototypes**: Classes that implement the **Prototype** interface and define the cloning behavior.
- **Client**: The class that creates and uses cloned objects.

## Prototype Pattern vs. `copyWith`
The Prototype pattern and `copyWith` method are two ways of creating new objects based on existing ones. While both can be used to achieve similar results, there are some key differences between them.

### Prototype Pattern
- The Prototype pattern relies on a `clone` method (or a similar one) that is defined in an interface or abstract class. Concrete classes implement this method to define their cloning behavior.
- When using the Prototype pattern, objects are responsible for cloning themselves. This makes it possible to create new instances without knowing the exact type of the object being cloned.
- The Prototype pattern is useful when you need to create complex object structures with shared and/or deep copying behavior.

### `copyWith` Method
- The `copyWith` method is a named method that is usually defined directly in the class.
- Using `copyWith` requires the client code to know the exact type of the object being copied, as the method is specific to each class.
- The `copyWith` method is more suitable for simple objects and data classes, where only a few properties need to be changed when creating a new instance.

In conclusion, if you have a simple object with few properties and need a new instance with some changes, the `copyWith` method is a suitable choice. On the other hand, if you need to deal with complex objects with shared or deep copying behavior, or if you want to create new instances without knowing the exact object type, the Prototype pattern is a better option.


## Relationship with Other Patterns

- Many architectures start with the **Factory Method** (simpler and extensible through subclasses) and evolve towards **Abstract Factory**, **Prototype**, or **Builder** (more flexible, but also more complex).
**Abstract Factory** classes are often implemented using the **Factory Method**, but they can also be built based on the **Prototype**.
- The **Prototype** pattern can be helpful for the Command pattern when the command needs to be copied before being added to the history of executed commands.
- Architectures based on **Composites** and **Decorators** can often be improved by implementing the **Prototype** pattern, which allows cloning complex object structures instead of rebuilding them from scratch.
- **Prototype** does not rely on inheritance but requires a complex initialization operation, whereas the Factory Method is built on inheritance but does not require complex initialization.
- Memento can sometimes be replaced with the **Prototype** if the object, the state of which needs to be saved in history, is simple enough and does not have active links to external resources or can be easily restored.
- **Abstract Factory**, **Builder**, and **Prototype** can all be implemented using the **Singleton** pattern.

## Pros and Cons

### Pros
- Simplifies the cloning process of objects with numerous fields and nested objects.
- Reduces the need for repetitive code in object creation.
- Facilitates adding new object types to the system.

### Cons
- Requires a complex implementation for objects with circular references.
- Cloning objects may not be always clear, as it depends on the specific cloning logic.

# Read more
- [Refactoring Guru: Prototype](https://refactoring.guru/design-patterns/prototype)
- [Wikipedia: Prototype pattern](https://en.wikipedia.org/wiki/Prototype_pattern)