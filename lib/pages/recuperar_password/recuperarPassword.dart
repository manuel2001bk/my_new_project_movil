// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_new_project/pages/menu_inicio/menuInicioView.dart';
import 'package:my_new_project/pages/recuperar_password_correo/recuperarPasswordCorreoView.dart';

// ignore: camel_case_types
class recuperarPasswordView extends StatelessWidget {
  const recuperarPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
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
                                    const recuperarPasswordCorreoView()));
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
                          style: TextStyle(fontSize: 20, color: Colors.white)),
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
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Nueva Contraseña',
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 143, 143, 143),
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
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Confirma tu nueva contraseña',
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 143, 143, 143),
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
                  onPressed: () {},
                  child: const Text('Actualizar Contraseña',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                )),
          ),
        ],
      ),
    );
  }
}
