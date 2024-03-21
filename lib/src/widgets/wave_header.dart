import 'package:flutter/material.dart';

class WaveHeader extends StatelessWidget {
  const WaveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: colors.primary,
      child: CustomPaint(
        painter: _WaveHeaderPainter(colors),
      ),
    );
  }
}

class _WaveHeaderPainter extends CustomPainter {
  final ColorScheme colors;

  _WaveHeaderPainter(this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = colors.primaryContainer;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.35, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.15, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
