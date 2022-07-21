class UpdatePasswordRecovery {
  int ? idChannel;
  String ? codeRecovery;
  String ? password;

  UpdatePasswordRecovery({this.idChannel, this.codeRecovery, this.password});

  UpdatePasswordRecovery.fromJson(Map<String, dynamic> json) {
    idChannel = json['idChannel'];
    codeRecovery = json['codeRecovery'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idChannel'] = idChannel;
    data['codeRecovery'] = codeRecovery;
    data['password'] = password;
    return data;
  }
}
