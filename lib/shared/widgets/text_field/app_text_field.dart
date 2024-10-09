import 'package:flutter/material.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/shared/widgets/texts/app_text_style.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final FocusNode? focusNode;
  final Color? cursorColor;

  const AppTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.prefixIcon,
    this.backgroundColor,
    this.padding,
    this.focusNode,
    this.cursorColor,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = widget.focusNode ?? FocusNode();
    _addFocusListener();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: widget.controller,
      obscureText: widget.obscureText ?? false,
      cursorColor: widget.cursorColor,
      decoration: InputDecoration(
        contentPadding: widget.padding ?? EdgeInsetsConstants.horizontal12,
        filled: true,
        fillColor: widget.backgroundColor ?? ColorConstants.gray200,
        prefixIcon: widget.prefixIcon,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 40,
          maxWidth: 40,
        ),
        hintText: widget.hintText,
        hintStyle: AppTextStyle(
          fontSize: 16,
          color: ColorConstants.gray500,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(999),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  void _addFocusListener() {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        print('TextField in focus!');
      } else {
        print('TextField lost focus!');
      }
    });
  }
}
