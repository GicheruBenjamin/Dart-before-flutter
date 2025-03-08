mixin Shippable {
  String get name; // Requires 'name' from the class using this mixin.

  void ship(String address) {
    print("Shipping $name to $address");
  }
}