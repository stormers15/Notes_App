import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(
            hint: "Title",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: "content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
