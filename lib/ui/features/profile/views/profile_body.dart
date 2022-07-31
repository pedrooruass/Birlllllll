import 'package:flutter/material.dart';
import 'package:training_app/ui/features/profile/views/profile_circular_photo.dart';
import 'package:training_app/ui/features/profile/views/profile_user_name.dart';
import 'package:training_app/ui/features/profile/views/profile_white_background.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final userEmail = FirebaseAuth.instance.currentUser!.email;
    return Column(
      children: const [
        ProfileCircularPhoto(image: 'assets/sharkBirrrrrl.png'),
        ProfileUserName(profileName: 'Pedro Ruas'), // userEmail.toString()
        Spacer(),
        ProfileWhiteBackground(),
      ],
    );
  }
}
