import 'package:flutter/material.dart';

class RoundedSquareHeader extends StatelessWidget {
  const RoundedSquareHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    const radius = Radius.circular(50);

    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: radius,
          bottomRight: radius,
        )
      ),
    );
  }
}
