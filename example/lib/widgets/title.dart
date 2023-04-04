import 'package:flutter/widgets.dart';
import 'package:tailstyle/tailstyle.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return TailBox().pt_8().pb_4().as((styled) {
      return styled.Container(
        child: TailTypo().text_2xl().font_bold().Text(title),
      );
    });
  }
}
