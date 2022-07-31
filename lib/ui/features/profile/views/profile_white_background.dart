import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app/ui/features/profile/views/profile_tile_sub_screens.dart';

class ProfileWhiteBackground extends StatelessWidget {
  const ProfileWhiteBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(33),
          topRight: Radius.circular(33),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white54,
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: const SubPagesList(),
    );
  }
}

class SubPagesList extends StatelessWidget {
  const SubPagesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProfileTileSubScreens(
          title: 'Your Plants',
          icon: FontAwesomeIcons.tree,
        ),
        ProfileTileSubScreens(
          title: 'Privacy',
          icon: FontAwesomeIcons.userShield,
        ),
        ProfileTileSubScreens(
          title: 'Notifications',
          icon: FontAwesomeIcons.solidBell,
        ),
        ProfileTileSubScreens(
            title: 'Community Guidelines', icon: FontAwesomeIcons.peopleGroup),
        ProfileTileSubScreens(
            title: 'Support', icon: FontAwesomeIcons.circleQuestion),
        ProfileTileSubScreens(
          title: 'Sign out',
          icon: FontAwesomeIcons.arrowRightFromBracket,
          isSignOut: true,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
