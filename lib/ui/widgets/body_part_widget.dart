import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:training_app/domain/entities/body_part.dart';
import 'package:training_app/domain/resources/app_colors.dart';
import 'package:training_app/ui/features/exercises/exercises_screen.dart';

class BodyPartWidget extends StatelessWidget {
  const BodyPartWidget(
      {Key? key, required this.bodyPart, required this.exerciseImageAssets})
      : super(key: key);
  final BodyPart bodyPart;
  final List<Widget> exerciseImageAssets;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ExercisesScreen(
              bodyPart: bodyPart,
              exerciseImageAssets: exerciseImageAssets,
            ),
          ),
        );
      },
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: AppColors.secondGradientColor.withOpacity(0.1),
                blurRadius: 2,
                offset: const Offset(5, 5),
              ),
              BoxShadow(
                color: AppColors.secondGradientColor.withOpacity(0.1),
                blurRadius: 2,
                offset: const Offset(-5, -5),
              ),
            ],
            gradient: LinearGradient(
              colors: [
                AppColors.firstGradientColor.withOpacity(0.8),
                AppColors.secondGradientColor.withOpacity(0.9),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(bodyPart.imageAsset),
              Align(
                alignment: Alignment.bottomCenter,
                child: AutoSizeText(
                  bodyPart.name,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .05,
                    fontWeight: FontWeight.w500,
                    color: AppColors.homePageContainerTextSmallColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
