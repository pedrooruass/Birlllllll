import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:training_app/domain/resources/app_colors.dart';
import 'package:training_app/ui/features/home__page/widgets/fda_pra_krl_widget.dart';
import 'package:training_app/ui/features/home__page/widgets/first_line_widget.dart';
import 'package:training_app/ui/features/home__page/widgets/home_body_parts.dart';
import 'package:training_app/ui/features/home__page/widgets/next_workout_box_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: ListView(
        children: [
          const FirstLineWIdget(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          const NextWorkoutBoxWidget(),
          const FdaPraKrlWidget(),
          Center(
            child: AutoSizeText(
              "Area of focus",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.065,
                fontWeight: FontWeight.w500,
                color: AppColors.homePageTitleColor,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          const HomeBodyParts(),
          Container(
            height: 400,
          )
        ],
      ),
    );
  }
}
