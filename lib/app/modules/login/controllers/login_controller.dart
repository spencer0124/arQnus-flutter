import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController extends GetxController {
  var baseUrl = 'http://43.201.203.28:9000/api/user/profile';

  Future<void> initfunction() async {
    var body = jsonEncode({
      "dateOfBirth": true,
      "name": false,
      "email": true,
      "phoneNumber": true,
      "safePhoneNumber": true,
      "description": false,
      "gender": true,
      "expiration": "2023-12-12 23:10:10"
    });
    final response = await http.get(Uri.parse(baseUrl));
    try {
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {"Content-Type": "application/json"},
        body: body,
      );
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        print('Response data: ${response.body}');
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        print('Failed to load data');
      }
    } catch (exception) {
      // Handle any exceptions here
      print('Error: $exception');
    }
  }
}
