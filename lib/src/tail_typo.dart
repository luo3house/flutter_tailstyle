import 'package:flutter/material.dart';
import 'package:tailstyle/src/ext/rem.dart';
import 'package:tailstyle/src/tail_colors.dart';
import 'package:tailstyle/src/util/chain.dart';

class TailTypo {
  double? fontSize;
  FontStyle? fontStyle;
  FontWeight? fontWeight;
  double? letterSpacing;
  double? height;
  Color? color;
  TextDecoration? decoration;
  Color? decorationColor;
  TextDecorationStyle? decorationStyle;
  double? decorationThickness;
  List<Shadow>? shadows;
  TextOverflow? overflow;
  TextAlign? textAlign;
  Color? caretColor;

  // Font Size
  TailTypo font_size(double value) => chain(this, () => fontSize = value);
  TailTypo text_xs() => chain(this, () => fontSize = (0.75).rem);
  TailTypo text_sm() => chain(this, () => fontSize = (0.875).rem);
  TailTypo text_base() => chain(this, () => fontSize = (1.0).rem);
  TailTypo text_lg() => chain(this, () => fontSize = (1.125).rem);
  TailTypo text_xl() => chain(this, () => fontSize = (1.25).rem);
  TailTypo text_2xl() => chain(this, () => fontSize = (1.5).rem);
  TailTypo text_3xl() => chain(this, () => fontSize = (1.875).rem);
  TailTypo text_4xl() => chain(this, () => fontSize = (2.25).rem);
  TailTypo text_5xl() => chain(this, () => fontSize = (3.0).rem);
  TailTypo text_6xl() => chain(this, () => fontSize = (3.75).rem);
  TailTypo text_7xl() => chain(this, () => fontSize = (4.5).rem);
  TailTypo text_8xl() => chain(this, () => fontSize = (6.0).rem);
  // Font Style
  TailTypo font_style(FontStyle value) => chain(this, () => fontStyle = value);
  TailTypo italic() => chain(this, () => fontStyle = FontStyle.italic);
  TailTypo not_italic() => chain(this, () => fontStyle = FontStyle.normal);
  // Font Weight
  TailTypo font_weight(FontWeight value) => chain(this, () => fontWeight = value);
  TailTypo font_thin() => chain(this, () => fontWeight = FontWeight.w100);
  TailTypo font_extralight() => chain(this, () => fontWeight = FontWeight.w200);
  TailTypo font_light() => chain(this, () => fontWeight = FontWeight.w300);
  TailTypo font_normal() => chain(this, () => fontWeight = FontWeight.w400);
  TailTypo font_medium() => chain(this, () => fontWeight = FontWeight.w500);
  TailTypo font_semibold() => chain(this, () => fontWeight = FontWeight.w600);
  TailTypo font_bold() => chain(this, () => fontWeight = FontWeight.w700);
  TailTypo font_extrabold() => chain(this, () => fontWeight = FontWeight.w800);
  TailTypo font_black() => chain(this, () => fontWeight = FontWeight.w900);
  // Letter Spacing
  TailTypo letter_spacing(double value) => chain(this, () => letterSpacing = value);
  TailTypo tracking_tighter() => chain(this, () => letterSpacing = (-0.05).rem);
  TailTypo tracking_tight() => chain(this, () => letterSpacing = (-0.025).rem);
  TailTypo tracking_normal() => chain(this, () => letterSpacing = (0.0).rem);
  TailTypo tracking_wide() => chain(this, () => letterSpacing = (0.025).rem);
  TailTypo tracking_wider() => chain(this, () => letterSpacing = (0.05).rem);
  TailTypo tracking_widest() => chain(this, () => letterSpacing = (0.1).rem);
  // Line Height
  TailTypo line_height(double value) => chain(this, () => height = value);
  TailTypo leading_none() => chain(this, () => height = 1.0);
  TailTypo leading_tight() => chain(this, () => height = 1.25);
  TailTypo leading_sung() => chain(this, () => height = 1.375);
  TailTypo leading_normal() => chain(this, () => height = 1.5);
  TailTypo leading_relaxed() => chain(this, () => height = 1.625);
  TailTypo leading_loose() => chain(this, () => height = 2.0);
  TailTypo leading_0() => chain(this, () => height = (0.0).rem);
  TailTypo leading_1() => chain(this, () => height = (0.25).rem);
  TailTypo leading_2() => chain(this, () => height = (0.5).rem);
  TailTypo leading_3() => chain(this, () => height = (0.75).rem);
  TailTypo leading_4() => chain(this, () => height = (1.0).rem);
  TailTypo leading_5() => chain(this, () => height = (1.25).rem);
  TailTypo leading_6() => chain(this, () => height = (1.5).rem);
  // Text Align
  TailTypo text_align(TextAlign value) => chain(this, () => textAlign = value);
  TailTypo text_left() => chain(this, () => textAlign = TextAlign.left);
  TailTypo text_center() => chain(this, () => textAlign = TextAlign.center);
  TailTypo text_right() => chain(this, () => textAlign = TextAlign.right);
  TailTypo text_justify() => chain(this, () => textAlign = TextAlign.justify);
  // Text Color
  TailTypo text_color(Color colour) => chain(this, () => color = colour);
  TailTypo text_transparent() => chain(this, () => color = TailColors.transparent);
  // Text Decoration
  TailTypo text_decoration(TextDecoration value) => chain(this, () => decoration = value);
  TailTypo underline() => chain(this, () => decoration = TextDecoration.underline);
  TailTypo overline() => chain(this, () => decoration = TextDecoration.overline);
  TailTypo line_through() => chain(this, () => decoration = TextDecoration.lineThrough);
  TailTypo no_underline() => chain(this, () => decoration = TextDecoration.none);
  // Text Decoration Color
  TailTypo decoration_color(Color colour) => chain(this, () => decorationColor = colour);
  TailTypo decoration_transparent() => chain(this, () => decorationColor = TailColors.transparent);
  // Text Decoration Style
  TailTypo decoration_style(TextDecorationStyle value) => chain(this, () => decorationStyle = value);
  TailTypo decoration_solid() => chain(this, () => decorationStyle = TextDecorationStyle.solid);
  TailTypo decoration_double() => chain(this, () => decorationStyle = TextDecorationStyle.double);
  TailTypo decoration_dotted() => chain(this, () => decorationStyle = TextDecorationStyle.dotted);
  TailTypo decoration_dashed() => chain(this, () => decorationStyle = TextDecorationStyle.dashed);
  TailTypo decoration_wavy() => chain(this, () => decorationStyle = TextDecorationStyle.wavy);
  // Text Decoration Thickness
  TailTypo decoration_thickness(double value) => chain(this, () => decorationThickness = value);
  TailTypo decoration_0() => chain(this, () => decorationThickness = 0);
  TailTypo decoration_1() => chain(this, () => decorationThickness = 1);
  TailTypo decoration_2() => chain(this, () => decorationThickness = 1);
  TailTypo decoration_3() => chain(this, () => decorationThickness = 1);
  TailTypo decoration_4() => chain(this, () => decorationThickness = 1);
  TailTypo decoration_5() => chain(this, () => decorationThickness = 1);
  TailTypo decoration_6() => chain(this, () => decorationThickness = 1);
  TailTypo decoration_7() => chain(this, () => decorationThickness = 1);
  TailTypo decoration_8() => chain(this, () => decorationThickness = 1);
  TailTypo decoration_0_1rem() => chain(this, () => decorationThickness = (0.1).rem);
  TailTypo decoration_3px() => chain(this, () => decorationThickness = 3);
  TailTypo decoration_0_3rem() => chain(this, () => decorationThickness = (0.3).rem);
  // Text Shadow
  TailTypo text_shadow(Iterable<Shadow> value) => chain(this, () => shadows = List.from(value));
  TailTypo text_shadow_sm() => chain(
      this,
      () => shadows = [
            const Shadow(offset: Offset(1, 1), blurRadius: 3, color: Color.fromRGBO(36, 37, 47, .25)),
          ]);
  TailTypo text_shadow_md() => chain(
      this,
      () => shadows = [
            const Shadow(offset: Offset(0, 1), blurRadius: 2, color: Color.fromRGBO(30, 29, 39, .19)),
            const Shadow(offset: Offset(1, 2), blurRadius: 4, color: Color.fromRGBO(54, 64, 147, .18)),
          ]);
  TailTypo text_shadow_lg() => chain(
      this,
      () => shadows = [
            const Shadow(offset: Offset(3, 3), blurRadius: 6, color: Color.fromRGBO(0, 0, 0, .26)),
            const Shadow(offset: Offset(0, 0), blurRadius: 5, color: Color.fromRGBO(15, 3, 86, .22)),
          ]);
  TailTypo text_shadow_xl() => chain(
      this,
      () => shadows = [
            const Shadow(offset: Offset(1, 1), blurRadius: 3, color: Color.fromRGBO(0, 0, 0, .29)),
            const Shadow(offset: Offset(2, 4), blurRadius: 7, color: Color.fromRGBO(73, 64, 125, .35)),
          ]);
  TailTypo text_shadow_none() => chain(this, () => shadows = []);

  // Text Overflow
  TailTypo text_overflow(TextOverflow value) => chain(this, () => overflow = value);
  TailTypo truncate() => chain(this, () => overflow = TextOverflow.ellipsis);
  TailTypo overflow_ellipsis() => chain(this, () => overflow = TextOverflow.ellipsis);
  TailTypo overflow_clip() => chain(this, () => overflow = TextOverflow.clip);

  // Caret Color
  TailTypo caret(Color? color) => chain(this, () => caretColor = color);

  T as<T>(T Function(TailTypo styled) fn) {
    return fn(this);
  }
}
