import 'package:notes_app/models/note_model.dart';

abstract class GetNotesStates{}

class GetNotesInitial extends GetNotesStates{}

class GetNotesLoading extends GetNotesStates{}
class GetNotesSuccess extends GetNotesStates{
  final List<NoteModel> notes ;
  GetNotesSuccess(this.notes);
}
class GetNotesFailure extends GetNotesStates{
  final String errorMessage;
  GetNotesFailure(this.errorMessage);
}