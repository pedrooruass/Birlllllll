import 'package:flutter/material.dart';
import 'package:training_app/domain/entities/body_part.dart';

class BodyPartsProvider extends ChangeNotifier {
  final List<BodyPart> parts = [
    BodyPart(
      imageAsset: 'assets/parts_image/biceps_image.png',
      name: 'Biceps',
      exercises: [],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/legs_image.png',
      name: 'Legs',
      exercises: [],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/back_image.png',
      name: 'Back',
      exercises: [],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/chest_image.png',
      name: 'Chest',
      exercises: [],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/shoulder_image.png',
      name: 'Shoulder',
      exercises: [],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/abs_image.png',
      name: 'Abs',
      exercises: [],
    ),
  ];
}
