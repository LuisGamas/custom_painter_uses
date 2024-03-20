import 'package:flutter/material.dart';

class DiagonalHeader extends StatelessWidget {
  const DiagonalHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: colors.primary,
      child: CustomPaint(
        painter: _DiagonalHeaderPainter(colors),
      ),
    );
  }
}

class _DiagonalHeaderPainter extends CustomPainter {
  final ColorScheme colors;

  _DiagonalHeaderPainter(this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = colors.primaryContainer;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

    final path = Path();

    path.lineTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
