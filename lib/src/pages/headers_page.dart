import 'package:custom_painter_uses/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WaveHeader(),
    );
  }
}