import 'package:fleetioapp/enums/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LoadingAnimationWidget.staggeredDotsWave(
      color: mainColor,
      size: 100,
    );
  }
}
