import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_app_bar.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextField(hint: "Title", maxLines: 1),
          SizedBox(height: 20),
          CustomTextField(hint: "Cotent", maxLines: 3),
          SizedBox(height: 50)
        ],
      ),
    );
  }
}
