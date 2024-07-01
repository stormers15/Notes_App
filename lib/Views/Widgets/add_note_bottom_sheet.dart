import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';
import 'custom_button.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustomTextField(
                hint: "Title",
                onSaved: (value) {
                  title = value;
                }),
            const SizedBox(height: 20),
            CustomTextField(
                hint: "content",
                maxLines: 2,
                onSaved: (value) {
                  subTitle = value;
                }),
            const SizedBox(height: 30),
            CustomButton(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
