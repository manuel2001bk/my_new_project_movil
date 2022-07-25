import 'dart:convert';
import 'package:http/http.dart' as http;

Future singUp(name, email, password) async {
  Uri url =
      Uri.parse('http://desarrollovan-tis.dedyn.io:4010/api/User/CreateUser');
  Map data = {
    "idUser": 0,
    "email": email,
    "name": name,
    "phoneNumber": "",
    "pass": password,
    "idRole": 1,
    "idPlatform": 2,
    "idChannel": 1,
    "guest": "",
    "lasName": ""
  };
  String jsonObject = json.encode(data);
  var response = await http.post(url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonObject);
  if (response.body.isNotEmpty) {
    var responseBody = json.decode(response.body);
    return responseBody;
  }
  return null;
}

Future signIn(email, password) async {
  Uri url = Uri.parse("http://desarrollovan-tis.dedyn.io:4010/api/User/LogIn");

  Map data = {
    "idChannel": 1,
    "email": email,
    "password": password,
    "idPlatform": 2,
    "idRole": 1,
    "idDevice": "",
  };

  String jsonObject = json.encode(data);
  var response = await http.post(url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonObject);
  if (response.body.isNotEmpty) {
    var responseBody = json.decode(response.body);
    return responseBody;
  }
  return null;
}

Future recoverPassword(email) async {
  Uri url = Uri.parse(
      "http://desarrollovan-tis.dedyn.io:4010/api/User/RecoverPassword");

  Map data = {
    "idChannel": 1,
    "email": email,
  };

  String jsonObject = json.encode(data);
  var response = await http.post(url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonObject);
  if (response.body.isNotEmpty) {
    var responseBody = json.decode(response.body);
    return responseBody;
  }
  return null;
}
