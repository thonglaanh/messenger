import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/base/svg_icon.dart';

class NoteIcon extends StatelessWidget {
  final double? width;
  final String assetName;
  final Color? color;

  const NoteIcon({
    super.key,
    this.width,
    this.color,
    this.assetName = 'note',
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
