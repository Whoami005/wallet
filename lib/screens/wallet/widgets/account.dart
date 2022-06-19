import 'package:flutter/material.dart';
import 'package:wallet/screens/wallet/widgets/custom_dropdown_button.dart';
import 'package:wallet/theme/colors.dart';
import 'package:wallet/theme/text_style.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/flag.png"),
        const SizedBox(height: 10),
        Row(
          children: [
            const Expanded(
              flex: 3,
              child: SizedBox(),
            ),
            Text(
              "USD Account",
              style: WalletTextStyle.title18(WalletColors.grey),
            ),
            const Spacer(),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: WalletColors.white,
                side: const BorderSide(color: WalletColors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Hide"),
            ),
            const SizedBox(width: 15)
          ],
        ),
        const SizedBox(height: 10),
        Text(
          "\$  180,970.83",
          style: WalletTextStyle.title30(WalletColors.white),
        ),
        const SizedBox(height: 80),
        Container(
          width: double.infinity,
          color: WalletColors.blackTwo,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transaction History",
                  style: WalletTextStyle.title18(WalletColors.whiteTwo),
                ),
                const SizedBox(height: 15),
                const CustomDropdownButton(
                  value: 'USD Dollar',
                  items: ['USD Dollar', 'EUR Euro', 'RUB Ruble'],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Expanded(
                      flex: 5,
                      child: CustomDropdownButton(
                        value: 'All',
                        items: ['All', 'Only'],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(20, 50),
                          primary: WalletColors.white,
                          side: const BorderSide(color: WalletColors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Icon(
                          Icons.calendar_today_outlined,
                          color: WalletColors.whiteTwo,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
