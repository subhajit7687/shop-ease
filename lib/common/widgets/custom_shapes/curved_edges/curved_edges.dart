import 'package:flutter/material.dart';

class CurvedEdges extends StatelessWidget {
  const CurvedEdges({super.key, required this._child});

  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: _MyCustomPath(), child: _child);
  }
}

class _MyCustomPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;
    final path = Path();

    path.lineTo(0, height);

    path.quadraticBezierTo(0, height - 20, 30, height - 20);

    path.lineTo(width - 30, height - 20);

    path.quadraticBezierTo(width, height - 20, width, height);

    path.lineTo(width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
