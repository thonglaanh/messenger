import 'package:flutter/cupertino.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppLoading extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final double? size;
  const AppLoading({
    super.key,
    required this.isLoading,
    required this.child,
    this.size,
  });
  @override
  Widget build(BuildContext context) {
    if (!isLoading) return child;
    return Stack(
      children: [
        child,
        const Positioned.fill(
            child: ModalBarrier(
          dismissible: false,
          color: Color.fromRGBO(0, 0, 0, 0.3),
        )),
        Center(
          child: LoadingAnimationWidget.discreteCircle(
            color: const Color(0xFF0099FF),
            size: size ?? 40,
            secondRingColor: const Color(0xFFFF5280),
            thirdRingColor: const Color(0xFFFF7061),
          ),
        ),
      ],
    );
  }
}
