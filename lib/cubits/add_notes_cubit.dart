import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/Models/note_model.dart';
part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addnote(note) async {
    emit(AddNotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(knotesbox);
      await notesbox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(errMessage: ""));
    }
  }
}

