import 'package:flutter/material.dart';
import 'package:messenger/shared/icons/default_avatar_icon.dart';

class AppAvatarCircle extends StatelessWidget {
  final String url;
  final double size;
  final VoidCallback? onTap;
  const AppAvatarCircle({
    super.key,
    required this.url,
    required this.size,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipOval(
          child: Image.network(
        url,
        width: size,
        height: size,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return DefaultAvatarIcon(
            width: size,
          );
        },
        errorBuilder: (context, error, stackTrace) =>
            DefaultAvatarIcon(width: size),
      )),
    );
  }
}
