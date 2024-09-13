import 'package:flutter/material.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';

class AppIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: ColorConstants.gray200,
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
