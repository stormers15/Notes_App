import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constans.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchallnotes() async {
    try {
      var notesbox = Hive.box<NoteModel>(knotesbox);
      List<NoteModel> notes = notesbox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
