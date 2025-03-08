
void setOperations() {
  Set<String> fruits = {"apple", "banana", "orange"};

  print("Set: $fruits");
  print("Length: ${fruits.length}");

  fruits.add("grape");
  print("Added grape: $fruits");

  fruits.remove("banana");
  print("Removed banana: $fruits");

  print("Contains apple: ${fruits.contains("apple")}");

  Set<String> moreFruits = {"mango", "apple", "kiwi"};
  Set<String> union = fruits.union(moreFruits);
  print("Union: $union");

  Set<String> intersection = fruits.intersection(moreFruits);
  print("Intersection: $intersection");

  fruits.forEach((fruit) => print("Fruit: $fruit"));
}