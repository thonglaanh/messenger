import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/svg_icon.dart';

class LeftArrowIcon extends StatelessWidget {
  final double? width;
  final String assetName;
  final Color? color;

  const LeftArrowIcon({
    super.key,
    this.width,
    this.color,
    this.assetName = 'left_arrow',
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
