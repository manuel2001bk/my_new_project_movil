class User {
  int ? idUser;
  String ? email;
  String ? name;
  String ? phoneNumber;
  String ? pass;
  int ? idRole;
  int ? idPlatform;
  int ? idChannel;
  String ? guest;
  String ? lasName;

  User(
      this.idUser,
      this.email,
      this.name,
      this.phoneNumber,
      this.pass,
      this.idRole,
      this.idPlatform,
      this.idChannel,
      this.guest,
      this.lasName);

  User.fromJson(Map<String, dynamic> json) {
    idUser = json['idUser'];
    email = json['email'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    pass = json['pass'];
    idRole = json['idRole'];
    idPlatform = json['idPlatform'];
    idChannel = json['idChannel'];
    guest = json['guest'];
    lasName = json['lasName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idUser'] = idUser;
    data['email'] = email;
    data['name'] = name;
    data['phoneNumber'] = phoneNumber;
    data['pass'] = pass;
    data['idRole'] = idRole;
    data['idPlatform'] = idPlatform;
    data['idChannel'] = idChannel;
    data['guest'] = guest;
    data['lasName'] = lasName;
    return data;
  }
}
