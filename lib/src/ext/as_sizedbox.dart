import 'package:flutter/widgets.dart';
import 'package:tailstyle/src/tail_box.dart';

typedef StyledSizedBox = SizedBox;

extension TailBox2SizedBoxExt on TailBox {
  StyledSizedBox SizedBox({
    Key? key,
    double? width,
    double? height,
    Widget? child = const StyledSizedBox(),
  }) =>
      StyledSizedBox(
        width: width ?? 0 + (paddingL ?? 0) + (paddingR ?? 0) + (marginL ?? 0) + (marginR ?? 0),
        height: height ?? 0 + (paddingT ?? 0) + (paddingB ?? 0) + (marginT ?? 0) + (marginB ?? 0),
        child: child,
      );
}
