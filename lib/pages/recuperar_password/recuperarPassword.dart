// ignore: file_names
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../services/servicios.dart' as servicios;

import 'package:my_new_project/pages/recuperar_password_correo/recuperarPasswordCorreoView.dart';

class recuperarPassword extends StatefulWidget {
  const recuperarPassword({Key? key}) : super(key: key);

  @override
  State<recuperarPassword> createState() => _recuperarPasswordState();
}

class _recuperarPasswordState extends State<recuperarPassword> {
  var password1 = TextEditingController();
  var password2 = TextEditingController();
  late bool _passwordVisible1;
  late bool _passwordVisible2;

  @override
  void initState() {
    _passwordVisible1 = false;
    _passwordVisible2 = false;
    super.initState();
  }

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
                                          const recoverypasswordemail()));
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
                  padding: const EdgeInsets.only(left: 35, top: 40, bottom: 40),
                  child: Row(
                    children: const [
                      Text(
                          'Por tu seguridad, tu contraseña debera tener una\nlongitud de entre 8 y 15 caracteres, usar\nmayúsculas, minúsculas, contener por lo\nmenos un numero y un caracter especial.',
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
                          Text('Nueva Contraseña',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      TextField(
                        controller: password1,
                        obscureText: _passwordVisible1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Nueva Contraseña',
                          labelStyle: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 143, 143, 143),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color:
                                  _passwordVisible1 ? Colors.blue : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible1 = !_passwordVisible1;
                              });
                            },
                          ),
                        ),
                      ),
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
                          Text('Confirmar Nueva Contraseña',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      TextField(
                        controller: password2,
                        obscureText: _passwordVisible2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Confirma tu nueva contraseña',
                          labelStyle: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 143, 143, 143),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color:
                                  _passwordVisible2 ? Colors.blue : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible2 = !_passwordVisible2;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
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
                          if (password1.text.isNotEmpty &&
                              password2.text.isNotEmpty) {
                            if (password1.text == password2.text) {
                              var response = await servicios
                                  .updatePassword(password1.text);
                              print(response);
                              if (response["code"] == true) {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text("Correcto",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    content: const Text(
                                        "Cambio de contraseña correcto"),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
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
                                        "Error al cambiar la contraseña"),
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
                                    "Error al cambiar la contraseña"),
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
                        child: const Text('Actualizar Contraseña',
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
    }));
  }
}
