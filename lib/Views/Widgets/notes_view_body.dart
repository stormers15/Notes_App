import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class notesviewbody extends StatelessWidget {
  const notesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: const Column(
        children: [CustomAppBar()],
      ),
    );
  }
}
