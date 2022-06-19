import 'package:flutter/material.dart';
import 'package:wallet/theme/colors.dart';
import 'package:wallet/theme/text_style.dart';

class Payment extends StatelessWidget {
  final String? icon;
  final String? name;
  final String? time;
  final String? money;

  const Payment({
    Key? key,
    this.icon,
    this.name,
    this.money,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: WalletColors.white,
          width: double.infinity,
          height: 80,
          child: ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(icon ?? 'assets/none.png'),
            ),
            title: Row(
              children: [
                Text(
                  name ?? '',
                  style: WalletTextStyle.title16bold(WalletColors.black),
                ),
                const Spacer(),
                Text(
                  money ?? '',
                  style: WalletTextStyle.title16(WalletColors.black),
                ),
              ],
            ),
            subtitle: Text(time ?? ''),
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey,
        )
      ],
    );
  }
}
