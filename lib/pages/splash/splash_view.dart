import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    // _loadImage('assets/images/splash.png');
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
    var val = 1.0;
    path.relativeQuadraticBezierTo(70, val * 90, 150, 0);
    path.relativeQuadraticBezierTo(80, -val * 10, 100, 0);
    path.relativeQuadraticBezierTo(size.width * 0.15, 25, 110, 0);
    path.relativeQuadraticBezierTo(size.width * 0.50, -70, 0, 0);
    path.relativeQuadraticBezierTo(size.width * 0.26, -60, 300, -100);
    path.relativeQuadraticBezierTo(0, 70, size.width, 0);

    path.quadraticBezierTo(
        size.width * 0.50, size.height * 0.28, size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
    canvas.scale(0.24, 0.24);
    // canvas.drawImage(imageCanvas, const Offset(190*2.5, 430*3.5), paint)
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
