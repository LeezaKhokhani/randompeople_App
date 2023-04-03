import 'dart:convert';
import 'package:http/http.dart' as http;
import '../moduls/api_moduls.dart';

class PersonAPIHelper {
  PersonAPIHelper._();
  static final PersonAPIHelper personAPIHelper = PersonAPIHelper._();

  Future<PersonData?> fetchPersonData() async {
    const String baseURL = "https://randomuser.me/api/";
    http.Response res = await http.get(Uri.parse(baseURL));

    if (res.statusCode == 200) {
      Map<String, dynamic> decodedData = jsonDecode(res.body);

      PersonData personData = PersonData.fromJSON(data: decodedData);

      print(decodedData);

      return personData;
    }
    return null;
  }
}