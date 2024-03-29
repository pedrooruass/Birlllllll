import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:training_app/domain/entities/body_part.dart';
import 'package:training_app/domain/resources/app_colors.dart';

class ExercisesScreen extends StatelessWidget {
  final BodyPart bodyPart;
  final List<Widget> exerciseImageAssets;
  const ExercisesScreen({
    Key? key,
    required this.bodyPart,
    required this.exerciseImageAssets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bodyPart.name),
        backgroundColor: AppColors.secondPageContainerGradient1stColor,
      ),
      body: Column(
        children: [
          // Video
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 1),
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
              items: exerciseImageAssets,
            ),
          ),
          // Exercises
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ListView.builder(
                  itemCount: bodyPart.exercises!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        Icons.fitness_center,
                        color: AppColors.firstGradientColor,
                      ),
                      title: Text(
                        bodyPart.exercises![index].name,
                        style: TextStyle(
                          color: AppColors.secondPageContainerGradient1stColor,
                        ),
                      ), // List of Exercises, fazer ficar dinamico.
                      trailing: Text(
                        "${bodyPart.exercises![index].reps} reps",
                        style: TextStyle(
                          color: AppColors.secondPageContainerGradient2ndColor,
                        ),
                      ),
                    );
                  },
                ),
                // Container(
                //   margin: EdgeInsets.only(
                //     bottom: MediaQuery.of(context).size.height * 0.045,
                //     right: MediaQuery.of(context).size.width * 0.05,
                //   ),
                //   padding:
                //       EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(
                //           MediaQuery.of(context).size.height * 0.085),
                //     ),
                //     boxShadow: [
                //       BoxShadow(
                //         color: AppColors.firstGradientColor,
                //         blurRadius: 10,
                //         offset: const Offset(4, 8),
                //       )
                //     ],
                //   ),
                //   child: Icon(
                //     Icons.add,
                //     color: AppColors.firstGradientColor,
                //     size: MediaQuery.of(context).size.height * 0.05,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.secondPageContainerGradient1stColor,
        splashColor: AppColors.secondPageContainerGradient2ndColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
