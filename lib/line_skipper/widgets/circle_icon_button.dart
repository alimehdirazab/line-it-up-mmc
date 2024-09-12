part of 'widgets.dart';

class CircleIconButton extends StatelessWidget {
  final IconData? icon;
  final Function()? onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? radius;
  const CircleIconButton(
      {super.key,
      required this.icon,
      this.onPressed,
      this.backgroundColor,
      this.radius,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 22,
      backgroundColor: backgroundColor ?? LineItUpColorTheme().white,
      child: IconButton(
          icon: Icon(
            icon,
            color: iconColor ?? LineItUpColorTheme().black,
          ),
          onPressed: onPressed),
    );
  }
}
