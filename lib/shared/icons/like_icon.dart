import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/svg_icon.dart';

class LikeIcon extends StatelessWidget {
  final double? width;
  final String assetName;
  final Color? color;

  const LikeIcon({
    super.key,
    this.width,
    this.color,
    this.assetName = 'like_icon',
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
