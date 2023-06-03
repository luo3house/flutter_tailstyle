import 'package:flutter/widgets.dart';
import 'package:tailstyle/src/tail_box.dart';

typedef StyledBorderRadius = BorderRadius;
typedef StyledBorder = Border;
typedef StyledBoxDecoration = BoxDecoration;

extension TailBox2BoxDecorationExt on TailBox {
  StyledBorderRadius BorderRadius() {
    return StyledBorderRadius.only(
      topLeft: borderRadiusTL ?? Radius.zero,
      topRight: borderRadiusTR ?? Radius.zero,
      bottomLeft: borderRadiusBL ?? Radius.zero,
      bottomRight: borderRadiusBR ?? Radius.zero,
    );
  }

  StyledBorder Border() {
    return StyledBorder(
      left: borderL ?? BorderSide.none,
      top: borderT ?? BorderSide.none,
      right: borderR ?? BorderSide.none,
      bottom: borderB ?? BorderSide.none,
    );
  }

  StyledBoxDecoration BoxDecoration() {
    final allBorderUniform = borderL == borderT && borderT == borderR && borderR == borderB;
    final allBorderNull = borderL == null && borderT == null && borderR == null && borderB == null;
    return StyledBoxDecoration(
      color: backgroundColor,
      boxShadow: boxShadow,
      gradient: gradient,
      border: Border(),
      borderRadius: allBorderUniform || allBorderNull ? BorderRadius() : null,
    );
  }
}
