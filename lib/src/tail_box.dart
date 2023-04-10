import 'package:flutter/widgets.dart';
import 'package:tailstyle/src/ext/rem.dart';
import 'package:tailstyle/src/tail_colors.dart';
import 'package:tailstyle/src/util/chain.dart';

class TailBox {
  Color? backgroundColor;
  Gradient? gradient;
  Radius? borderRadiusTL;
  Radius? borderRadiusTR;
  Radius? borderRadiusBL;
  Radius? borderRadiusBR;
  BorderSide? borderL;
  BorderSide? borderT;
  BorderSide? borderR;
  BorderSide? borderB;
  List<BoxShadow>? boxShadow;
  double? paddingL;
  double? paddingT;
  double? paddingR;
  double? paddingB;
  double? marginL;
  double? marginT;
  double? marginR;
  double? marginB;

  // Background
  TailBox bg_transparent() => chain(this, () => backgroundColor = TailColors.transparent);
  TailBox bg(Color? colour) => chain(this, () => backgroundColor = colour);
  // Gradients
  TailBox bg_gradient(Gradient? value) => chain(this, () => gradient = value);
  TailBox bg_gradient_to_t(List<Color> stops) => chain(
      this,
      () => gradient = LinearGradient(
            colors: stops,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ));
  TailBox bg_gradient_to_tr(List<Color> stops) => chain(
      this,
      () => gradient = LinearGradient(
            colors: stops,
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ));
  TailBox bg_gradient_to_r(List<Color> stops) => chain(
      this,
      () => gradient = LinearGradient(
            colors: stops,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ));
  TailBox bg_gradient_to_br(List<Color> stops) => chain(
      this,
      () => gradient = LinearGradient(
            colors: stops,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ));
  TailBox bg_gradient_to_b(List<Color> stops) => chain(
      this,
      () => gradient = LinearGradient(
            colors: stops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ));
  TailBox bg_gradient_to_bl(List<Color> stops) => chain(
      this,
      () => gradient = LinearGradient(
            colors: stops,
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ));
  TailBox bg_gradient_to_l(List<Color> stops) => chain(
      this,
      () => gradient = LinearGradient(
            colors: stops,
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ));
  TailBox bg_gradient_to_tl(List<Color> stops) => chain(
      this,
      () => gradient = LinearGradient(
            colors: stops,
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ));
  // Border Radius
  TailBox rounded_none() => chain(this, () {
        borderRadiusTL = Radius.zero;
        borderRadiusTR = Radius.zero;
        borderRadiusBL = Radius.zero;
        borderRadiusBR = Radius.zero;
      });
  TailBox rounded_sm() => chain(this, () {
        rounded_tl_sm();
        rounded_tr_sm();
        rounded_bl_sm();
        rounded_br_sm();
      });
  TailBox rounded([double? value]) => chain(this, () {
        rounded_tl(value ?? (0.25).rem);
        rounded_tr(value ?? (0.25).rem);
        rounded_bl(value ?? (0.25).rem);
        rounded_br(value ?? (0.25).rem);
      });
  TailBox rounded_md() => chain(this, () {
        rounded_tl_md();
        rounded_tr_md();
        rounded_bl_md();
        rounded_br_md();
      });
  TailBox rounded_lg() => chain(this, () {
        rounded_tl_lg();
        rounded_tr_lg();
        rounded_bl_lg();
        rounded_br_lg();
      });
  TailBox rounded_xl() => chain(this, () {
        rounded_tl_xl();
        rounded_tr_xl();
        rounded_bl_xl();
        rounded_br_xl();
      });
  TailBox rounded_2xl() => chain(this, () {
        rounded_tl_2xl();
        rounded_tr_2xl();
        rounded_bl_2xl();
        rounded_br_2xl();
      });
  TailBox rounded_3xl() => chain(this, () {
        rounded_tl_3xl();
        rounded_tr_3xl();
        rounded_bl_3xl();
        rounded_br_3xl();
      });
  TailBox rounded_4xl() => chain(this, () {
        rounded_tl_4xl();
        rounded_tr_4xl();
        rounded_bl_4xl();
        rounded_br_4xl();
      });
  // Border Radius TL
  TailBox rounded_tl([double? value]) => chain(this, () => borderRadiusTL = Radius.circular(value ?? (0.25).rem));
  TailBox rounded_tl_sm() => chain(this, () => borderRadiusTL = Radius.circular((0.125).rem));
  TailBox rounded_tl_md() => chain(this, () => borderRadiusTL = Radius.circular((0.375).rem));
  TailBox rounded_tl_lg() => chain(this, () => borderRadiusTL = Radius.circular((0.5).rem));
  TailBox rounded_tl_xl() => chain(this, () => borderRadiusTL = Radius.circular((0.75).rem));
  TailBox rounded_tl_2xl() => chain(this, () => borderRadiusTL = Radius.circular((1.0).rem));
  TailBox rounded_tl_3xl() => chain(this, () => borderRadiusTL = Radius.circular((1.5).rem));
  TailBox rounded_tl_4xl() => chain(this, () => borderRadiusTL = Radius.circular((2.0).rem));
  // Border Radius TR
  TailBox rounded_tr([double? value]) => chain(this, () => borderRadiusTR = Radius.circular(value ?? (0.25).rem));
  TailBox rounded_tr_sm() => chain(this, () => borderRadiusTR = Radius.circular((0.125).rem));
  TailBox rounded_tr_md() => chain(this, () => borderRadiusTR = Radius.circular((0.375).rem));
  TailBox rounded_tr_lg() => chain(this, () => borderRadiusTR = Radius.circular((0.5).rem));
  TailBox rounded_tr_xl() => chain(this, () => borderRadiusTR = Radius.circular((0.75).rem));
  TailBox rounded_tr_2xl() => chain(this, () => borderRadiusTR = Radius.circular((1.0).rem));
  TailBox rounded_tr_3xl() => chain(this, () => borderRadiusTR = Radius.circular((1.5).rem));
  TailBox rounded_tr_4xl() => chain(this, () => borderRadiusTR = Radius.circular((2.0).rem));
  // Border Radius BL
  TailBox rounded_bl([double? value]) => chain(this, () => borderRadiusBL = Radius.circular(value ?? (0.25).rem));
  TailBox rounded_bl_sm() => chain(this, () => borderRadiusBL = Radius.circular((0.125).rem));
  TailBox rounded_bl_md() => chain(this, () => borderRadiusBL = Radius.circular((0.375).rem));
  TailBox rounded_bl_lg() => chain(this, () => borderRadiusBL = Radius.circular((0.5).rem));
  TailBox rounded_bl_xl() => chain(this, () => borderRadiusBL = Radius.circular((0.75).rem));
  TailBox rounded_bl_2xl() => chain(this, () => borderRadiusBL = Radius.circular((1.0).rem));
  TailBox rounded_bl_3xl() => chain(this, () => borderRadiusBL = Radius.circular((1.5).rem));
  TailBox rounded_bl_4xl() => chain(this, () => borderRadiusBL = Radius.circular((2.0).rem));
  // Border Radius BR
  TailBox rounded_br([double? value]) => chain(this, () => borderRadiusBR = Radius.circular(value ?? (0.25).rem));
  TailBox rounded_br_sm() => chain(this, () => borderRadiusBR = Radius.circular((0.125).rem));
  TailBox rounded_br_md() => chain(this, () => borderRadiusBR = Radius.circular((0.375).rem));
  TailBox rounded_br_lg() => chain(this, () => borderRadiusBR = Radius.circular((0.5).rem));
  TailBox rounded_br_xl() => chain(this, () => borderRadiusBR = Radius.circular((0.75).rem));
  TailBox rounded_br_2xl() => chain(this, () => borderRadiusBR = Radius.circular((1.0).rem));
  TailBox rounded_br_3xl() => chain(this, () => borderRadiusBR = Radius.circular((1.5).rem));
  TailBox rounded_br_4xl() => chain(this, () => borderRadiusBR = Radius.circular((2.0).rem));

