import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/pages/data_provider/data_package_page.dart';
import 'package:bank_sha/view/pages/data_provider/data_provider_page.dart';
import 'package:bank_sha/view/pages/data_provider/data_success_page.dart';
import 'package:bank_sha/view/pages/home_page.dart';
import 'package:bank_sha/view/pages/onboarding_page.dart';
import 'package:bank_sha/view/pages/pin_page.dart';
import 'package:bank_sha/view/pages/profile/profile_edit_page.dart';
import 'package:bank_sha/view/pages/profile/profile_edit_pin_page.dart';
import 'package:bank_sha/view/pages/profile/profile_edit_success_page.dart';
import 'package:bank_sha/view/pages/profile/profile_page.dart';
import 'package:bank_sha/view/pages/sign_in_page.dart';
import 'package:bank_sha/view/pages/sign_up/sign_up_set_ktp_page.dart';
import 'package:bank_sha/view/pages/sign_up/sign_up_set_profile_page.dart';
import 'package:bank_sha/view/pages/sign_up/sign_up_success_page.dart';
import 'package:bank_sha/view/pages/splash_page.dart';
import 'package:bank_sha/view/pages/top_up/top_up_amount_page.dart';
import 'package:bank_sha/view/pages/top_up/top_up_page.dart';
import 'package:bank_sha/view/pages/top_up/top_up_success_page.dart';
import 'package:bank_sha/view/pages/transfer/transfer_amount_page.dart';
import 'package:bank_sha/view/pages/transfer/transfer_page.dart';
import 'package:bank_sha/view/pages/transfer/transfer_success_page.dart';
import 'package:flutter/material.dart';
import 'view/pages/sign_up/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-set-ktp': (context) => const SignUpSetKtpPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/profile-edit': (context) => const ProfileEditPage(),
        '/pin': (context) => const PinPage(),
        '/profile-edit-pin': (context) => const ProfileEditPinPage(),
        '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
        '/topup': (context) => const TopUpPage(),
        '/topup-amount': (context) => const TopUpAmountPage(),
        '/topup-success': (context) => const TopUpSuccessPage(),
        '/transfer': (context) => const TransferPage(),
        '/transfer-amount': (context) => const TransferAmountPage(),
        '/transfer-success': (context) => const TransferSuccessPage(),
        '/data-provider': (context) => const DataProviderPage(),
        '/data-package': (context) => const DataPackagePage(),
        '/data-success': (context) => const DataSuccessPage(),
      },
    );
  }

  ThemeData themeData() {
    return ThemeData(
      scaffoldBackgroundColor: lightBackgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        titleTextStyle: blackTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}
