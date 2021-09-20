import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.quadraticBezierTo(0, 50, 50, 50);
    path.lineTo(size.width * 0.5 - 60, 50);

    path.quadraticBezierTo(
        size.width * 0.5 - 30, 50, size.width * 0.5 - 30, 70);
    path.quadraticBezierTo(size.width * 0.5 - 20, 90, size.width * 0.5, 90);
    path.quadraticBezierTo(
        size.width * 0.5 + 20, 90, size.width * 0.5 + 30, 70);
    path.quadraticBezierTo(
        size.width * 0.5 + 30, 50, size.width * 0.5 + 60, 50);

    path.lineTo(size.width - 50, 50);

    path.quadraticBezierTo(size.width, 50, size.width, 0);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
