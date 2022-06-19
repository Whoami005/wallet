import 'package:flutter/material.dart';
import 'package:wallet/theme/colors.dart';

class CustomDropdownButton extends StatelessWidget {
  final String value;
  final List<String> items;

  const CustomDropdownButton({
    Key? key,
    required this.items,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: WalletColors.grey)),
      child: DropdownButton(
        underline: const SizedBox(),
        isExpanded: true,
        icon: const Icon(Icons.expand_more),
        iconDisabledColor: WalletColors.whiteTwo,
        iconEnabledColor: WalletColors.whiteTwo,
        dropdownColor: WalletColors.blackTwo,
        style: const TextStyle(color: WalletColors.whiteTwo, fontSize: 16),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {},
        value: value,
      ),
    );
  }
}
