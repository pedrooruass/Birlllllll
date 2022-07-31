import 'package:flutter/material.dart';
import 'package:training_app/domain/resources/app_colors.dart';

class ProfileCircularPhoto extends StatelessWidget {
  const ProfileCircularPhoto({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(image),
            radius: 50,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.secondGradientColor,
                  spreadRadius: 4,
                )
              ],
            ),
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
