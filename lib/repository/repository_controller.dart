import 'package:my_new_project/models/login.dart';
import 'package:my_new_project/models/recover_pass.dart';
import 'package:my_new_project/models/update_password.dart';
import 'package:my_new_project/models/user.dart';
import 'package:my_new_project/repository/repository.dart';

class ObjectController {
  final Repository _repository;

  ObjectController(this._repository);

  Future<Login> listmethods(Login login) async {
    return _repository.loginUser(login);
  }
  Future<User> methodsUser(User user) async {
    return _repository.addUser(user);
  }
  Future<RecoverPassword> methodRecover(RecoverPassword recoverPassword) async {
    return _repository.recoverPassword(recoverPassword);
  }
  Future<UpdatePassword> methodUpdate(UpdatePassword updatePassword) async {
    return _repository.updatePassword(updatePassword);
  }
}
