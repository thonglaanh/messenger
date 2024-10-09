import 'package:flutter/material.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';

class AppIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.backgroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: backgroundColor ?? ColorConstants.transparent,
        padding: padding ?? EdgeInsetsConstants.all2,
        child: Center(
          child: GestureDetector(
            onTap: onTap,
            child: icon,
          ),
        ),
      ),
    );
  }
}
