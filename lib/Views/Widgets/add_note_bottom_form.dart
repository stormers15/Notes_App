import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
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
            BlocBuilder<AddNotesCubit, AddNotesState>(
                builder: (context, state) {
              return CustomButton(
                isloading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var noteModel = NoteModel(
                        title: 'Add',
                        subtitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.red.value);
                    BlocProvider.of<AddNotesCubit>(context).addnote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            }
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
