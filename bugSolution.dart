```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      //Further processing of the jsonData
    } else {
      //More specific error handling
      throw Exception('HTTP request failed with status: ${response.statusCode} and message: ${response.body}');
    }
  } on FormatException catch (e) {
    print('Error parsing JSON: $e');
  } on SocketException catch (e) {
    print('Network error: $e');
    // Retry logic here if needed
  } on Exception catch (e) {
    print('An unexpected error occurred: $e');
    // Consider logging the error with a specific error reporting system
  } catch (e) {
    print('A general error occurred: $e');
  }
}
```