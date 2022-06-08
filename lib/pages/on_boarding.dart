import 'package:flutter/material.dart';

import 'content_onBoarding.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;

  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los servicios para consentir a tu mascota.",
      "image": "assets/images/B1.png",
    },
    {
      "text": "ADOPCION",
      "text1":
          "Nulla faucibustellus ut odio scelerisque vitae molestie lectus feugiat.",
      "image": "assets/images/B2.png",
    },
    {
      "text": "HOSPITALIDAD",
      "text1":
          "Nulla faucibustellus ut odio scelerisque vitae molestie lectus feugiat.",
      "image": "assets/images/B3.png",
    },
    {
      "text": "Veterinaria",
      "text1":
          "Nulla faucibustellus ut odio scelerisque vitae molestie lectus feugiat.",
      "image": "assets/images/B4.png",
    },
    {
      "text": "TIENDA",
      "text1": "Compra todas las necesidades de tu mascota sin salir de casa",
      "image": "assets/images/B5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          child: SizedBox(
            width: double.infinity,
            child: Column(children: [
              Expanded(
                flex: 2,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      pages = value;
                    });
                  },
                  itemCount: onBoardingDatas.length,
                  itemBuilder: (context, index) => ContentBoarding(
                    text: onBoardingDatas[index]["text"]!,
                    text1: onBoardingDatas[index]["text1"]!,
                    image: onBoardingDatas[index]["image"]!,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(onBoardingDatas.length,
                            (index) => _animatedContainer(index)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, bottom: 0),
                        child: _buttonBoarding(45, 300, "Siguiente"),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          )),
    ));
  }

  _buttonBoarding(double _height, double _width, String text) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
          side: BorderSide(
            color: pages == 4 ? Colors.transparent : Colors.purple,
            width: 1.5,
          ),
        ),
        minimumSize: Size(_width, _height),
        backgroundColor:
            pages == onBoardingDatas.length - 1 ? Colors.green : Colors.white,
        padding: const EdgeInsets.all(0));
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: TextButton(
        style: flatButtonStyle,
        onPressed: () {
          setState(() {
            pages += 1;
            if (pages > onBoardingDatas.length - 1) {
              pages = 0;
            }
          });
        },
        child: Text(
          pages == (onBoardingDatas.length - 1) ? "Continuar" : "Siguiente",
          style: TextStyle(
              color: pages == (onBoardingDatas.length - 1)
                  ? Colors.white
                  : Colors.black),
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int index) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      height: 4,
      width: pages == index ? 20 : 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color:
            pages == index ? Colors.pink : Color.fromARGB(221, 184, 179, 179),
      ),
      margin: const EdgeInsets.only(
        right: 8,
      ),
    );
  }
}
