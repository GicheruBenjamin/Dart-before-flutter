import 'Product.dart';

class ShoppingCart {
  List<Product> _items = [];

  void addItem(Product product) {
    _items.add(product);
  }

  void removeItem(Product product) {
    _items.remove(product);
  }

  double get totalPrice {
    double total = 0;
    for (var item in _items) {
      total += item.getDiscountedPrice();
    }
    return total;
  }

  void displayCart() {
    if (_items.isEmpty) {
      print("Shopping cart is empty.");
      return;
    }
    print("Shopping Cart:");
    for (var item in _items) {
      print("- ${item.getDescription()} (Discounted: \$${item.getDiscountedPrice().toStringAsFixed(2)})");
    }
    print("Total: \$${totalPrice.toStringAsFixed(2)}");
  }
}
