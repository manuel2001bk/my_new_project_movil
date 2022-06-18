// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class LoginMenu extends StatelessWidget {
  const LoginMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50.0),
              height: 300,
              width: 300,
              child: Image.asset('assets/images/splash.png'),
            ),
            Container(
                padding: const EdgeInsets.only(top: 20.0),
                height: 70,
                width: 350,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 63, 104, 236),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Image.asset(
                              'assets/images/google.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Continuar con Google',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(top: 20.0),
                height: 70,
                width: 350,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 56, 78, 159),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Image.asset(
                              'assets/images/facebook.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Continuar con Facebook',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(top: 20.0),
                height: 70,
                width: 350,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(
                      color: Color.fromARGB(255, 101, 103, 110),
                      width: 2.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Icon(
                              Icons.mail,
                              color: Color.fromARGB(255, 101, 103, 110),
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.0),
                            child: Text(
                              'Registrarse con e-mail',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 101, 103, 110),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            const Spacer(),
            Column(
              children: const [
                Text("Entrar como invitado",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 231, 56, 99),
                    )),
                Text("Entrar como Vendedor",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 128, 166, 96),
                    )),
              ],
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: Row(
                children: [
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('¿Ya tienes una cuenta? ',
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('Iniciar sesion',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 231, 56, 99))),
                  ),
                  const Spacer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
