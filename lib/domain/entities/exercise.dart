class Exercise {
  Exercise({
    required this.imageAsset,
    required this.reps,
    required this.sets,
    required this.name,
    required this.rest,
  });
  String name = 'Exercise name', imageAsset = 'exercise asset image';
  int sets = 4, reps = 12, rest = 60;
  // TODO, check if it is warmup or not, check if it is a drop set or not
}
