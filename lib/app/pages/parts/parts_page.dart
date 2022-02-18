import 'package:flutter/material.dart';
import 'package:training_app/app/core/theme/app_colors.dart';

class PartsPage extends StatelessWidget {
  final List<String> exercises;
  final List<String> setReps;
  final String partName;
  const PartsPage({
    Key? key,
    required this.exercises,
    required this.partName,
    required this.setReps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(partName),
        backgroundColor: AppColors.secondPageContainerGradient1stColor,
      ),
      body: Column(
        children: [
          // Video
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.25,
            width: double.infinity,
            color: Colors.red.withOpacity(0.3),
            child: const Text(
              "Video",
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
          ),
          // Exercises
          Expanded(
            child: ListView.builder(
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.fitness_center,
                    color: AppColors.firstGradientColor,
                  ),
                  title: Text(
                    exercises[index],
                    style: TextStyle(
                      color: AppColors.secondPageContainerGradient1stColor,
                    ),
                  ), // List of Exercises, fazer ficar dinamico.
                  trailing: Text(
                    "${setReps[index]} reps",
                    style: TextStyle(
                      color: AppColors.secondPageContainerGradient2ndColor,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
