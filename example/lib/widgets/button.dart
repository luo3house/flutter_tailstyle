import 'package:flutter/widgets.dart';

class Button extends StatefulWidget {
  final Widget child;
  final void Function()? onTap;

  const Button({
    super.key,
    this.child = const SizedBox(),
    this.onTap,
  });

  @override
  createState() => _Button();
}

class _Button extends State<Button> {
  var press = false;
  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.opaque,
      onPointerDown: (e) => setState(() => press = true),
      onPointerUp: (e) => setState(() => press = false),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: widget.onTap,
        child: Opacity(
          opacity: press ? .65 : 1,
          child: widget.child,
        ),
      ),
    );
  }
}
