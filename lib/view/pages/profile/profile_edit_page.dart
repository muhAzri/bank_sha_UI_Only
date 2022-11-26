import 'package:bank_sha/shared/function.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/widgets/forms.dart';
import 'package:flutter/material.dart';

import '../../widgets/buttons.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Profile",
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22
  
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormField(
                  title: "Username",
                ),
                const CustomFormField(
                  title: "Full Name",
                ),
                const CustomFormField(
                  title: "Email Address",
                ),
                const CustomFormField(
                  title: 'Password',
                  isObsecure: true,
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomFilledButton(
                  title: "Update Now",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile-edit-success', (route) => false);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
