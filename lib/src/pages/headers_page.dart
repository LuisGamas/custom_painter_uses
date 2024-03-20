import 'package:custom_painter_uses/src/widgets/square_header.dart';
import 'package:flutter/material.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SquareHeader(),
    );
  }
}