import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/png_icon.dart';

class MessengerIcon extends StatelessWidget {
  final String assetName;
  final double? width;

  const MessengerIcon({
    super.key,
    this.assetName = 'messenger',
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return PngIcon(
      assetName: assetName,
      width: width,
    );
  }
}
