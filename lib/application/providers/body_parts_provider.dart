import 'package:flutter/material.dart';
import 'package:training_app/domain/entities/body_part.dart';
import 'package:training_app/domain/entities/exercise.dart';

class BodyPartsProvider extends ChangeNotifier {
  final List<BodyPart> parts = [
    BodyPart(
      imageAsset: 'assets/parts_image/biceps_image.png',
      name: 'Biceps',
      exercises: [
        Exercise(
          imageAsset: 'assets/exercises/biceps1.jpg',
          reps: 10,
          sets: 3,
          name: 'Biceps Hammer',
          rest: 30,
        ),
        Exercise(
          imageAsset: 'assets/exercises/biceps2.jpg',
          reps: 10,
          sets: 3,
          name: 'Biceps Curl 45º',
          rest: 30,
        ),
        Exercise(
          imageAsset: 'assets/exercises/biceps3.jpg',
          reps: 10,
          sets: 3,
          name: 'Biceps Machine Single Arm Curl',
          rest: 30,
        ),
        Exercise(
          imageAsset: 'assets/exercises/biceps4.jpg',
          reps: 10,
          sets: 3,
          name: 'Biceps Machine Cable Hammer',
          rest: 30,
        ),
      ],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/legs_image.png',
      name: 'Legs',
      exercises: [
        Exercise(
          imageAsset: 'assets/exercises/legs1.jpg',
          reps: 12,
          sets: 4,
          name: 'Leg Extension',
          rest: 60,
        ),
      ],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/back_image.png',
      name: 'Back',
      exercises: [
        Exercise(
          imageAsset: 'assets/exercises/back1.jpg',
          reps: 12,
          sets: 4,
          name: 'Straight Arm Pulldown',
          rest: 30,
        ),
        Exercise(
          imageAsset: 'assets/exercises/back2.jpg',
          reps: 10,
          sets: 4,
          name: 'Barbell Row',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/back3.jpg',
          reps: 12,
          sets: 3,
          name: 'Lat Pulldown',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/back4.jpg',
          reps: 12,
          sets: 3,
          name: 'Single Arm Cable Row',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/back5.jpg',
          reps: 12,
          sets: 3,
          name: 'Cable Row',
          rest: 60,
        ),
      ],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/chest_image.png',
      name: 'Chest',
      exercises: [
        Exercise(
          imageAsset: 'assets/exercises/chest1.jpg',
          reps: 10,
          sets: 4,
          name: 'Flat Dumbbell Press',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/chest2.jpg',
          reps: 10,
          sets: 5,
          name: 'Incline Dumbbell Press',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/chest3.jpg',
          reps: 12,
          sets: 3,
          name: 'Machine Fly',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/chest4.jpg',
          reps: 12,
          sets: 3,
          name: 'High Cable Cross Over',
          rest: 60,
        ),
      ],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/shoulder_image.png',
      name: 'Shoulder',
      exercises: [
        Exercise(
          imageAsset: 'assets/exercises/shoulder1.jpg',
          reps: 12,
          sets: 4,
          name: 'Shoulder Press',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/shoulder2.jpg',
          reps: 12,
          sets: 4,
          name: 'Lateral Raise',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/shoulder3.jpg',
          reps: 12,
          sets: 4,
          name: 'Front Raise',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/shoulder4.jpg',
          reps: 12,
          sets: 3,
          name: 'Reverse Machine Fly',
          rest: 60,
        ),
        Exercise(
          imageAsset: 'assets/exercises/shoulder5.jpg',
          reps: 12,
          sets: 3,
          name: 'Upright Row',
          rest: 60,
        ),
      ],
    ),
    BodyPart(
      imageAsset: 'assets/parts_image/abs_image.png',
      name: 'Abs',
      exercises: [
        Exercise(
          imageAsset: 'assets/exercises/abs1.jpg',
          reps: 8,
          sets: 4,
          name: 'Leg Raise',
          rest: 60,
        ),
      ],
    ),
  ];
}
