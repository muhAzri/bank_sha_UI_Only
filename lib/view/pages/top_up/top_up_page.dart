import 'package:bank_sha/shared/function.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/widgets/bank_item.dart';
import 'package:bank_sha/view/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Up'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildWallet(context),
          buildSelectBank(context),
        ],
      ),
    );
  }

  Widget buildWallet(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          'Wallet',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Image.asset(
              "assets/img_wallet.png",
              width: 80,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '8008 2208 1996',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Angga Risky',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget buildSelectBank(context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BankItem(
            imgUrl: 'assets/img_bank_bca.png',
            title: "BANK BCA",
            isSelected: true,
          ),
          const BankItem(
            imgUrl: 'assets/img_bank_bni.png',
            title: "BANK BNI",
          ),
          const BankItem(
            imgUrl: 'assets/img_bank_mandiri.png',
            title: "BANK Mandiri",
          ),
          const BankItem(
            imgUrl: 'assets/img_bank_ocbc.png',
            title: "BANK OCBC",
          ),
          const SizedBox(
            height: 30,
          ),
          CustomFilledButton(
            title: "Continue",
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
          const SizedBox(
            height: 57,
          )
        ],
      ),
    );
  }
}
