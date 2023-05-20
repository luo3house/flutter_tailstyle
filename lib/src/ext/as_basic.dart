import 'package:flutter/widgets.dart';
import 'package:tailstyle/src/tail_box.dart';

typedef StyledPadding = Padding;

extension TailBox2BasicExt on TailBox {
  StyledPadding Padding() {
    return StyledPadding(
      padding: EdgeInsets.only(
        left: paddingL ?? 0,
        top: paddingT ?? 0,
        right: paddingR ?? 0,
        bottom: paddingB ?? 0,
      ),
    );
  }
}
