import 'package:flutter/material.dart';

class ClippedBackgroundImage extends StatelessWidget {
  const ClippedBackgroundImage(this.image, {super.key});

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ClipPath(
        clipper: _BackgroundClipper(),
        child: Image(image: image, fit: BoxFit.cover),
      ),
    );
  }
}

class _BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;

    final path = Path()
      ..lineTo(w, 0)
      ..lineTo(w, h - 45)
      ..quadraticBezierTo(w - 60, h - 10, w / 2, h)
      ..quadraticBezierTo(60, h - 10, 0, h - 45);

    return path;
  }

  @override
  bool shouldReclip(_) => true;
}
