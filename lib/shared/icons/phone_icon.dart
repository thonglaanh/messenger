import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/svg_icon.dart';

class PhoneIcon extends StatelessWidget {
  final double? width;
  final String assetName;
  final Color? color;

  const PhoneIcon({
    super.key,
    this.width,
    this.color,
    this.assetName = 'phone',
  });

  @override
  Widget build(BuildContext context) {
    return SvgIcon(
      assetName: assetName,
      width: width,
      color: color,
    );
  }
}
