# ![tail-icon](./images/icon.png) TailStyle

[![Pub Version](https://img.shields.io/pub/v/tailstyle)](https://pub.dev/packages/tailstyle)
[![Github Action](https://github.com/luo3house/flutter_tailstyle/actions/workflows/build-demo.yml/badge.svg)](https://luo3house.github.io/flutter_tailstyle/)

[Live Demo](https://luo3house.github.io/flutter_tailstyle/)

🌼 TailStyle is a Flutter utility for speeding up Prototype Apps.

## Shrink code

Type less from the detailed code below:

```dart
Text(
  "Hello World",
  style: TextStyle(
    decoration: TextDecoration.lineThrough,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
);
```

to

```dart
TailTypo().line_through().text_xl().Text("Hello World");
```

And also keep friendly to Dart Formatter and Code Readability.

```dart
TailBox().mb_2().p_2().border().rounded().as((styled) {
  return styled.Container(
    child: TailTypo().line_through().text_xl().Text("Hello World"),
  );
});
```

## Follows WindiCSS 💨

TailStyle model follows naming of [WindiCSS](https://windicss.org/) and links styles between sementic keywords and flutter views as possible.

```dart
// Generate Text from Typography Style Model
TailTypo().Text("Hello World");

// Generate Container from Box Style Model
TailBox().Container(width: 100, height: 100);
// Generate SizedBox from Box Style Model
TailBox().SizedBox(width: 100, height: 100);
```

## Extend Tail model on demand

Since TailStyle models based on builder are plain object. You can extend them by yourself.

```dart
import 'package:flutter/widgets.dart' show Padding;
import 'package:tailstyle/tailstyle.dart';

typedef StyledPadding = Padding;

extension TailBox2PaddingExt on TailBox {
  Padding() {
    return StyledPadding(
      padding: EdgeInsets.only(
        left: paddingL ?? 0,
        top: paddingT ?? 0,
        right: paddingR ?? 0,
        bottom: paddingB ?? 0,
      ),
    );
  }
}
```

## The case not suggested to use TailStyle

It is not suggested to use TailStyle to replace Constant widgets.

```dart
const Text(
  "Constant Widgets for performance optimize",
  style: TextStyle(
    decoration: TextDecoration.lineThrough,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  ),
);
```

## Acknowledgement

[Github WindiCSS](https://github.com/windicss/windicss)

