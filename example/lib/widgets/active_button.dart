import 'package:example/widgets/Button.dart';
import 'package:flutter/widgets.dart';
import 'package:tailstyle/tailstyle.dart';

class ActiveButton extends StatelessWidget {
  final Color activeColor;
  final Color inactiveColor;
  final bool active;
  final Widget Function(Color color) child;
  final void Function()? onTap;

  const ActiveButton({
    super.key,
    this.onTap,
    this.activeColor = TailColors.blue_500,
    this.inactiveColor = TailColors.dark_800,
    this.active = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Button(
      onTap: onTap,
      child: child(active ? activeColor : inactiveColor),
    );
  }
}
