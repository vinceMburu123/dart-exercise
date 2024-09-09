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
