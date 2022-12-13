import 'package:flutter/material.dart';

import '../../resources/images_assets.dart';

class ExerciseImageWidget extends StatelessWidget {
  const ExerciseImageWidget({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 272,
      width: 358,
      child: FittedBox(
        fit: BoxFit.fill,
        child: ImagesAssets.exerciseImagePlaceHolder,
      ),
    );
  }
}
