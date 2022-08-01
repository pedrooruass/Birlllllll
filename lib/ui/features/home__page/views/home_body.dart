import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:training_app/domain/resources/app_colors.dart';
import 'package:training_app/ui/features/home__page/views/home_fda_pra_krl.dart';
import 'package:training_app/ui/features/home__page/views/home_first_line.dart';
import 'package:training_app/ui/features/home__page/views/home_body_parts.dart';
import 'package:training_app/ui/features/home__page/views/home_next_workout_box.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: ListView(
        children: [
          const HomeFirstLine(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          const HomeNextWorkoutBox(),
          const HomeFdaPraKrl(),
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
        ],
      ),
    );
  }
}
