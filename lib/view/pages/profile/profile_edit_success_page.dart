import 'package:bank_sha/shared/function.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update!',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Your data is safe with\nour system',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: 190,
              title: "My Profile",
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