  // Border Width
  TailBox border([Color? colour, double? width, BorderStyle? style]) => chain(this, () {
        border_l(colour, width, style);
        border_t(colour, width, style);
        border_r(colour, width, style);
        border_b(colour, width, style);
      });
  // Border Width L
  TailBox border_l([Color? colour, double? width, BorderStyle? style]) => chain(this, () {
        borderL = BorderSide(
          width: width ?? 1.0,
          color: colour ?? TailColors.dark_900,
          style: width == 0 ? BorderStyle.none : style ?? BorderStyle.solid,
        );
      });
  TailBox border_l_0([Color? colour, BorderStyle? style]) => chain(this, () => border_l(colour, 0, style));
  TailBox border_l_1([Color? colour, BorderStyle? style]) => chain(this, () => border_l(colour, 1, style));
  TailBox border_l_2([Color? colour, BorderStyle? style]) => chain(this, () => border_l(colour, 2, style));
  TailBox border_l_3([Color? colour, BorderStyle? style]) => chain(this, () => border_l(colour, 3, style));
  TailBox border_l_4([Color? colour, BorderStyle? style]) => chain(this, () => border_l(colour, 4, style));
  TailBox border_l_5([Color? colour, BorderStyle? style]) => chain(this, () => border_l(colour, 5, style));
  // Border Width T
  TailBox border_t([Color? colour, double? width, BorderStyle? style]) => chain(this, () {
        borderT = BorderSide(
          width: width ?? 1.0,
          color: colour ?? TailColors.dark_900,
          style: width == 0 ? BorderStyle.none : style ?? BorderStyle.solid,
        );
      });
  TailBox border_t_0([Color? colour, BorderStyle? style]) => chain(this, () => border_t(colour, 0, style));
  TailBox border_t_1([Color? colour, BorderStyle? style]) => chain(this, () => border_t(colour, 1, style));
  TailBox border_t_2([Color? colour, BorderStyle? style]) => chain(this, () => border_t(colour, 2, style));
  TailBox border_t_3([Color? colour, BorderStyle? style]) => chain(this, () => border_t(colour, 3, style));
  TailBox border_t_4([Color? colour, BorderStyle? style]) => chain(this, () => border_t(colour, 4, style));
  TailBox border_t_5([Color? colour, BorderStyle? style]) => chain(this, () => border_t(colour, 5, style));
  // Border Width R
  TailBox border_r([Color? colour, double? width, BorderStyle? style]) => chain(this, () {
        borderR = BorderSide(
          width: width ?? 1.0,
          color: colour ?? TailColors.dark_900,
          style: width == 0 ? BorderStyle.none : style ?? BorderStyle.solid,
        );
      });
  TailBox border_r_0([Color? colour, BorderStyle? style]) => chain(this, () => border_r(colour, 0, style));
  TailBox border_r_1([Color? colour, BorderStyle? style]) => chain(this, () => border_r(colour, 1, style));
  TailBox border_r_2([Color? colour, BorderStyle? style]) => chain(this, () => border_r(colour, 2, style));
  TailBox border_r_3([Color? colour, BorderStyle? style]) => chain(this, () => border_r(colour, 3, style));
  TailBox border_r_4([Color? colour, BorderStyle? style]) => chain(this, () => border_r(colour, 4, style));
  TailBox border_r_5([Color? colour, BorderStyle? style]) => chain(this, () => border_r(colour, 5, style));
  // Border Width T
  TailBox border_b([Color? colour, double? width, BorderStyle? style]) => chain(this, () {
        borderB = BorderSide(
          width: width ?? 1.0,
          color: colour ?? TailColors.dark_900,
          style: width == 0 ? BorderStyle.none : style ?? BorderStyle.solid,
        );
      });
  TailBox border_b_0([Color? colour, BorderStyle? style]) => chain(this, () => border_b(colour, 0, style));
  TailBox border_b_1([Color? colour, BorderStyle? style]) => chain(this, () => border_b(colour, 1, style));
  TailBox border_b_2([Color? colour, BorderStyle? style]) => chain(this, () => border_b(colour, 2, style));
  TailBox border_b_3([Color? colour, BorderStyle? style]) => chain(this, () => border_b(colour, 3, style));
  TailBox border_b_4([Color? colour, BorderStyle? style]) => chain(this, () => border_b(colour, 4, style));
  TailBox border_b_5([Color? colour, BorderStyle? style]) => chain(this, () => border_b(colour, 5, style));

