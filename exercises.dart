import 'dart:io';

void main() async {
  print('Enter a string:');
  String userInput = stdin.readLineSync()!;

  // Perform string manipulation
  stringManipulation(userInput);

  // Store results in a collection (list)
  List<String> results = [
    'Original: $userInput',
    'Uppercase: ${userInput.toUpperCase()}',
    'Reversed: ${userInput.split('').reversed.join()}',
    'Length: ${userInput.length}'
  ];

  // Get the current date and time
  DateTime now = DateTime.now();
  results.add('Timestamp: $now');

  // Save to a file
  File file = File('results.txt');
  await file.writeAsString(results.join('\n'));

  print('Results saved to results.txt');
}

void stringManipulation(String input) {
  // Concatenation
  String greeting = 'Hello, ' + input;

  // Interpolation
  print('Welcome, $input!');

  // Substring extraction
  String sub = input.substring(0, 3);
  print('First three letters: $sub');

  // Case conversion
  print('Uppercase: ${input.toUpperCase()}');
  print('Lowercase: ${input.toLowerCase()}');

  // Reverse String
  String reversed = input.split('').reversed.join();
  print('Reversed: $reversed');

  // Length
  print('Length: ${input.length}');
}

void collectionOperations() {
  // List Example
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  fruits.add('Orange');
  fruits.remove('Apple');
  print('List: $fruits');

  // Set Example
  Set<String> colors = {'Red', 'Green', 'Blue'};
  colors.add('Yellow');
  colors.remove('Red');
  print('Set: $colors');

  // Map Example
  Map<String, int> inventory = {'Apple': 10, 'Banana': 5};
  inventory['Orange'] = 15;
  inventory.remove('Banana');
  print('Map: $inventory');
}

//File handling
import 'dart:io';

void fileHandling() async {
  try {
    // Writing to a file
    File file = File('output.txt');
    await file.writeAsString('This is sample content.\n');

    // Reading from a file
    String content = await file.readAsString();
    print('File content: $content');
  } catch (e) {
    print('An error occurred: $e');
  }
}
//dart 
void dateTimeOperations() {
  DateTime now = DateTime.now();
  print('Current date and time: $now');

  // Add days
  DateTime futureDate = now.add(Duration(days: 5));
  print('Future date: $futureDate');

  // Subtract days
  DateTime pastDate = now.subtract(Duration(days: 5));
  print('Past date: $pastDate');

  // Difference between two dates
  Duration diff = futureDate.difference(pastDate);
  print('Difference in days: ${diff.inDays}');
}

