import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/svg_icon.dart';

class MoreOptionIcon extends StatelessWidget {
  final double? width;
  final String assetName;
  final Color? color;

  const MoreOptionIcon({
    super.key,
    this.width,
    this.color,
    this.assetName = 'more_option',
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
