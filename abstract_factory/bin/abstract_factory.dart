// Abstract Products
abstract class Chair {
  String getDescription();
}

abstract class Table {
  String getMaterial();
}

// Concrete Products
class ModernChair implements Chair {
  @override
  String getDescription() {
    return 'Modern chair';
  }
}

class ClassicChair implements Chair {
  @override
  String getDescription() {
    return 'Classic chair';
  }
}

class ModernTable implements Table {
  @override
  String getMaterial() {
    return 'Glass';
  }
}

class ClassicTable implements Table {
  @override
  String getMaterial() {
    return 'Wood';
  }
}

// Abstract Factory
abstract class FurnitureFactory {
  Chair createChair();
  Table createTable();
}

// Concrete Factories
class ModernFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() {
    return ModernChair();
  }

  @override
  Table createTable() {
    return ModernTable();
  }
}

class ClassicFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() {
    return ClassicChair();
  }

  @override
  Table createTable() {
    return ClassicTable();
  }
}

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
