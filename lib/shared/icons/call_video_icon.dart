import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/svg_icon.dart';

class CallVideoIcon extends StatelessWidget {
  final double? width;
  final String assetName;
  final Color? color;

  const CallVideoIcon({
    super.key,
    this.width,
    this.color,
    this.assetName = 'call_video',
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
