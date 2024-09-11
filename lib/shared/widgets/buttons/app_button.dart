import 'package:flutter/material.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/shared/widgets/texts/app_text_style.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color? foregroundColor;
  final double height;
  final Widget child;
  final bool fullWidth;
  final EdgeInsets? padding;
  final bool isDisabled;
  final BoxShadow? boxShadow;
  final BorderRadiusGeometry? borderRadius;
  final BorderSide? border;
  final bool isLoading;
  final TextStyle? textStyle;
  final Widget? prefix;

  const AppButton({
    super.key,
    this.height = 44,
    this.onPressed,
    this.backgroundColor = ColorConstants.blue400,
    this.foregroundColor = ColorConstants.white,
    this.fullWidth = true,
    this.isDisabled = false,
    required this.child,
    this.padding,
    this.border,
    this.boxShadow,
    this.borderRadius,
    this.isLoading = false,
    this.textStyle,
    this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return buildElevatedButton();
  }

  ElevatedButton buildElevatedButton() {
    final child = isLoading ? loading() : this.child;
    return ElevatedButton(
      onPressed: isLoading || isDisabled ? null : onPressed,
      style: ButtonStyle(
        splashFactory: InkRipple.splashFactory,
        minimumSize: fullWidth
            ? WidgetStateProperty.all(
                Size.fromHeight(height),
              )
            : null,
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (isLoading) {
            return backgroundColor;
          }
          if (states.contains(WidgetState.disabled)) {
            return ColorConstants.primary.withOpacity(0.3);
          }
          return backgroundColor;
        }),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return ColorConstants.white;
          }
          return foregroundColor;
        }),
        overlayColor: WidgetStateProperty.all(
          ColorConstants.gray100.withOpacity(0.1),
        ),
        elevation: WidgetStateProperty.all(0),
        padding: WidgetStateProperty.all(
          padding ?? EdgeInsetsConstants.horizontal12,
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(20),
            side: border ??
                const BorderSide(
                  color: ColorConstants.blue300,
                  width: 1,
                ),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            return textStyle ?? AppTextStyle();
          },
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              child,
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: prefix,
          ),
        ],
      ),
    );
  }

  Widget loading() {
    return const SizedBox(
      height: 22,
      width: 22,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(ColorConstants.white),
      ),
    );
  }
}
