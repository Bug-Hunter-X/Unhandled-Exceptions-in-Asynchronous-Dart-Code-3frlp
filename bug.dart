```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
    } else {
      // Handle error appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions here 
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled by the caller
  }
}
```