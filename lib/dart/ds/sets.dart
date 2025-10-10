/* Set is a dataStructure which stores unique values in any order.
*
* 1)Static Declaration: Set<Type> set = {value1,value2,value3,...};
*
* 2) Dynamic Declration: Set<Type> set ={}
* It is necessary to use Set<Type> instead of String since if it will be considered as a map if not explicitly mentioned as a Set.
*
* */

import 'dart:io';

void main() {
  // Declaration of a static Set
  Set<String> names = {
    "Aditya",
    "Sandesh",
    "Jivesh",
    "Parth",
    "Varad",
    "Rohan"
  };

  // Declaration of an empty dynamic Set
  Set<String> dynamicNames = {};

  /*
   NOTE:
   1) Sets are unordered collections of unique elements.
   2) Duplicates are automatically removed.
   3) You cannot access elements using an index (like in List).
   */

  // Printing all elements
  print("Static Set: $names");

  // Adding elements
  names.add("Nikhil");
  names.add("Aditya"); // Duplicate → will not be added
  print("After adding elements: $names");

  // Adding multiple elements
  names.addAll({"Kiran", "Raj", "Sneha"});
  print("After addAll(): $names");

  // Removing elements
  names.remove("Varad");
  print("After remove('Varad'): $names");

  // Checking if an element exists
  print("Contains 'Aditya': ${names.contains('Aditya')}");
  print("Contains 'Neha': ${names.contains('Neha')}");

  // Checking if set is empty
  print("Is empty: ${names.isEmpty}");
  print("Is not empty: ${names.isNotEmpty}");

  // Length of set
  print("Length of set: ${names.length}");

  // Iterating through Set
  print("\nIterating over elements:");
  for (var name in names) {
    stdout.write("$name ");
  }
  print("");

  // Using forEach()
  print("Using forEach():");
  names.forEach((element) => stdout.write("$element "));
  print("\n");

  // Converting to List
  List<String> nameList = names.toList();
  print("Converted to List: $nameList");

  // Clearing the set
  // names.clear();
  // print("After clear(): $names");

  // ------------------------
  // Set Operations:
  // ------------------------
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};

  print("\nSet A: $setA");
  print("Set B: $setB");

  // Union (A ∪ B)
  print("Union: ${setA.union(setB)}");

  // Intersection (A ∩ B)
  print("Intersection: ${setA.intersection(setB)}");

  // Difference (A - B)
  print("Difference (A - B): ${setA.difference(setB)}");

  // Difference (B - A)
  print("Difference (B - A): ${setB.difference(setA)}");

  // ------------------------
  // Reading input from user into a Set
  // ------------------------
  print("\nEnter number of elements to add in dynamic set:");
  int? count = int.tryParse(stdin.readLineSync() ?? '');

  for (int i = 0; i < (count ?? 0); i++) {
    stdout.write("Enter element ${i + 1}: ");
    String? element = stdin.readLineSync();
    if (element != null && element.isNotEmpty) dynamicNames.add(element);
  }

  print("Your dynamic Set: $dynamicNames");

  // Searching for a key
  stdout.write("Enter value to search: ");
  String? key = stdin.readLineSync();

  if (dynamicNames.contains(key)) {
    print("Value '$key' found in Set.");
  } else {
    print("Value '$key' not found in Set.");
  }
}

