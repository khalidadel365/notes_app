import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

import 'add_note_states.dart';

class AddNoteCubit extends Cubit<AddNotesStates>{
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;
  addNote(NoteModel note)async{
    isLoading = true;
    emit(AddNoteLoading());
    try{
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      isLoading = false;
      emit(AddNoteSuccess());
    }catch(e){
      isLoading = false;
      emit(AddNoteFailure(e.toString()));
    }
  }
}