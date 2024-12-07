```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        return jsonDecode(response.body);
      } on FormatException {
        print('Error: Invalid JSON format');
        return null;
      }
    } else {
      print('Error: HTTP request failed with status: ${response.statusCode}');
      return null; // Or throw a custom exception
    } 
  } on Exception catch (e) {
    print('Network Error: $e');
    return null; // Or throw a custom exception
  }
}
```