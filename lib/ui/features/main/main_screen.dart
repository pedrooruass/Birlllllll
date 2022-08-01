import 'package:auto_size_text/auto_size_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app/domain/resources/app_colors.dart';
import 'package:training_app/ui/features/home__page/home_screen.dart';
import 'package:training_app/ui/features/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 1;
  final bottomNavigationKey = GlobalKey();
  final pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homePageBackgroundColor,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          Container(),
          const HomeScreen(),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
            pageController.jumpToPage(index);
          });
        },
        buttonBackgroundColor: AppColors.homePageBackgroundColor,
        backgroundColor: AppColors.secondGradientColor,
        key: bottomNavigationKey,
        index: currentPageIndex,
        animationCurve: Curves.easeInOut,
        items: const [
          Icon(Icons.add, size: 30),
          Padding(
            padding: EdgeInsets.only(right: 6),
            child: Icon(FontAwesomeIcons.dumbbell, size: 30),
          ),
          Icon(FontAwesomeIcons.userTie, size: 30),
        ],
      ),
    );
  }
}
