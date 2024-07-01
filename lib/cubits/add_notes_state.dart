part of 'add_notes_state.dart';

abstract class NotesState {}

class AddNotesState extends NotesState {}

class AddNotesLoading extends NotesState {}

class AddNotesSuccess extends NotesState {}

class AddNotesFailure extends NotesState {
  final String errMessage;

  AddNotesFailure({required this.errMessage});
}
