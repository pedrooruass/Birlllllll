import 'package:training_app/domain/entities/exercise.dart';

class BodyPart {
  final String name, imageAsset;
  final List<Exercise>? exercises;
  BodyPart({
    required this.imageAsset,
    required this.name,
     this.exercises,
  });
}
