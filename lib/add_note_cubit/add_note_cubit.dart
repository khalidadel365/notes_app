
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_states.dart';

class AddNoteCubit extends Cubit<AddNotesStates>{
  AddNoteCubit() : super(AddNoteInitial());

}