import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/png_icon.dart';

class GoogleIcon extends StatelessWidget {
  final String assetName;
  final BoxFit? fit;
  final double? width;

  const GoogleIcon({
    super.key,
    this.assetName = 'google',
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
