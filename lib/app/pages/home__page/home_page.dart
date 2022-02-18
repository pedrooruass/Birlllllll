import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:training_app/app/core/theme/app_colors.dart';
import 'package:training_app/app/pages/home__page/widgets/fda_pra_krl_widget.dart';
import 'package:training_app/app/pages/home__page/widgets/first_line_widget.dart';
import 'package:training_app/app/pages/home__page/widgets/next_workout_box_widget.dart';
import 'package:training_app/app/pages/home__page/widgets/parts_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.homePageBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: AutoSizeText(
          "Training",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.075,
            fontWeight: FontWeight.w700,
            color: AppColors.homePageTitleColor,
          ),
        ),
        actions: [
          Icon(
            Icons.arrow_back_ios,
            size: MediaQuery.of(context).size.width * 0.05,
            color: AppColors.homePageIconsColor,
          ),
          Icon(
            Icons.calendar_today_outlined,
            size: MediaQuery.of(context).size.width * 0.05,
            color: AppColors.homePageIconsColor,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: MediaQuery.of(context).size.width * 0.05,
            color: AppColors.homePageIconsColor,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FirstLineWIdget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const NextWorkoutBoxWidget(),
            const FdaPraKrlWidget(),
            AutoSizeText(
              "Area of focus",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.065,
                fontWeight: FontWeight.w500,
                color: AppColors.homePageTitleColor,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            PartsWidget(),
          ],
        ),
      ),
    );
  }
}
