import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:training_app/domain/resources/app_colors.dart';

class PartsPage extends StatelessWidget {
  final List<String> exercises;
  final List<String> setReps;
  final String partName;
  final List<Widget> imagesAsset;
  const PartsPage({
    Key? key,
    required this.exercises,
    required this.partName,
    required this.setReps,
    required this.imagesAsset,
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
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
              items: imagesAsset,
            ),
          ),
          // Exercises
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ListView.builder(
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