  // Box Shadow
  TailBox shadow(Iterable<Shadow>? value) => chain(this, () => boxShadow = value != null ? List.from(value) : null);
  TailBox shadow_none() => chain(this, () => boxShadow = []);
  TailBox shadow_default([Color? colour]) => chain(
      this,
      () => boxShadow = [
            BoxShadow(offset: const Offset(0, 1), blurRadius: 3, spreadRadius: 0, color: colour ?? const Color.fromRGBO(0, 0, 0, 0.1)),
          ]);
  TailBox shadow_sm([Color? colour]) => chain(
      this,
      () => boxShadow = [
            BoxShadow(offset: const Offset(0, 1), blurRadius: 2, spreadRadius: 0, color: colour ?? const Color.fromRGBO(0, 0, 0, 0.05)),
          ]);
  TailBox shadow_md([Color? colour]) => chain(
      this,
      () => boxShadow = [
            BoxShadow(offset: const Offset(0, 4), blurRadius: 6, spreadRadius: -1, color: colour ?? const Color.fromRGBO(0, 0, 0, 0.1)),
            BoxShadow(offset: const Offset(0, 2), blurRadius: 4, spreadRadius: -2, color: colour ?? const Color.fromRGBO(0, 0, 0, 0.1)),
          ]);
  TailBox shadow_lg([Color? colour]) => chain(
      this,
      () => boxShadow = [
            BoxShadow(offset: const Offset(0, 10), blurRadius: 15, spreadRadius: -3, color: colour ?? const Color.fromRGBO(0, 0, 0, 0.1)),
            BoxShadow(offset: const Offset(0, 4), blurRadius: 6, spreadRadius: -4, color: colour ?? const Color.fromRGBO(0, 0, 0, 0.1)),
          ]);

