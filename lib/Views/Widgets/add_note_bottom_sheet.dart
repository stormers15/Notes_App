import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/Widgets/add_note_bottom_form.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNotesCubit(),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
            listener: (context, state) {
          if (state is AddNotesFailure) {
            debugPrint("failied ${state.errMessage}");
          }
        }, builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        }));
  }
}
