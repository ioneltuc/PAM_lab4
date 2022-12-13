import 'package:fitness_app_flutter/resources/images_assets.dart';
import 'package:flutter/material.dart';

class GoalImageWidget extends StatelessWidget {
  const GoalImageWidget({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 298,
      height: 144,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(24.0),
          child: FittedBox(
            fit: BoxFit.fill,
            child: ImagesAssets.imageWorkout1,
          )
      ),
    );
  }
}

