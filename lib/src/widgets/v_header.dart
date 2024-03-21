import 'package:flutter/material.dart';

class VHeader extends StatelessWidget {
  const VHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: colors.primary,
      child: CustomPaint(
        painter: _VHeaderPainter(colors),
      ),
    );
  }
}

class _VHeaderPainter extends CustomPainter {
  final ColorScheme colors;

  _VHeaderPainter(this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = colors.primaryContainer;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

    final path = Path();

    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width,0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
