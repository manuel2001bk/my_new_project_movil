import 'package:flutter/material.dart';
import 'package:my_new_project/models/recover_pass.dart';
import 'package:my_new_project/pages/login/loginView.dart';
import 'package:my_new_project/pages/menu_inicio/menuInicioView.dart';
import 'package:my_new_project/pages/recuperar_password/recuperarPassword.dart';
import 'package:my_new_project/repository/repository_api.dart';
import 'package:my_new_project/repository/repository_controller.dart';
class recuperarPasswordCorreoView extends StatelessWidget {
  const recuperarPasswordCorreoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController _textControllerIdChannel = TextEditingController(text: "1");
    TextEditingController _textControllerEmail = TextEditingController(text: "");
    var recoverController = ObjectController(ListObjectApi());
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 72, 25, 124),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const loginView()));
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: Color.fromARGB(255, 231, 56, 99),
                                size: 30,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("Recuperar Contraseña",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.asset('assets/images/splash.png',
                                  height: 40, width: 40),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 35, top: 40, bottom: 40),
                    child: Row(
                      children: const [
                        Text('Ingresa tu email para recuperar la contraseña',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 143, 143, 143))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 350,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text('Correo Electronico',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(top: 8)),
                        TextField(
                          controller: _textControllerEmail,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelText: 'Direccion de correo',
                            labelStyle: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 143, 143, 143),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                        'Ingrese su correo electronico registrado y le enviaremos un\ncorreo electronico que contiene un enlace para restablecer\nsu contraseña',
                        style: TextStyle(
                            fontSize: 12, color: Color.fromARGB(150, 0, 0, 0))),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                        height: 50,
                        width: 350,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0),
                            ),
                          ),
                          onPressed: () {

                            RecoverPassword recoverPassword = RecoverPassword(
                              int.parse(_textControllerIdChannel.text),
                              _textControllerEmail.text
                            );
                            recoverController.methodRecover(recoverPassword);

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const recuperarPasswordView()));
                          },
                          child: const Text('Enviar solicitud',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
