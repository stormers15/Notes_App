part of 'notes_cubit.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  NotesSuccess(List<NoteModel> adamasassda);
}

class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure(this.errMessage);
}
