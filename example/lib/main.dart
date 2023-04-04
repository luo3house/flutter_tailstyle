import 'package:example/pages/tail_box_decoration.dart';
import 'package:example/pages/tail_box_edgeinset.dart';
import 'package:example/pages/tail_colors.dart';
import 'package:example/pages/tail_home.dart';
import 'package:example/pages/tail_typo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailstyle/tailstyle.dart';

final pages = [
  GetPage(title: "Home", name: "/", page: withScaffold(() => const TailHomePage())),
  GetPage(title: "Colors", name: "/colors", page: withScaffold(() => const TailColorsPage())),
  GetPage(title: "Typography", name: "/typo", page: withScaffold(() => const TailTypoPage())),
  GetPage(title: "Box Decoration", name: "/box_decoration", page: withScaffold(() => const TailBoxDecorationPage())),
  GetPage(title: "Box EdgeInset", name: "/box_edgeinset", page: withScaffold(() => const TailBoxEdgeInsetPage())),
];

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.indigo),
    title: 'TailStyle Prototyping',
    initialRoute: "/",
    getPages: pages,
  ));
}

Widget Function() withScaffold(Widget Function() builder) {
  return () {
    return Scaffold(
      body: TailBox().pl_4().Container(child: builder()),
      appBar: AppBar(title: const Text("TailStyle Docs")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const ListTile(
              title: Text("TailStyle Docs"),
              enabled: false,
            ),
            ...pages.map((page) {
              return ListTile(
                title: Text(page.title ?? ''),
                onTap: () => Get.toNamed(page.name),
              );
            }),
          ],
        ),
      ),
    );
  };
}
