import 'package:my_new_project/models/login.dart';
import 'package:my_new_project/models/recover_pass.dart';
import 'package:my_new_project/models/update_password.dart';
import 'package:my_new_project/models/user.dart';

abstract class Repository {
  Future<Login> loginUser(Login login);
  Future<User> addUser(User user);
  Future<RecoverPassword> recoverPassword(RecoverPassword recoverPassword);
  Future<UpdatePassword> updatePassword(UpdatePassword updatePassword);

}
