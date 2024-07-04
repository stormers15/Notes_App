
import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onSaved: ,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Required';
        } else {
          return null;
        }
      },
      style: const TextStyle(fontSize: 20),
      cursorColor: kprimarycolor,
      maxLines: maxLines,
      
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
            color: Color.fromRGBO(1, 4, 5, 1), fontSize: 25),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white30));
  }
}
