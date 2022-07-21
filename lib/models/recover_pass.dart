class RecoverPassword {
  int ? idChannel;
  String ? email;

  RecoverPassword(this.idChannel, this.email);

  RecoverPassword.fromJson(Map<String, dynamic> json) {
    idChannel = json['idChannel'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idChannel'] = idChannel;
    data['email'] = email;
    return data;
  }
}
