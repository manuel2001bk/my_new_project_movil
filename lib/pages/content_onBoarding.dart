import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key? key,
    required this.text,
    required this.text1,
    required this.image,
  }) : super(key: key);
  final String text, text1, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              width: 240,
              height: 240,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.purple,
                fontSize: 20,
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            text1,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.purple, fontSize: 16),
          ),
        )
      ],
    );
  }
}
