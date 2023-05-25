// Defining the product interface
abstract class Product {
  String getDescription();
}

// Concrete product classes
class ConcreteProductA implements Product {
  @override
  String getDescription() {
    return 'This is Concrete Product A';
  }
}

class ConcreteProductB implements Product {
  @override
  String getDescription() {
    return 'This is Concrete Product B';
  }
}

// Enum for product types
enum ProductType { A, B }

// Creator class
abstract class Creator {
  // The factory method
  Product createProduct(ProductType type);
}

// Concrete creator class
class ConcreteCreator extends Creator {
  @override
  Product createProduct(ProductType type) {
    Product product;

    switch (type) {
      case ProductType.A:
        product = ConcreteProductA();
        break;
      case ProductType.B:
        product = ConcreteProductB();
        break;
    }

    return product;
  }
}

void main() {
  Creator creator = ConcreteCreator();

  Product productA = creator.createProduct(ProductType.A);
  print(productA.getDescription()); // Output: This is Concrete Product A

  Product productB = creator.createProduct(ProductType.B);
  print(productB.getDescription()); // Output: This is Concrete Product B
}
