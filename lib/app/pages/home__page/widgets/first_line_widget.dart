import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:training_app/app/core/theme/app_colors.dart';

class FirstLineWIdget extends StatelessWidget {
  const FirstLineWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(
          "Your program",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.043,
            fontWeight: FontWeight.w700,
            color: AppColors.homePageSubtitleColor,
          ),
        ),
        Row(
          children: [
            AutoSizeText(
              "Details",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.043,
                color: AppColors.homePageDetailColor,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Icon(
              Icons.arrow_forward,
              size: MediaQuery.of(context).size.width * 0.043,
              color: AppColors.homePageIconsColor,
            ),
          ],
        ),
      ],
    );
  }
}