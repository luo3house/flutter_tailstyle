import 'package:flutter/widgets.dart';
import 'package:tailstyle/src/tail_box.dart';

typedef StyledContainer = Container;

extension TailBox2ContainerExt on TailBox {
  p() {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingL ?? 0,
        top: paddingT ?? 0,
        right: paddingR ?? 0,
        bottom: paddingB ?? 0,
      ),
    );
  }

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
    final allBorderPresented = borderL != null && borderT != null && borderR != null && borderB != null;
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
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: boxShadow,
        gradient: gradient,
        border: Border(
          left: borderL ?? BorderSide.none,
          top: borderT ?? BorderSide.none,
          right: borderR ?? BorderSide.none,
          bottom: borderB ?? BorderSide.none,
        ),
        borderRadius: allBorderPresented
            ? BorderRadius.only(
                topLeft: borderRadiusTL ?? Radius.zero,
                topRight: borderRadiusTR ?? Radius.zero,
                bottomLeft: borderRadiusBL ?? Radius.zero,
                bottomRight: borderRadiusBR ?? Radius.zero,
              )
            : null,
      ),
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
