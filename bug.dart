```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data elements, e.g., jsonData['key1']
    } else {
      // Handle error status codes
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (network errors, invalid JSON, etc.)
    print('Error fetching data: $e');
    rethrow; // Re-throw to allow handling at a higher level
  }
}
```