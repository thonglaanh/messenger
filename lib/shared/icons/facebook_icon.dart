import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/png_icon.dart';

class FacebookIcon extends StatelessWidget {
  final String assetName;
  final BoxFit? fit;
  final double? width;

  const FacebookIcon({
    super.key,
    this.assetName = 'facebook',
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
