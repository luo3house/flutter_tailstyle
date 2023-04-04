import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final List<Widget> children;

  const Content(this.children, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
