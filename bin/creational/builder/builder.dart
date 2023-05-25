class Pizza {
  String? dough;
  String? sauce;
  String? topping;

  String getDescription() {
    return 'Pizza with $dough dough, $sauce sauce, and $topping topping.';
  }
}

abstract class PizzaBuilder {
  void setDough(String dough);
  void setSauce(String sauce);
  void setTopping(String topping);
}

class ItalianPizzaBuilder implements PizzaBuilder {
  final Pizza _pizza;

  ItalianPizzaBuilder() : _pizza = Pizza();

  @override
  void setDough(String dough) {
    _pizza.dough = dough;
  }

  @override
  void setSauce(String sauce) {
    _pizza.sauce = sauce;
  }

  @override
  void setTopping(String topping) {
    _pizza.topping = topping;
  }

  Pizza build() {
    return _pizza;
  }
}

class PizzaDirector {
  void makeItalianPizza(PizzaBuilder builder) {
    builder.setDough('thin crust');
    builder.setSauce('marinara');
    builder.setTopping('mozzarella and basil');
  }
}

void main() {
  PizzaDirector director = PizzaDirector();
  ItalianPizzaBuilder builder = ItalianPizzaBuilder();

  director.makeItalianPizza(builder);
  Pizza pizza = builder.build();

  print(pizza.getDescription());
  // Output: Pizza with thin crust dough, marinara sauce, and mozzarella and basil topping.
}
