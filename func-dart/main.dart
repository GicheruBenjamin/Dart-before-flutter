
// 1. First-Class Functions: Functions as variables

// Assigning a function to a variable
int add(int a, int b) => a + b;
var operation = add; // 'operation' now references the 'add' function

void firstClassFunctionExample() {
  print(operation(5, 3)); // Output: 8
}

// 2. Anonymous Functions (Lambdas): Functions without names

void anonymousFunctionExample() {
  var numbers = [1, 2, 3, 4, 5];
  var squared = numbers.map((n) => n * n); // Using an anonymous function with map
  print(squared.toList()); // Output: [1, 4, 9, 16, 25]
}

// 3. Higher-Order Functions: Functions that take or return other functions

// A function that takes another function as an argument
void applyOperation(int a, int b, int Function(int, int) operation) {
  print(operation(a, b));
}

// A function that returns another function
Function(int) multiplier(int factor) {
  return (int number) => number * factor;
}

void higherOrderFunctionExample() {
  applyOperation(10, 5, add); // Using the 'add' function
  var double = multiplier(2);
  print(double(7)); // Output: 14
}

// 4. Pure Functions: Functions with no side effects

// Pure function: Always returns the same output for the same input, no side effects
int pureAdd(int a, int b) {
  return a + b;
}

// Impure function: Modifies external state (side effect)
int impureAdd(int a, int b) {
  var result = a + b;
  print("The result is: $result"); // Side effect: printing to console
  return result;
}

void pureFunctionExample() {
  print(pureAdd(2, 3)); // Output: 5
  print(pureAdd(2, 3)); // Output: 5 (same output for same input)
  impureAdd(2,3); //side effect of printing.
}

// 5. Immutability (with final and const):

void immutabilityExample() {
  final numbers = [1, 2, 3];
  // numbers.add(4); // Error: Cannot modify a final list
  final newNumbers = [...numbers, 4]; // Create a new list with the added element
  print(newNumbers); // Output: [1, 2, 3, 4]

  const pi = 3.14;
  // pi = 3.15; // Error: Cannot modify a const variable
}

// 6. Closures: Functions that capture variables from their surrounding scope

Function counter() {
  int count = 0;
  return () {
    count++;
    return count;
  };
}

void closureExample() {
  var increment = counter();
  print(increment()); // Output: 1
  print(increment()); // Output: 2
  print(increment()); // Output: 3
}

// 7. List manipulation methods (map, where, reduce, fold)

void listManipulationExample() {
  var numbers = [1, 2, 3, 4, 5];

  var doubled = numbers.map((n) => n * 2).toList();
  print(doubled); // Output: [2, 4, 6, 8, 10]

  var evenNumbers = numbers.where((n) => n % 2 == 0).toList();
  print(evenNumbers); // Output: [2, 4]

  var sum = numbers.reduce((value, element) => value + element);
  print(sum); // Output: 15

  var foldedSum = numbers.fold(10, (previousValue, element) => previousValue + element);
    print(foldedSum); //Output: 25.
}

void main() {
  firstClassFunctionExample();
  anonymousFunctionExample();
  higherOrderFunctionExample();
  pureFunctionExample();
  immutabilityExample();
  closureExample();
  listManipulationExample();
}