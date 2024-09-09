import 'package:flutter/material.dart';

class PngIcon extends StatelessWidget {
  final String assetName;
  final double? width;
  final double? height;
  final BoxFit? fit;
  const PngIcon({
    super.key,
    required this.assetName,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      fit: fit,
      'assets/images/$assetName.png',
      width: width,
      height: height,
    );
  }
}
