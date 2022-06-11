import 'package:flutter/material.dart';
import 'package:my_new_project/pages/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashView(),
    );
  }
}

class VistaA extends StatelessWidget {
  const VistaA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vista A'),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: 30.0,
                  height: 30.0,
                  color: Colors.red,
                  child: const Text('A')),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: 30.0,
                height: 30.0,
                color: Colors.blue,
                child: const Text('B'),
              )
            ],
          ),
          const Spacer(),
          Container(
            height: 300,
            width: double.infinity,
            child: ListView(
              children: [
                Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.black,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: double.infinity,
                    height: 50.0,
                    child: const Text('A')),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('B'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('C'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('D'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('E'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('F'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('G'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('H'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('I'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('J'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('K'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('L'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('M'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('N'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('O'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('P'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('Q'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('R'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('S'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('T'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('U'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('V'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('W'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('X'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('Y'),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text('Z'),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: 30.0,
                  height: 30.0,
                  color: Colors.amber,
                  child: const Text('C')),
              const Spacer(),
              Container(
                  alignment: Alignment.center,
                  width: 30.0,
                  height: 30.0,
                  color: Colors.amber,
                  child: const Text('D'))
            ],
          ),
        ],
      )),
    );
  }
}

class VistaB extends StatelessWidget {
  const VistaB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vista B'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              width: 30.0,
              height: 30.0,
              color: Colors.blue,
              child: const Text('A')),
          const Spacer(),
          Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: 30.0,
                  height: 30.0,
                  color: Colors.blue,
                  child: const Text('D')),
              const Spacer(),
              Container(
                  alignment: Alignment.center,
                  width: 30.0,
                  height: 30.0,
                  color: Colors.blue,
                  child: const Text('B')),
            ],
          ),
          const Spacer(),
          Container(
              alignment: Alignment.center,
              width: 30.0,
              height: 30.0,
              color: Colors.blue,
              child: const Text('C')),
        ],
      )),
    );
  }
}

class VistaC extends StatelessWidget {
  const VistaC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vista C'),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                  ),
                  width: double.infinity,
                  height: 100.0,
                  child: const Text('A')),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('B'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('C'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('D'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('E'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('F'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('G'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('H'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('I'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('J'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('K'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('L'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('M'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('N'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('O'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('P'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('Q'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('R'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('S'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('T'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('U'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('V'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('W'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('X'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('Y'),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Text('Z'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
