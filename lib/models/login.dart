import 'package:flutter/src/widgets/editable_text.dart';

class Login {
  int ? idChannel;
  String ? email;
  String ? password;
  int ? idPlatform;
  int ? idRole;
  String ? idDevice;

  Login(
      this.idChannel,
      this.email,
      this.password,
      this.idPlatform,
      this.idRole,
      this.idDevice);

  Login.fromJson(Map<String, dynamic> json) {
    idChannel = json['idChannel'];
    email = json['email'];
    password = json['password'];
    idPlatform = json['idPlatform'];
    idRole = json['idRole'];
    idDevice = json['idDevice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idChannel'] = idChannel;
    data['email'] = email;
    data['password'] = password;
    data['idPlatform'] = idPlatform;
    data['idRole'] = idRole;
    data['idDevice'] = idDevice;
    return data;
  }
}
