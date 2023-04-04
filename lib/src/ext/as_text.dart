import 'package:flutter/widgets.dart';
import 'package:tailstyle/src/tail_typo.dart';

typedef StyledText = Text;
typedef StyledTextStyle = TextStyle;

extension TailTypo2TextExt on TailTypo {
  StyledText Text(
    String data, {
    Key? key,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      StyledText(
        data,
        key: key,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: caretColor,
        style: TextStyle(),
      );

  StyledTextStyle TextStyle() => StyledTextStyle(
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: height,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        shadows: shadows,
        overflow: overflow,
      );
}
