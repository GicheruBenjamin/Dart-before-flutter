void listOperations() {
  List<int> numbers = [1, 2, 3, 4, 5];

  print("List: $numbers");
  print("First element: ${numbers.first}");
  print("Last element: ${numbers.last}");
  print("Length: ${numbers.length}");

  numbers.add(6);
  print("Added 6: $numbers");

  numbers.remove(3);
  print("Removed 3: $numbers");

  List<int> doubled = numbers.map((n) => n * 2).toList();
  print("Doubled: $doubled");

  List<int> even = numbers.where((n) => n % 2 == 0).toList();
  print("Even numbers: $even");

  numbers.forEach((n) => print("Element: $n"));
}