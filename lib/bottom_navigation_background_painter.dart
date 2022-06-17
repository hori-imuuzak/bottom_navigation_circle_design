import 'package:flutter/material.dart';

class BottomNavigationBackgroundPainter extends StatelessWidget {
  const BottomNavigationBackgroundPainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width, 80),
      painter: _CustomPainter(),
    );
  }
}

class _CustomPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()..moveTo(0, 70);
    path.quadraticBezierTo(size.width * 0.25, 50, size.width * 0.50, 50);
    path.quadraticBezierTo(size.width * 0.50, 50, size.width * 0.50, 50);
    path.quadraticBezierTo(size.width * 0.75, 50, size.width * 1.0, 70);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 70);

    Paint paint = Paint()..color = Colors.white;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}