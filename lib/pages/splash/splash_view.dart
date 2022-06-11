import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    _loadImage('assets/images/splash.png');
    // _toOnBoarding();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: _SplashCanvas(image),
            )),
      ),
    );
  }

  void _loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final image = await decodeImageFromList(bytes);
    setState(() => this.image = image);
  }
}

class _SplashCanvas extends CustomPainter {
  final ui.Image? imageCanvas;
  const _SplashCanvas(this.imageCanvas);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.green;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();
    path.lineTo(0, size.height * 0.10);

    path.quadraticBezierTo(size.width * 0.15, size.height * 0.20,
        size.width * 0.35, size.height * 0.13);

    path.quadraticBezierTo(size.width * 0.50, size.height * 0.07,
        size.width * 0.7, size.height * 0.1);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.13, size.width, size.height * 0.12);

    path.lineTo(size.width, 0);

    path.moveTo(0, size.height);

    path.quadraticBezierTo(
        size.width * 0.70, size.height * 0.75, size.width, size.height);

    canvas.drawPath(path, paint);
    canvas.scale(0.25, 0.25);
    canvas.drawImage(
        imageCanvas!, Offset(size.width * 1.2, size.width * 2.2), paint);

    final textStyle = ui.TextStyle(
      color: Colors.black,
      fontSize: 100,
    );
    final paragraphStyle = ui.ParagraphStyle(
      textDirection: TextDirection.ltr,
    );
    final paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
      ..pushStyle(textStyle)
      ..addText('Tienda de mascotas');
    const constraints = ui.ParagraphConstraints(width: 1000);
    final paragraph = paragraphBuilder.build();
    paragraph.layout(constraints);
    canvas.drawParagraph(paragraph, Offset(size.width * 1, size.height * 2.7));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
