import 'package:flutter/material.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'Widgets/notes_view_body.dart';
import 'Widgets/add_note_bottom_sheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NotesCubit(),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  context: context,
                  builder: (context) {
                    return const AddNoteBottomSheet();
                  });
            },
            child: const Icon(Icons.add),
          ),
          body: const NotesViewBody(),
        ));
  }
    
}


