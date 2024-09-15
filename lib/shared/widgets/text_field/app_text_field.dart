import 'package:flutter/material.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/shared/widgets/texts/app_text_style.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Color? backgroundColor;

  const AppTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.prefixIcon,
    this.backgroundColor,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        contentPadding: EdgeInsetsConstants.all10,
        filled: true,
        fillColor: backgroundColor ?? ColorConstants.gray200,
        prefixIcon: prefixIcon,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 35,
          maxWidth: 35,
        ),
        hintText: hintText,
        hintStyle: AppTextStyle(
          fontSize: 20,
          color: ColorConstants.gray500,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
