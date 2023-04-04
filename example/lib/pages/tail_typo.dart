import 'package:flutter/material.dart';
import 'package:tailstyle/tailstyle.dart';

class TailTypoPage extends StatelessWidget {
  const TailTypoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      title("Font Size"),
      fontSize(),
      title("Font Style"),
      fontStyle(),
      title("Font Weight"),
      fontWeight(),
      title("Font Spacing"),
      fontSpacing(),
      title("Line Height"),
      lineHeight(),
      title("Text Align"),
      textAlign(),
      title("Text Color"),
      textColor(),
      title("Text Decoration"),
      textDecoration(),
      title("Text Decoration Color"),
      textDecorationColor(),
      title("Text Decoration Thickness"),
      textDecorationThickness(),
      title("Text Shadow"),
      textShadow(),
      title("Text Overflow"),
      textOverflow(),
      TailBox().my_2().SizedBox(),
    ]);
  }

  Widget title(String data) {
    return TailBox().pt_8().pb_4().as((styled) {
      return styled.Container(
        child: TailTypo().text_2xl().font_bold().Text(data),
      );
    });
  }

  Widget fontSize() {
    return content([
      code("TailTypo().text_xs()"),
      TailTypo().text_xs().Text(lorem),
      code("TailTypo().text_sm()"),
      TailTypo().text_sm().Text(lorem),
      code("TailTypo().text_base()"),
      TailTypo().text_base().Text(lorem),
      code("TailTypo().text_lg()"),
      TailTypo().text_lg().Text(lorem),
      code("TailTypo().text_xl()"),
      TailTypo().text_xl().Text(lorem),
      code("TailTypo().text_[2-8]xl()"),
      TailTypo().text_2xl().Text(lorem),
    ]);
  }

  Widget fontStyle() {
    return content([
      code("TailTypo().italic()"),
      TailTypo().italic().Text(lorem),
      code("TailTypo().not_italic()"),
      TailTypo().not_italic().Text(lorem),
    ]);
  }

  Widget fontWeight() {
    return content([
      code("TailTypo().font_thin()"),
      TailTypo().font_thin().Text(lorem),
      code("TailTypo().font_extralight()"),
      TailTypo().font_extralight().Text(lorem),
      code("TailTypo().font_light()"),
      TailTypo().font_light().Text(lorem),
      code("TailTypo().font_normal()"),
      TailTypo().font_normal().Text(lorem),
      code("TailTypo().font_medium()"),
      TailTypo().font_medium().Text(lorem),
      code("TailTypo().font_semibold()"),
      TailTypo().font_semibold().Text(lorem),
      code("TailTypo().font_bold()"),
      TailTypo().font_bold().Text(lorem),
      code("TailTypo().font_extrabold()"),
      TailTypo().font_extrabold().Text(lorem),
      code("TailTypo().font_black()"),
      TailTypo().font_black().Text(lorem),
    ]);
  }

  Widget fontSpacing() {
    return content([
      code("TailTypo().tracking_tighter()"),
      TailTypo().tracking_tighter().Text(lorem),
      code("TailTypo().tracking_tight()"),
      TailTypo().tracking_tight().Text(lorem),
      code("TailTypo().tracking_normal()"),
      TailTypo().tracking_normal().Text(lorem),
      code("TailTypo().tracking_wide()"),
      TailTypo().tracking_wide().Text(lorem),
      code("TailTypo().tracking_wider()"),
      TailTypo().tracking_wider().Text(lorem),
      code("TailTypo().tracking_widest()"),
      TailTypo().tracking_widest().Text(lorem),
    ]);
  }

  Widget lineHeight() {
    return content([
      code("TailTypo().leading_none()"),
      TailTypo().leading_none().Text(lorem),
      code("TailTypo().leading_tight()"),
      TailTypo().leading_tight().Text(lorem),
      code("TailTypo().leading_sung()"),
      TailTypo().leading_sung().Text(lorem),
      code("TailTypo().leading_normal()"),
      TailTypo().leading_normal().Text(lorem),
      code("TailTypo().leading_relaxed()"),
      TailTypo().leading_relaxed().Text(lorem),
      code("TailTypo().leading_loose()"),
      TailTypo().leading_loose().Text(lorem),
      code("TailTypo().leading_[0-6]()"),
    ]);
  }

  Widget textAlign() {
    return content([
      code("TailTypo().text_left()"),
      TailTypo().text_left().Text(lorem),
      code("TailTypo().text_center()"),
      TailTypo().text_center().Text(lorem),
      code("TailTypo().text_right()"),
      TailTypo().text_right().Text(lorem),
      code("TailTypo().text_justify()"),
      TailTypo().text_justify().Text(lorem),
    ]);
  }

  Widget textColor() {
    return content([
      code("TailTypo().text_color(TailColors.sky_700)"),
      TailTypo().text_color(TailColors.sky_700).Text(lorem),
    ]);
  }

  Widget textDecoration() {
    return content([
      code("TailTypo().underline()"),
      TailTypo().underline().Text(lorem),
      code("TailTypo().overline()"),
      TailTypo().overline().Text(lorem),
      code("TailTypo().line_through()"),
      TailTypo().line_through().Text(lorem),
      code("TailTypo().no_underline()"),
      TailTypo().no_underline().Text(lorem),
    ]);
  }

  Widget textDecorationColor() {
    return content([
      code("TailTypo().underline().decoration_color(TailColors.red_600)"),
      TailTypo().line_through().decoration_color(TailColors.red_600).Text(lorem),
    ]);
  }

  Widget textDecorationStyle() {
    return content([
      code("TailTypo().decoration_solid()"),
      TailTypo().decoration_solid().Text(lorem),
      code("TailTypo().decoration_double()"),
      TailTypo().decoration_double().Text(lorem),
      code("TailTypo().decoration_dotted()"),
      TailTypo().decoration_dotted().Text(lorem),
      code("TailTypo().decoration_dashed()"),
      TailTypo().decoration_dashed().Text(lorem),
      code("TailTypo().decoration_wavy()"),
      TailTypo().decoration_wavy().Text(lorem),
    ]);
  }

  Widget textDecorationThickness() {
    return content([
      code("TailTypo().decoration_0()"),
      TailTypo().decoration_0().Text(lorem),
      code("TailTypo().decoration_1()"),
      TailTypo().decoration_1().Text(lorem),
      code("TailTypo().decoration_2()"),
      TailTypo().decoration_2().Text(lorem),
      code("TailTypo().decoration_3()"),
      TailTypo().decoration_3().Text(lorem),
      code("TailTypo().decoration_4()"),
      TailTypo().decoration_4().Text(lorem),
      code("TailTypo().decoration_5()"),
      TailTypo().decoration_5().Text(lorem),
    ]);
  }

  Widget textShadow() {
    return content([
      code("TailTypo().text_shadow_sm()"),
      TailTypo().text_shadow_sm().Text(lorem),
      code("TailTypo().text_shadow_md()"),
      TailTypo().text_shadow_md().Text(lorem),
      code("TailTypo().text_shadow_lg()"),
      TailTypo().text_shadow_lg().Text(lorem),
      code("TailTypo().text_shadow_xl()"),
      TailTypo().text_shadow_xl().Text(lorem),
      code("TailTypo().text_shadow_none()"),
      TailTypo().text_shadow_none().Text(lorem),
    ]);
  }

  Widget textOverflow() {
    return content([
      code("TailTypo().truncate()"),
      TailBox().border().rounded_sm().as((styled) {
        return styled.Container(
          width: 300,
          child: TailTypo().truncate().Text(List.generate(100, (_) => lorem).join(""), maxLines: 4),
        );
      }),
    ]);
  }

  Widget code(String data) {
    return TailBox().m_4().p_2().bg(TailColors.gray_200).border(TailColors.gray_200).rounded_md().as((styled) {
      return styled.Container(
        child: TailTypo().font_bold().Text(data),
      );
    });
  }

  Widget content(List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}

const lorem = "The quick brown fox jumps over the lazy dog";
