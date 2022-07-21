import 'dart:convert';

import 'package:my_new_project/models/login.dart';
import 'package:my_new_project/models/recover_pass.dart';
import 'package:my_new_project/models/update_password.dart';
import 'package:my_new_project/models/user.dart';
import 'package:my_new_project/repository/repository.dart';
import 'package:http/http.dart' as http;

class ListObjectApi implements Repository {
  Future<Login> loginUser(Login login) async {
    Map data = {
      "idChannel": login.idChannel,
      "email": login.email,
      "password": login.password,
      "idPlatform": login.idPlatform,
      "idRole": login.idRole,
      "idDevice": login.idDevice
    };
    String jsonObject = json.encode(data);
    await http
        .post(
            Uri.parse(
                'http://desarrollovan-tis.dedyn.io:4010/swagger/index.html#/User/LogIn'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonObject)
        .then((value) {
      print(value.statusCode.toString());
      return login;
    });

    return login;
  }

  Future<User> addUser(User user) async {
    Map data = {
      "idUser": user.idUser,
      "email": user.email,
      "name": user.name,
      "phoneNumber": user.phoneNumber,
      "pass": user.pass,
      "idRole": user.idRole,
      "idPlatform": user.idPlatform,
      "idChannel": user.idChannel,
      "guest": user.guest,
      "lasName": user.lasName
    };
    String jsonObject = json.encode(data);
    await http
        .post(
            Uri.parse(
                'http://desarrollovan-tis.dedyn.io:4010/swagger/index.html#/User/CreateUser'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonObject)
        .then((value) {
      print(value.statusCode.toString());
      return user;
    });

    return user;
  }

  Future<RecoverPassword> recoverPassword(RecoverPassword recoverPassword) async {
    Map data = {
      "idChannel": recoverPassword.idChannel,
      "email": recoverPassword.email
    };
    String jsonObject = json.encode(data);
    await http
        .post(
            Uri.parse(
                'http://desarrollovan-tis.dedyn.io:4010/swagger/index.html#/User/RecoverPassword'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonObject)
        .then((value) {
      print(value.statusCode.toString());
      return recoverPassword;
    });

    return recoverPassword;
  }

  Future<UpdatePassword> updatePassword(UpdatePassword updatePassword) async {
    Map data = {
      "idUser": updatePassword.idUser,
      "newPassword": updatePassword.newPassword
    };
    String jsonObject = json.encode(data);
    await http
        .post(
            Uri.parse(
                'http://desarrollovan-tis.dedyn.io:4010/swagger/index.html#/User/UpdatePassword'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonObject)
        .then((value) {
      print(value.statusCode.toString());
      return updatePassword;
    });

    return updatePassword;
  }
}
