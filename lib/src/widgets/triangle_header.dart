import 'package:flutter/material.dart';

class TriangularHeader extends StatelessWidget {
  const TriangularHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: colors.primary,
      child: CustomPaint(
        painter: _TriangularHeaderPainter(colors),
      ),
    );
  }
}

class _TriangularHeaderPainter extends CustomPainter {
  final ColorScheme colors;

  _TriangularHeaderPainter(this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = colors.primaryContainer;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

    final path = Path();

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);

    // Pintar la figura creada por fuera
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
