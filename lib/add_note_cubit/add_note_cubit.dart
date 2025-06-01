
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/add_note_cubit/add_note_states.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNotesStates>{
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)async{
    emit(AddNoteLoading());
    try{
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    }catch(e){
      emit(AddNoteFailure(e.toString()));
    }
  }
}