import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';
import 'custom_button.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTextField(hint: "Title"),
            SizedBox(height: 16),
            CustomTextField(hint: "content", maxLines: 5),
            SizedBox(height: 35),
            CustomButton(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

