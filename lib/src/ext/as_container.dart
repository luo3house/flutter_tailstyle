import 'package:flutter/widgets.dart';
import 'package:tailstyle/src/ext/as_box_decoration.dart';
import 'package:tailstyle/src/tail_box.dart';

typedef StyledContainer = Container;

extension TailBox2ContainerExt on TailBox {
  StyledContainer Container({
    Key? key,
    Alignment? alignment,
    double? width,
    double? height,
    BoxConstraints? constraints,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Widget? child = const SizedBox(),
    Clip clipBehavior = Clip.none,
  }) {
    return StyledContainer(
      padding: EdgeInsets.only(
        left: paddingL ?? 0,
        top: paddingT ?? 0,
        right: paddingR ?? 0,
        bottom: paddingB ?? 0,
      ),
      margin: EdgeInsets.only(
        left: marginL ?? 0,
        top: marginT ?? 0,
        right: marginR ?? 0,
        bottom: marginB ?? 0,
      ),
      decoration: this.BoxDecoration(),
      width: width,
      height: height,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}
