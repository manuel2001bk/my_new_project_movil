class User {
  int idUser = 0;
  String token = "";
  String email = "";

  User._privateConstructor();

  static final User _instance = User._privateConstructor();

  static User get instance => _instance;
}
