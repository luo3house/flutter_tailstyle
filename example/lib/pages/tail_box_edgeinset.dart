import 'package:example/widgets/active_button.dart';
import 'package:example/widgets/code.dart';
import 'package:example/widgets/content.dart';
import 'package:example/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:tailstyle/tailstyle.dart';

class TailBoxEdgeInsetPage extends StatelessWidget {
  const TailBoxEdgeInsetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SectionTitle("Padding"),
      padding(),
      const SectionTitle("Padding X"),
      paddingX(),
      const SectionTitle("Padding Y"),
      paddingY(),
      const SectionTitle("Margin"),
      margin(),
      const SectionTitle("Margin X"),
      marginX(),
      const SectionTitle("Margin Y"),
      marginY(),
      TailBox().my_2().SizedBox(),
    ]);
  }

  Widget padding() {
    final acceptors = {
      "p": (TailBox box) => box.p(),
      "p_1": (TailBox box) => box.p_1(),
      "p_2": (TailBox box) => box.p_2(),
      "p_4": (TailBox box) => box.p_4(),
      "p(5)": (TailBox box) => box.p(5),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().p_[size]"),
        const Code("TailBox().p(size px)"),
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
        accept(TailBox()).rounded_md().bg(TailColors.teal_500).as((styled) {
          return styled.Container(child: TailTypo().text_color(TailColors.light_100).Text(currentFn.toString()));
        }),
      ]);
    }, RxString("p_2"));
  }

  Widget paddingX() {
    final acceptors = {
      "px": (TailBox box) => box.px(),
      "px_1": (TailBox box) => box.px_1(),
      "px_2": (TailBox box) => box.px_2(),
      "px_4": (TailBox box) => box.px_4(),
      "px(5)": (TailBox box) => box.px(5),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().px_[size]"),
        const Code("TailBox().px(size px)"),
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
        accept(TailBox()).rounded_md().bg(TailColors.teal_500).as((styled) {
          return styled.Container(child: TailTypo().text_color(TailColors.light_100).Text(currentFn.toString()));
        }),
      ]);
    }, RxString("px_2"));
  }

  Widget paddingY() {
    final acceptors = {
      "py": (TailBox box) => box.py(),
      "py_1": (TailBox box) => box.py_1(),
      "py_2": (TailBox box) => box.py_2(),
      "py_4": (TailBox box) => box.py_4(),
      "py(5)": (TailBox box) => box.py(5),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().py_[size]"),
        const Code("TailBox().py(size px)"),
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
        accept(TailBox()).rounded_md().bg(TailColors.teal_500).as((styled) {
          return styled.Container(child: TailTypo().text_color(TailColors.light_100).Text(currentFn.toString()));
        }),
      ]);
    }, RxString("py_2"));
  }

  Widget margin() {
    final acceptors = {
      "m": (TailBox box) => box.m(),
      "m_1": (TailBox box) => box.m_1(),
      "m_2": (TailBox box) => box.m_2(),
      "m_4": (TailBox box) => box.m_4(),
      "m(5)": (TailBox box) => box.m(5),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().m_[size]"),
        const Code("TailBox().m(size px)"),
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
        TailBox().border().as((styled) {
          return styled.Container(
            child: accept(TailBox()).bg(TailColors.teal_500).as((styled) {
              return styled.Container(child: TailTypo().text_color(TailColors.light_100).Text(currentFn.toString()));
            }),
          );
        }),
      ]);
    }, RxString("m_2"));
  }

  Widget marginX() {
    final acceptors = {
      "mx": (TailBox box) => box.mx(),
      "mx_1": (TailBox box) => box.mx_1(),
      "mx_2": (TailBox box) => box.mx_2(),
      "mx_4": (TailBox box) => box.mx_4(),
      "mx(5)": (TailBox box) => box.mx(5),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().mx_[size]"),
        const Code("TailBox().mx(size px)"),
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
        TailBox().border().as((styled) {
          return styled.Container(
            child: accept(TailBox()).bg(TailColors.teal_500).as((styled) {
              return styled.Container(child: TailTypo().text_color(TailColors.light_100).Text(currentFn.toString()));
            }),
          );
        }),
      ]);
    }, RxString("mx_2"));
  }

  Widget marginY() {
    final acceptors = {
      "my": (TailBox box) => box.my(),
      "my_1": (TailBox box) => box.my_1(),
      "my_2": (TailBox box) => box.my_2(),
      "my_4": (TailBox box) => box.my_4(),
      "my(5)": (TailBox box) => box.my(5),
    };
    return ObxValue((currentFn) {
      final accept = acceptors[currentFn.toString()]!;
      return Content([
        const Code("TailBox().my_[size]"),
        const Code("TailBox().my(size mx)"),
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
        TailBox().border().as((styled) {
          return styled.Container(
            child: accept(TailBox()).bg(TailColors.teal_500).as((styled) {
              return styled.Container(child: TailTypo().text_color(TailColors.light_100).Text(currentFn.toString()));
            }),
          );
        }),
      ]);
    }, RxString("my_2"));
  }
}
