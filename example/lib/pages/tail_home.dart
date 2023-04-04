import 'package:example/widgets/code.dart';
import 'package:flutter/material.dart';
import 'package:tailstyle/tailstyle.dart';

final before = """
Text(
  "Hello World",
  style: TextStyle(
    decoration: TextDecoration.lineThrough,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
);
"""
    .trim();

final after = """
TailTypo().line_through().text_xl().Text("Hello World");
"""
    .trim();

class TailHomePage extends StatelessWidget {
  const TailHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TailBox().mt_8().SizedBox(),
      Row(children: [
        Image.asset("assets/icon.png", width: 50, height: 50),
        TailBox().mr_2().SizedBox(),
        TailTypo().text_4xl().Text("TailStyle"),
      ]),
      TailBox().mt_4().SizedBox(),
      TailTypo().Text("TailStyle is a Flutter utility for speeding up Prototype Apps"),
      Code(before, tail: TailTypo().line_through()),
      Code(after),
      TailBox().mt_8().SizedBox(),
    ]);
  }
}
