import 'package:flutter/material.dart';
import 'package:training_app/app/core/theme/app_colors.dart';
import 'package:training_app/app/models/parts_models.dart';

class Biceps extends StatelessWidget {
  const Biceps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> exercises = [
      'Barra Fixa',
      'Halter Livre Martelo',
      'Barra W pegada Inversa',
    ];

    String setReps = '12/4';

    return Scaffold(
      appBar: AppBar(
        title: Text(Parts.biceps),
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
                    "$setReps reps",
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
