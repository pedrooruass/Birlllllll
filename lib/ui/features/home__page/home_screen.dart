import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:training_app/domain/resources/app_colors.dart';
import 'package:training_app/ui/features/home__page/views/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          appBar(context),
        ],
        body: const HomeBody(),
      ),
    );
  }

  SliverAppBar appBar(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      title: AutoSizeText(
        "Training",
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.075,
          fontWeight: FontWeight.w700,
          color: AppColors.homePageTitleColor,
        ),
      ),
      backgroundColor: AppColors
          .homePageBackgroundColor, // grey[50]: normal scaffold background color
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
      centerTitle: false,
      elevation: 0,
    );
  }
}
