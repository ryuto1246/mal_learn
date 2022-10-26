import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({required this.image, Key? key}) : super(key: key);

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: image, fit: BoxFit.fill),
          border: Border.all(width: 3, color: Colors.white),
          color: Colors.white,
        ),
      ),
    );
  }
}
