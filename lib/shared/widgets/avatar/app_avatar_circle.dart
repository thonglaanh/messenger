import 'package:flutter/material.dart';
import 'package:messenger/constants/colors.dart';
import 'package:messenger/constants/edge_insets.dart';
import 'package:messenger/shared/icons/default_avatar_icon.dart';

class AppAvatarCircle extends StatelessWidget {
  final String url;
  final double size;
  final VoidCallback? onTap;
  final bool? isOnline;
  const AppAvatarCircle({
    super.key,
    required this.url,
    required this.size,
    this.onTap,
    this.isOnline = false,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ClipOval(
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
            ),
          ),
          if (isOnline == true) ...[
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: ColorConstants.white,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  margin: EdgeInsetsConstants.all4,
                  width: size / 4,
                  height: size / 4,
                  decoration: const BoxDecoration(
                    color: ColorConstants.green300,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
