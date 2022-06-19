import 'package:flutter/material.dart';
import 'package:wallet/theme/colors.dart';
import 'package:wallet/theme/text_style.dart';

class PaymentsDate extends StatelessWidget {
  final String date;

  const PaymentsDate({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: WalletColors.greyTwo,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          date,
          style: WalletTextStyle.title16(WalletColors.black),
        ),
      ),
    );
  }
}
