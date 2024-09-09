import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/svg_icon.dart';

class MetaIcon extends StatelessWidget {
  final double? width;
  final String assetName;
  final Color? color;

  const MetaIcon({
    super.key,
    this.width,
    this.color,
    this.assetName = 'meta',
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
