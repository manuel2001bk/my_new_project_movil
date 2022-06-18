import 'package:flutter/material.dart';

class registerView extends StatelessWidget {
  const registerView({Key? key}) : super(key: key);

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
                      padding: EdgeInsets.only(left: 40),
                      child: Text("Registrate",
                          style: TextStyle(fontSize: 22, color: Colors.white)),
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
                Text('Crea una cuenta para empezar a usar la app',
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
                    Text('Nombre',
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
                    labelText: 'Nombre completo',
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 143, 143, 143),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
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
                    labelText: 'Correo Electronico',
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
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                    'la contraseña debe contener caracteres, numeros y simbolos \ncon un minimo de 6 caracteres.',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(175, 158, 158, 158))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                  shape: const StadiumBorder(),
                  activeColor: const Color.fromARGB(255, 72, 25, 124),
                ),
                const Text(
                    'Al registrarme, acepto los términos y condiciones \ny politicas de privacidad.',
                    style: TextStyle(fontSize: 12, color: Colors.black)),
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
                child: const Text('Crear cuenta',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 65, bottom: 20),
            child: Row(
              children: const [
                Text('¿Ya tienes una cuenta?',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                Text(' Inicia sesión',
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
