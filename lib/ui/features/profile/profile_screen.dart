import 'package:flutter/material.dart';
import 'package:training_app/domain/resources/app_colors.dart';
import 'package:training_app/ui/features/profile/views/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondGradientColor,
      body: const ProfileBody(),
    );
  }
}
