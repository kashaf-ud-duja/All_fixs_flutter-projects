import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashAnimator extends StatelessWidget {
  const SplashAnimator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.discreteCircle(
        color: const Color.fromRGBO(230, 81, 0, 1),
        size: 50,
      ),
    );
  }
}
