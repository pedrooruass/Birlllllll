import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:training_app/domain/resources/app_colors.dart';
class NextWorkoutBoxWidget extends StatelessWidget {
  const NextWorkoutBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.27,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 10),
            blurRadius: 10,
            color: AppColors.secondGradientColor.withOpacity(0.2),
          )
        ],
        gradient: LinearGradient(
          colors: [
            AppColors.firstGradientColor.withOpacity(0.8),
            AppColors.secondGradientColor.withOpacity(0.9),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            MediaQuery.of(context).size.height * 0.015,
          ),
          bottomLeft: Radius.circular(
            MediaQuery.of(context).size.height * 0.015,
          ),
          bottomRight: Radius.circular(
            MediaQuery.of(context).size.height * 0.015,
          ),
          topRight: Radius.circular(
            MediaQuery.of(context).size.height * 0.1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            "Next workout",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05,
              color: AppColors.homePageContainerTextSmallColor,
            ),
            maxLines: 1,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.007,
          ),
          AutoSizeText(
            "Chest && Biceps workout",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.08,
              color: AppColors.homePageContainerTextSmallColor,
            ),
            maxLines: 2,
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.timer,
                size: MediaQuery.of(context).size.width * 0.05,
                color: AppColors.homePageContainerTextSmallColor,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              AutoSizeText(
                "60 min",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: AppColors.homePageContainerTextSmallColor,
                ),
                maxLines: 2,
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(MediaQuery.of(context).size.height * 0.085),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.firstGradientColor,
                      blurRadius: 10,
                      offset: const Offset(4, 8),
                    )
                  ],
                ),
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.height * 0.085,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
