import 'package:bank_sha/shared/function.dart';
import 'package:bank_sha/view/widgets/data_package_item.dart';
import 'package:flutter/material.dart';

import '../../../shared/theme.dart';
import '../../widgets/buttons.dart';
import '../../widgets/forms.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Phone Number",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: "+628",
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Select Package",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: const [
              DataPackageItem(
                title: 10,
                price: 218000,
              ),
              DataPackageItem(
                title: 25,
                price: 420000,
              ),
              DataPackageItem(
                title: 40,
                price: 2500000,
                isSelected: true,
              ),
              DataPackageItem(
                title: 90,
                price: 5000000,
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
            title: "Continue",
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/data-success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
