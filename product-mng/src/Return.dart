mixin Returnable {
  String get name; // Requires 'name' from the class using this mixin.

  void returnItem() {
    print("$name returned.");
  }
}