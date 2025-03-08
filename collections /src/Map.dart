
void mapOperations() {
  Map<String, int> ages = {"Alice": 30, "Bob": 25, "Charlie": 35};

  print("Map: $ages");
  print("Alice's age: ${ages["Alice"]}");
  print("Keys: ${ages.keys}");
  print("Values: ${ages.values}");

  ages["David"] = 28;
  print("Added David: $ages");

  ages.remove("Bob");
  print("Removed Bob: $ages");

  ages.forEach((key, value) => print("$key: $value"));

  bool containsAlice = ages.containsKey("Alice");
  print("Contains Alice: $containsAlice");

  bool containsAge30 = ages.containsValue(30);
  print("Contains age 30: $containsAge30");
}