abstract class Product {
  String name;
  double price;

  Product(this.name, this.price);

  double getDiscountedPrice();
  String getDescription();
}

class Electronics extends Product {
  String brand;
  String model;

  Electronics(String name, double price, this.brand, this.model) : super(name, price);

  @override
  double getDiscountedPrice() => price * 0.9;

  @override
  String getDescription() => "$name ($brand $model), Price: \$${price.toStringAsFixed(2)}";
}

class Clothing extends Product {
  String size;
  String color;

  Clothing(String name, double price, this.size, this.color) : super(name, price);

  @override
  double getDiscountedPrice() => price * 0.8;

  @override
  String getDescription() => "$name (Size: $size, Color: $color), Price: \$${price.toStringAsFixed(2)}";
}