  // Padding
  TailBox p([double v = 1]) => chain(this, () => [pl(v), pt(v), pr(v), pb(v)]);
  TailBox p_1() => chain(this, () => p((0.25).rem));
  TailBox p_2() => chain(this, () => p((0.5).rem));
  TailBox p_4() => chain(this, () => p((1.0).rem));
  TailBox p_8() => chain(this, () => p((2.0).rem));
  TailBox p_10() => chain(this, () => p((2.5).rem));
  // Padding X
  TailBox px([double v = 1]) => chain(this, () => [pl(v), pr(v)]);
  TailBox px_1() => chain(this, () => px((0.25).rem));
  TailBox px_2() => chain(this, () => px((0.5).rem));
  TailBox px_4() => chain(this, () => px((1.0).rem));
  TailBox px_8() => chain(this, () => px((2.0).rem));
  TailBox px_10() => chain(this, () => px((2.5).rem));
  // Padding Y
  TailBox py([double v = 1]) => chain(this, () => [pt(v), pb(v)]);
  TailBox py_1() => chain(this, () => py((0.25).rem));
  TailBox py_2() => chain(this, () => py((0.5).rem));
  TailBox py_4() => chain(this, () => py((1.0).rem));
  TailBox py_8() => chain(this, () => py((2.0).rem));
  TailBox py_10() => chain(this, () => py((2.5).rem));
  // Padding L
  TailBox pl([double v = 1]) => chain(this, () => paddingL = v);
  TailBox pl_1() => chain(this, () => pl((0.25).rem));
  TailBox pl_2() => chain(this, () => pl((0.5).rem));
  TailBox pl_4() => chain(this, () => pl((1.0).rem));
  TailBox pl_8() => chain(this, () => pl((2.0).rem));
  TailBox pl_10() => chain(this, () => pl((2.5).rem));
  // Padding T
  TailBox pt([double v = 1]) => chain(this, () => paddingT = v);
  TailBox pt_1() => chain(this, () => pt((0.25).rem));
  TailBox pt_2() => chain(this, () => pt((0.5).rem));
  TailBox pt_4() => chain(this, () => pt((1.0).rem));
  TailBox pt_8() => chain(this, () => pt((2.0).rem));
  TailBox pt_10() => chain(this, () => pt((2.5).rem));
  // Padding R
  TailBox pr([double v = 1]) => chain(this, () => paddingR = v);
  TailBox pr_1() => chain(this, () => pr((0.25).rem));
  TailBox pr_2() => chain(this, () => pr((0.5).rem));
  TailBox pr_4() => chain(this, () => pr((1.0).rem));
  TailBox pr_8() => chain(this, () => pr((2.0).rem));
  TailBox pr_10() => chain(this, () => pr((2.5).rem));
  // Padding B
  TailBox pb([double v = 1]) => chain(this, () => paddingB = v);
  TailBox pb_1() => chain(this, () => pb((0.25).rem));
  TailBox pb_2() => chain(this, () => pb((0.5).rem));
  TailBox pb_4() => chain(this, () => pb((1.0).rem));
  TailBox pb_8() => chain(this, () => pb((2.0).rem));
  TailBox pb_10() => chain(this, () => pb((2.5).rem));

