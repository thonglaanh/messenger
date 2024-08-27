import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/svg_icon.dart';

class FriendsIcon extends StatelessWidget {
  final double? width;
  final String assetName;
  final Color? color;

  const FriendsIcon({
    super.key,
    this.width,
    this.color,
    this.assetName = 'friends',
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
