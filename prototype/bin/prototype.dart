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
