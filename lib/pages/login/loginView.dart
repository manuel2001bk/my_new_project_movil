import 'package:flutter/material.dart';

class loginView extends StatelessWidget {
  const loginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 231, 56, 99),
                        size: 30,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Iniciar Sesión",
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
                Text('Inicia sesión con tu cuenta para continuar',
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
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Email Address',
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 143, 143, 143),
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
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
                    Text('Contraseña',
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
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 143, 143, 143),
                    ),
                    prefixIcon: const Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('¿Has olvidado tu contraseña?',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 231, 56, 99))),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
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
                child: const Text('Ingresar',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 65, bottom: 20),
            child: Row(
              children: const [
                Text('¿Todavia no tienes una cuenta?',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                Text(' Regístrate',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 231, 56, 99))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}