import 'package:example/widgets/active_button.dart';
import 'package:example/widgets/code.dart';
import 'package:example/widgets/content.dart';
import 'package:example/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:tailstyle/tailstyle.dart';

class TailBoxDecorationPage extends StatelessWidget {
  const TailBoxDecorationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SectionTitle("Background"),
      background(),
      const SectionTitle("Gradient"),
      gradient(),
      const SectionTitle("Border Radius"),
      borderRadius(),
      const SectionTitle("Border"),
      border(),
      const SectionTitle("Shadow"),
      shadow(),
      TailBox().my_2().SizedBox(),
    ]);
  }

  Widget background() {
    return Content([
      const Code("TailBox().bg(TailColors.pink_300)"),
      Wrap(children: [
        TailBox().mr_2().bg(TailColors.pink_300).Container(width: 50, height: 50),
        TailBox().mr_2().bg(TailColors.amber_500).Container(width: 50, height: 50),
        TailBox().mr_2().bg(TailColors.indigo_500).Container(width: 50, height: 50),
        TailBox().mr_2().bg(TailColors.purple_600).Container(width: 50, height: 50),
      ]),
    ]);
  }

  Widget gradient() {
    final stops = [TailColors.green_400, TailColors.sky_400];
    final acceptors = {
      "bg_gradient_to_t": (TailBox box) => box.bg_gradient_to_t(stops),
      "bg_gradient_to_tr": (TailBox box) => box.bg_gradient_to_tr(stops),
      "bg_gradient_to_r": (TailBox box) => box.bg_gradient_to_r(stops),
      "bg_gradient_to_br": (TailBox box) => box.bg_gradient_to_br(stops),
      "bg_gradient_to_b": (TailBox box) => box.bg_gradient_to_b(stops),
      "bg_gradient_to_bl": (TailBox box) => box.bg_gradient_to_bl(stops),
      "bg_gradient_to_l": (TailBox box) => box.bg_gradient_to_l(stops),
      "bg_gradient_to_tl": (TailBox box) => box.bg_gradient_to_tl(stops),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().bg_gradient_to_[direction]"),
        Wrap(
          children: List.from(acceptors.keys.map((fn) {
            return ActiveButton(
              active: currentFn.toString() == fn.toString(),
              onTap: () => currentFn(fn),
              child: (color) {
                return TailBox().p_2().m_2().rounded_md().border(color).as((styled) {
                  return styled.Container(child: TailTypo().text_color(color).Text(fn));
                });
              },
            );
          })),
        ),
        accept(TailBox()).rounded_md().Container(width: 100, height: 160),
      ]);
    }, RxString("bg_gradient_to_t"));
  }

  Widget borderRadius() {
    final acceptors = {
      "rounded_none": (TailBox box) => box.rounded_none(),
      "rounded_sm": (TailBox box) => box.rounded_sm(),
      "rounded": (TailBox box) => box.rounded(),
      "rounded_md": (TailBox box) => box.rounded_md(),
      "rounded_tl_lg": (TailBox box) => box.rounded_tl_lg(),
      "rounded_tr_lg": (TailBox box) => box.rounded_tr_lg(),
      "rounded_bl_lg": (TailBox box) => box.rounded_bl_lg(),
      "rounded_br_lg": (TailBox box) => box.rounded_br_lg(),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().rounded_[size]"),
        const Code("TailBox().rounded_[corner]_[size]"),
        Wrap(
          children: List.from(acceptors.keys.map((fn) {
            return ActiveButton(
              active: currentFn.toString() == fn.toString(),
              onTap: () => currentFn(fn),
              child: (color) {
                return TailBox().p_2().m_2().rounded_md().border(color).as((styled) {
                  return styled.Container(child: TailTypo().text_color(color).Text(fn));
                });
              },
            );
          })),
        ),
        accept(TailBox()).bg(TailColors.sky_400).Container(width: 100, height: 160),
      ]);
    }, RxString("rounded_md"));
  }

  Widget border() {
    const color = TailColors.green_700;
    final acceptors = {
      "border": (TailBox box) => box.border(),
      "border(color)": (TailBox box) => box.border(color),
      "border(color, 0)": (TailBox box) => box.border(color, 0),
      "border(color, 2)": (TailBox box) => box.border(color, 2),
      "border(color, 4)": (TailBox box) => box.border(color, 4),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().border(color?, size?, style?)"),
        const Code("TailBox().border_[l,t,r,b]_[size](color?, size?, style?)"),
        Wrap(
          children: List.from(acceptors.keys.map((fn) {
            return ActiveButton(
              active: currentFn.toString() == fn.toString(),
              onTap: () => currentFn(fn),
              child: (color) {
                return TailBox().p_2().m_2().rounded_md().border(color).as((styled) {
                  return styled.Container(child: TailTypo().text_color(color).Text(fn));
                });
              },
            );
          })),
        ),
        accept(TailBox()).rounded_md().bg(TailColors.sky_400).Container(width: 100, height: 160),
      ]);
    }, RxString("border"));
  }

  Widget shadow() {
    final acceptors = {
      "shadow_none": (TailBox box) => box.shadow_none(),
      "shadow_default": (TailBox box) => box.shadow_default(),
      "shadow_sm": (TailBox box) => box.shadow_sm(),
      "shadow_md": (TailBox box) => box.shadow_md(),
      "shadow_lg": (TailBox box) => box.shadow_lg(),
      "shadow_lg(color)": (TailBox box) => box.shadow_lg(TailColors.amber_600),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().shadow_[none,default,sm,md,lg](color?)"),
        Wrap(
          children: List.from(acceptors.keys.map((fn) {
            return ActiveButton(
              active: currentFn.toString() == fn.toString(),
              onTap: () => currentFn(fn),
              child: (color) {
                return TailBox().p_2().m_2().rounded_md().border(color).as((styled) {
                  return styled.Container(child: TailTypo().text_color(color).Text(fn));
                });
              },
            );
          })),
        ),
        accept(TailBox()).rounded_md().bg(TailColors.sky_400).Container(width: 100, height: 160),
      ]);
    }, RxString("shadow_md"));
  }
}
