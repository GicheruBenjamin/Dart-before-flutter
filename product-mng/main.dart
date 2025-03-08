// main.dart

import 'src/Product.dart';
import 'src/Shipping.dart';
import 'src/Return.dart';
import 'src/Cart.dart';

class Laptop extends Electronics with Shippable, Returnable {
  Laptop(String brand, String model, double price) : super("Laptop", price, brand, model);
}

class TShirt extends Clothing with Shippable, Returnable {
  TShirt(String size, String color, double price) : super("T-Shirt", price, size, color);
}

void processOrder(Product product) {
  print("Processing order for: ${product.name}");

  // Check if the product is Shippable and then call the method.
  if (product is Shippable) {
    product.ship("123 Main St");
  }

  // Check if the product is Returnable and then call the method.
  if (product is Returnable) {
    product.returnItem();
  }
}

void main() {
  var laptop = Laptop("Dell", "XPS 15", 1500.00);
  var tshirt = TShirt("L", "Blue", 25.00);

  var cart = ShoppingCart();
  cart.addItem(laptop);
  cart.addItem(tshirt);
  cart.displayCart();

  processOrder(laptop);
  processOrder(tshirt); // Added tshirt to test returnable and shippable with a clothing object.
}