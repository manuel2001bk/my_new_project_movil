import 'package:flutter/material.dart';
import 'package:my_new_project/pages/recuperar_password/recuperarPassword.dart';
import '../login/loginView.dart';

import '../../services/servicios.dart' as servicios;

class recoverypasswordemail extends StatefulWidget {
  const recoverypasswordemail({Key? key}) : super(key: key);

  @override
  State<recoverypasswordemail> createState() => _recoverypasswordemailState();
}

class _recoverypasswordemailState extends State<recoverypasswordemail> {
  var email = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                                            const loginview()));
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
                          controller: email,
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
                          onPressed: () async {
                            if (email.text.isNotEmpty) {
                              var response =
                                  await servicios.recoverPassword(email.text);
                              print(response);

                              if (response["code"] == true) {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text("Registro correcto",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    content: const Text(
                                        "Se ha enviado un enlace de recuperacion a su correo"),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const recuperarPassword())),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text("Error",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    content: const Text(
                                        "Verifique que su correo sea el correcto"),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            } else {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text("Error",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  content: const Text(
                                      "Debe completar los campos para continuar"),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
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
