import 'package:flutter/material.dart';
import 'package:tailstyle/tailstyle.dart';

class Code extends StatelessWidget {
  final String snippet;
  final TailTypo? tail;

  const Code(this.snippet, {super.key, this.tail});

  @override
  Widget build(BuildContext context) {
    return TailBox().m_2().p_2().bg(TailColors.gray_200).border(TailColors.gray_200).rounded_md().as((styled) {
      return styled.Container(
        child: (tail ?? TailTypo().font_bold()).Text(snippet),
      );
    });
  }
}
