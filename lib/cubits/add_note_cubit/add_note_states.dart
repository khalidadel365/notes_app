abstract class AddNotesStates{}

class AddNoteInitial extends AddNotesStates{}

class AddNoteLoading extends AddNotesStates{}
class AddNoteSuccess extends AddNotesStates{}
class AddNoteFailure extends AddNotesStates{
  final String errorMessage;
  AddNoteFailure(this.errorMessage);

}