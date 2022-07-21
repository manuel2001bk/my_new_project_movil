class UpdatePassword {
  int ? idUser;
  String ? newPassword;

  UpdatePassword(this.idUser, this.newPassword);

  UpdatePassword.fromJson(Map<String, dynamic> json) {
    idUser = json['idUser'];
    newPassword = json['newPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idUser'] = idUser;
    data['newPassword'] = newPassword;
    return data;
  }
}
