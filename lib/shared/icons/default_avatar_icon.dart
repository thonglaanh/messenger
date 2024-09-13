import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/png_icon.dart';

class DefaultAvatarIcon extends StatelessWidget {
  final String assetName;
  final BoxFit? fit;
  final double? width;

  const DefaultAvatarIcon({
    super.key,
    this.assetName = 'default_avatar',
    this.fit = BoxFit.cover,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return PngIcon(
      assetName: assetName,
      width: width,
      fit: fit,
    );
  }
}