  // Margin
  TailBox m([double v = 1]) => chain(this, () => [ml(v), mt(v), mr(v), mb(v)]);
  TailBox m_1() => chain(this, () => m((0.25).rem));
  TailBox m_2() => chain(this, () => m((0.5).rem));
  TailBox m_4() => chain(this, () => m((1.0).rem));
  TailBox m_8() => chain(this, () => m((2.0).rem));
  TailBox m_10() => chain(this, () => m((2.5).rem));
  // Margin X
  TailBox mx([double v = 1]) => chain(this, () => [ml(v), mr(v)]);
  TailBox mx_1() => chain(this, () => mx((0.25).rem));
  TailBox mx_2() => chain(this, () => mx((0.5).rem));
  TailBox mx_4() => chain(this, () => mx((1.0).rem));
  TailBox mx_8() => chain(this, () => mx((2.0).rem));
  TailBox mx_10() => chain(this, () => mx((2.5).rem));
  // Margin Y
  TailBox my([double v = 1]) => chain(this, () => [mt(v), mb(v)]);
  TailBox my_1() => chain(this, () => my((0.25).rem));
  TailBox my_2() => chain(this, () => my((0.5).rem));
  TailBox my_4() => chain(this, () => my((1.0).rem));
  TailBox my_8() => chain(this, () => my((2.0).rem));
  TailBox my_10() => chain(this, () => my((2.5).rem));
  // Margin L
  TailBox ml([double v = 1]) => chain(this, () => marginL = v);
  TailBox ml_1() => chain(this, () => ml((0.25).rem));
  TailBox ml_2() => chain(this, () => ml((0.5).rem));
  TailBox ml_4() => chain(this, () => ml((1.0).rem));
  TailBox ml_8() => chain(this, () => ml((2.0).rem));
  TailBox ml_10() => chain(this, () => ml((2.5).rem));
  // Margin T
  TailBox mt([double v = 1]) => chain(this, () => marginT = v);
  TailBox mt_1() => chain(this, () => mt((0.25).rem));
  TailBox mt_2() => chain(this, () => mt((0.5).rem));
  TailBox mt_4() => chain(this, () => mt((1.0).rem));
  TailBox mt_8() => chain(this, () => mt((2.0).rem));
  TailBox mt_10() => chain(this, () => mt((2.5).rem));
  // Margin R
  TailBox mr([double v = 1]) => chain(this, () => marginR = v);
  TailBox mr_1() => chain(this, () => mr((0.25).rem));
  TailBox mr_2() => chain(this, () => mr((0.5).rem));
  TailBox mr_4() => chain(this, () => mr((1.0).rem));
  TailBox mr_8() => chain(this, () => mr((2.0).rem));
  TailBox mr_10() => chain(this, () => mr((2.5).rem));
  // Margin B
  TailBox mb([double v = 1]) => chain(this, () => marginB = v);
  TailBox mb_1() => chain(this, () => mb((0.25).rem));
  TailBox mb_2() => chain(this, () => mb((0.5).rem));
  TailBox mb_4() => chain(this, () => mb((1.0).rem));
  TailBox mb_8() => chain(this, () => mb((2.0).rem));
  TailBox mb_10() => chain(this, () => mb((2.5).rem));

  T as<T>(T Function(TailBox styled) fn) {
    return fn(this);
  }
}
