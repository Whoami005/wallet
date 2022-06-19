import 'package:flutter/material.dart';

class WalletAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;

  const WalletAppBar({Key? key, this.height = kToolbarHeight})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        splashRadius: 30,
        icon: const Icon(Icons.keyboard_backspace),
        onPressed: () {},
      ),
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          splashRadius: 30,
          icon: const Icon(Icons.ios_share),
          onPressed: () {},
        )
      ],
    );
  }
}
