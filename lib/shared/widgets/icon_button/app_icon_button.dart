import 'package:flutter/material.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';

class AppIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;
  final Color? backgroundColor;
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: backgroundColor ?? ColorConstants.gray200,
        padding: EdgeInsetsConstants.all10,
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
