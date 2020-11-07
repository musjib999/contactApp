import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:contactApp/models/contact_model.dart';

class NetworkHelper {
  final String uri;
  NetworkHelper({this.uri});

  // ignore: missing_return
  Future<ContactModel> addContact(
      String fname, String lname, String phone) async {
    try {
      final http.Response response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{"fname": fname, "lname": lname, "phone": phone},
        ),
      );

      if (response.statusCode == 200) {
        print(response.body);
        return ContactModel.fromJson(jsonDecode(response.body));
      } else {
        print(response.statusCode);
      }
    } catch (err) {
      print('Networking error >>> $err');
    }
  }
}
