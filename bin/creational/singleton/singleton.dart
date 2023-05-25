// Singleton Class
class Singleton {
  // Private static instance
  static Singleton? _instance;

  // Private constructor
  Singleton._();

  // Public static method to access the singleton instance
  static Singleton getInstance() {
    _instance ??= Singleton._();
    return _instance!;
  }

  // Example method in the Singleton class
  void doSomething() {
    print('Singleton instance is doing something!');
  }
}

void main() {
  // Get the singleton instance and call its methods
  Singleton instance1 = Singleton.getInstance();
  instance1.doSomething();

  // Get another instance (which should be the same)
  Singleton instance2 = Singleton.getInstance();
  instance2.doSomething();

  // Check if both instances are the same
  print('Both instances are the same: ${instance1 == instance2}');
}
