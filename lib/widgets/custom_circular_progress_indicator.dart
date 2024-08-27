import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  final double? size;
  final Color? color;

  const AppCircularProgressIndicator({Key? key, this.size, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext c) {
    return Center(
        child: LoadingAnimationWidget.beat(
            color: color ?? Color(0xff7562D1), size: size ?? 80));
  }
}
