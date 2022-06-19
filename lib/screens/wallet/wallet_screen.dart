import 'package:flutter/material.dart';
import 'package:wallet/screens/wallet/widgets/account.dart';
import 'package:wallet/screens/wallet/widgets/app_bar.dart';
import 'package:wallet/screens/wallet/widgets/payment.dart';
import 'package:wallet/screens/wallet/widgets/payments_date.dart';
import 'package:wallet/theme/colors.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WalletColors.black,
      appBar: const WalletAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              const Account(),
              Container(
                color: WalletColors.white,
                child: Column(
                  children: const [
                    PaymentsDate(date: "Yesterday"),
                    Payment(
                      icon: "assets/pret.png",
                      time: '12:23',
                      name: 'Pret A Manger',
                      money: '-\$55.31 USD',
                    ),
                    Payment(
                      icon: "assets/coming.png",
                      time: '12:23',
                      name: 'Daren Hodkings',
                      money: '+\$130.31 USD',
                    ),
                    Payment(
                      icon: "assets/mac.png",
                      time: '12:23',
                      name: 'McDonalds',
                      money: '-\$55.31 USD',
                    ),
                    Payment(
                      icon: "assets/starbucks.png",
                      time: '12:23',
                      name: 'Starbucks',
                      money: '-\$55.31 USD',
                    ),
                    Payment(
                      icon: "assets/gone.png",
                      time: '12:23',
                      name: 'Dave Winklevoss',
                      money: '-\$300.00 USD',
                    ),
                    PaymentsDate(date: "Sat, Dec 11"),
                    Payment(
                      icon: "assets/virgin.png",
                      time: '12:23',
                      name: 'Virgin Megastore',
                      money: '-\$500.31 USD',
                    ),
                    Payment(
                      icon: "assets/nike.png",
                      time: '12:23',
                      name: 'Nike',
                      money: '-\$500.31 USD',
                    ),
                    PaymentsDate(date: "Thurs, Dec 9"),
                    Payment(
                      icon: "assets/lv.png",
                      time: '12:23',
                      name: 'Louis Vuitton',
                      money: '-\$500.31 USD',
                    ),
                    Payment(
                      icon: "assets/fish.png",
                      time: '12:23',
                      name: 'Carrefour',
                      money: '-\$500.31 USD',
                    ),
                    Payment(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
