import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/svg_icon.dart';

class SentIcon extends StatelessWidget {
  final double? width;
  final String assetName;
  final Color? color;

  const SentIcon({
    super.key,
    this.width,
    this.color,
    this.assetName = 'sent',
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
