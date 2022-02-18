import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:training_app/app/core/theme/app_colors.dart';

class FdaPraKrlWidget extends StatelessWidget {
  const FdaPraKrlWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          // Background Container
          Container(
            height: MediaQuery.of(context).size.height * 0.135,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.035,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 25,
                  offset: const Offset(8, 10),
                  color: AppColors.secondGradientColor.withOpacity(0.3),
                ),
                BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(-1, -5),
                  color: AppColors.secondGradientColor.withOpacity(0.3),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("assets/card.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Shark Container
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.5,
              bottom: MediaQuery.of(context).size.height * 0.079,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage("assets/sharkBirrrrrl.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text Container
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.13,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.055,
              left: MediaQuery.of(context).size.width * 0.37,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  "You are doing great!",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: AppColors.homePageDetailColor,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: AutoSizeText.rich(
                    const TextSpan(
                      text: "Keep it up\n",
                      children: [
                        TextSpan(
                          text: "stick to your plan",
                        ),
                      ],
                    ),
                    style: TextStyle(
                      color: AppColors.homePagePlanColor,
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
