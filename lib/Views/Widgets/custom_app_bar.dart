import 'package:flutter/material.dart';
import 'customsearchicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "Notes",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
